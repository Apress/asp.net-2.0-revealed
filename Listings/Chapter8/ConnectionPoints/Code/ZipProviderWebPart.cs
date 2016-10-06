using System;
using System.ComponentModel;
using System.Web.Personalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PGK.Web.UI.WebControls.WebParts {

    public class ZipProviderWebPart: WebPart, IZipProvider, INamingContainer {
    
        private string zip = string.Empty;
        private ConnectionPointCollection connectionPoints;
        private EventHandler zipHasChanged;
        private Button button;
        private TextBox textBox;

        public ZipProviderWebPart() { }

        string IZipProvider.Zip {
            get { return this.zip; }
        }

        event EventHandler IZipProvider.ZipHasChanged {
            add { this.zipHasChanged += value; }
            remove { this.zipHasChanged -= value; }
        }

        protected override void CreateChildControls() {
            this.textBox = new TextBox();
            this.textBox.AutoPostBack = true;
            this.textBox.Text = "90211";
            this.textBox.TextChanged += new EventHandler(this.OnZipChanged);
            this.Controls.Add(this.textBox);
            this.button = new Button();
            this.button.Text = "Submit";
            this.Controls.Add(this.button);
        }

        protected void OnZipChanged(object sender, EventArgs e) {
            this.zip = this.textBox.Text;
            if (this.zipHasChanged != null) {
                this.zipHasChanged(this, e);
            }
        }

        public override ConnectionPointCollection ConnectionPoints {
            get {
                if (this.connectionPoints == null) {
                    this.connectionPoints = new ConnectionPointCollection(this, base.ConnectionPoints);

                    ConnectionProviderCallback provCallBack = new ConnectionProviderCallback(GetIZipProvider);
                    
                    ConnectionPoint connPoint = new ConnectionPoint(typeof(IZipProvider), provCallBack);
                    connPoint.Name = "ZipProviderPoint";
                    this.connectionPoints.Add(connPoint);
                }
                return this.connectionPoints;
            }
        }

        private object GetIZipProvider() {
            return (IZipProvider)this;
        }
    }
}