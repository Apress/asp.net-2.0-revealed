using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

[assembly:TagPrefix("PGK.Web.UI.WebControls.ImageCounter", "PGK")]

namespace PGK.Web.UI.WebControls.ImageCounter {

    public class ImageCounter: CompositeControl {

        protected DynamicImage dynamicImage;

        protected override void CreateChildControls() {
            this.dynamicImage = new DynamicImage();
            this.Controls.Add(this.dynamicImage);
        }

        protected override void OnPreRender(EventArgs e) {
            this.dynamicImage.Image = this.GenerateImage();
            base.OnPreRender(e);
        }

        protected virtual System.Drawing.Image GenerateImage() {
            int count = this.GetCounterValue();
            
            Bitmap bitmap = new Bitmap(100, 40);
            Graphics g = Graphics.FromImage(bitmap);
            g.Clear(Color.White);

            Font font = new Font("Tahoma", 20);
            g.DrawString(count.ToString(), font, new SolidBrush(Color.Black), new Point(0, 0));
            
            g.Flush();

            return bitmap;
        }

        protected virtual int GetCounterValue() {
            if (this.DesignMode == false) {
                SiteCounters counters = this.Page.SiteCounters;
                counters.FlushAll();
                return counters.GetTotalCount(DateTime.MinValue, DateTime.MaxValue, "PageCounters", null, null, null, null, this.Context.Request.Url.PathAndQuery);
            } else {
                return 123;
            }
        }
    }
}