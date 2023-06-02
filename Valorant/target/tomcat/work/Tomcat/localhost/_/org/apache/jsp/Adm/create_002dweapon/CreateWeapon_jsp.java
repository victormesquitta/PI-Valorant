/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.37
 * Generated at: 2023-06-02 20:55:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.adm.create_002dweapon;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreateWeapon_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Armas</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"CreateWeapon.css\">\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/valorant-transparent.png\" type=\"image/x-icon\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   <header>\r\n");
      out.write("        <div id=\"header-up\">\r\n");
      out.write("            <a href=\"../home/home.jsp\" class=\"logo-ancora\" id=\"\"><img class=\"\" id=\"logo-navbar\" src=\"images/logo.png\" alt=\"logo\"></a>\r\n");
      out.write("            <a href=\"../home/home.jsp\" class=\"logo-ancora\" id=\"\"><h2 id=\"titulo-header\">Visão Administrativa</h2></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <nav class=\"nav_links\">\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href=\"/agents\"><img id=\"agent-icon\" class=\"icon\" src=\"images/agent-icon.png\">Agentes</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href= \"/armas\" ><img id=\"weapon-icon\" class=\"icon\" src=\"images/weapon-icon.png\">Armas</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href=\"/maps\"><img id=\"map-icon\" class=\"icon\" src=\"images/map-icon.png\">Mapas</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href=\"/skins\"><img id=\"skin-icon\" class=\"icon\" src=\"images/skin-icon.jpg\">Skins</a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <div id=\"header-down\">\r\n");
      out.write("            <div id=\"div-ancora-button\">\r\n");
      out.write("                <a href=\"../../\" id=\"ancora-button\"><button id=\"button_logout\">LOG OUT</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <div id=\"div-right\">\r\n");
      out.write("        <div id=\"div-form\">\r\n");
      out.write("            <h2 id=\"form-title\">Armas</h2>\r\n");
      out.write("            <form id=\"form-create-weapon\" action=\"/create-weapon\" method=\"post\">\r\n");
      out.write("                <div id=\"colunas\">\r\n");
      out.write("                    <div id=\"coluna-1\">\r\n");
      out.write("                        <label>Name</label>\r\n");
      out.write("                        <input type=\"text\" name=\"weapon-name\" id=\"weapon-name\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\"  required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>Type</label>\r\n");
      out.write("                            <input type=\"text\" name=\"weapon-type\" id=\"weapon-type\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.type}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>Creds</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-creds\" id=\"weapon-creds\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.creds}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>DamageShortHead</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-damageShortHead\" id=\"weapon-damageShortHead\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageShortHead}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>DamageMediumHead</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-damageMediumHead\" id=\"weapon-damageMediumHead\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageMediumHead}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div id=\"coluna-2\">\r\n");
      out.write("                        <label>DamageLongHead</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-damageLongHead\" id=\"weapon-damageLongHead\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageLongHead}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>DamageShortBody</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-damageShortBody\" id=\"weapon-damageShortBody\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageShortBody}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>DamageMediumBody</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-damageMediumBody\" id=\"weapon-damageMediumBody\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageMediumBody}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>DamageLongBody</label>\r\n");
      out.write("                        <input type=\"number\" name=\"weapon-damageLongBody\" id=\"weapon-damageLongBody\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageLongBody}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>DamageShortLeg</label>\r\n");
      out.write("                        <input type=\"number\" name=\"weapon-damageShortLeg\" id=\"weapon-damageShortLeg\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageShortLeg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div id=\"coluna-3\">\r\n");
      out.write("                        <label>DamageMediumLeg</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-damageMediumLeg\" id=\"weapon-damageMediumLeg\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageMediumLeg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>DamageLongLeg</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-damageLongLeg\" id=\"weapon-damageLongLeg\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.damageLongLeg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("\r\n");
      out.write("                        <label>Magazine</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-magazine\" id=\"weapon-magazine\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.magazine}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>Reserve</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-reserve\" id=\"weapon-reserve\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.reserve}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>Fire Rate per Seconds</label>\r\n");
      out.write("                            <input type=\"number\" name=\"weapon-fireRateSecs\" id=\"weapon-fireRateSecs\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.fireRateSecs}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>Wall Penetration</label>\r\n");
      out.write("                            <input type=\"text\" name=\"weapon-wallPenetration\" id=\"weapon-wallPenetration\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.wallPenetration}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <label>Path</label>\r\n");
      out.write("                            <input type=\"text\" name=\"weapon-path\" id=\"weapon-path\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\"  required>\r\n");
      out.write("                            <input type=\"hidden\" name=\"weapon-id\" id=\"map-weapon\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <button type=\"submit\" id=\"button-register\" class=\"button\" >REGISTRAR</button>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
