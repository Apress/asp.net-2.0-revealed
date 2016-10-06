using System;
using System.ComponentModel;
using System.Web.Personalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PGK.Web.UI.WebControls.WebParts {

    public sealed class WeatherWebPart: WebPart {

        private const string HtmlFormat = @"
            <div id=""weatherView""></div>
            <script id=""weatherScript"" language=""javascript""></script>
            <script language=""javascript"">
            function CreateWeather(sAcid) {{
                var oData = window['weatherScript'];
                if (sAcid != '') {{
            	    oData.onreadystatechange = ShowWeather;
            	    oData.src = 'http://www.msnbc.com/m/chnk/d/weather_d_src.asp?acid=' + sAcid;
                }}
            }}
            
            function ShowWeather() {{

                if (typeof(makeWeatherObj) != 'undefined') {{
                                var oWea = new makeWeatherObj();
                var sTmp = '<b>Current Weather Conditions</b><hr size=1>' +
                            '<table cellpadding=2 cellspacing=0 border=0><tr><td valign=""middle"">' +
                            '<img src=""http://www.msnbc.com/m/wea/i/36/' + oWea.swCIcon + '.gif"" align=absmiddle></td>' +
                            '<td>'+ oWea.swCity + ', ' + oWea.swSubDiv + '<br>' +
                            + oWea.swTemp + '&#176;F</td></tr></table>' + 
                            '<a href=""http://www.weather.com"">More weather information</a>';
                document.all['weatherView'].innerHTML = sTmp;
                }}
            }}
            
            CreateWeather('{0}');
            </script>
            ";

        private string _zipCode = String.Empty;

        [Personalizable]
        [WebBrowsable]
        [System.ComponentModel.DisplayName("Your ZIP Code")]
        public string ZipCode {
            get {
                return _zipCode;
            }
            set {
                _zipCode = value;
            }
        }

        protected override void RenderContents(HtmlTextWriter writer) {
            string text;

            if ((_zipCode == null) || (_zipCode.Length == 0)) {
                writer.Write("Please enter a zip code by personalizing this WebPart!");
            } else {
                writer.Write(String.Format(HtmlFormat, _zipCode));
            }
        }
   }
}