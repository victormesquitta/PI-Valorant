/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.37
<<<<<<< Updated upstream
<<<<<<< Updated upstream
 * Generated at: 2023-05-25 23:40:48 UTC
=======
 * Generated at: 2023-05-25 22:30:00 UTC
>>>>>>> Stashed changes
=======
 * Generated at: 2023-05-25 23:49:59 UTC
>>>>>>> Stashed changes
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.adm.dashboard_002dweapons;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Weapons_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Weapons</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"adm/dashboard-weapons/Weapons.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <header>\r\n");
      out.write("        <div id=\"header-up\">\r\n");
      out.write("            <a href=\"\" class=\"logo-ancora\" id=\"\"><img class=\"\" id=\"logo-navbar\" src=\"adm/dashboard-weapons/images/logo.png\" alt=\"logo\"></a>\r\n");
      out.write("            <a href=\"\" class=\"logo-ancora\" id=\"\"><h2 id=\"titulo-header\">Visão Administrativa</h2></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <nav class=\"nav_links\">\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href=\"../create-agent/CreateAgent.jsp\"><img id=\"agent-icon\" class=\"icon\" src=\"adm/dashboard-weapons/images/agent-icon.png\">Agentes</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href=\"/find-all-weapons\"><img id=\"weapon-icon\" class=\"icon\" src=\"adm/dashboard-weapons/images/weapon-icon.png\">Armas</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href=\"../create-map/CreateMap.jsp\"><img id=\"map-icon\" class=\"icon\" src=\"adm/dashboard-weapons/images/map-icon.png\">Mapas</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"nav_link\">\r\n");
      out.write("                <a href=\"../create-skin/CreateSkin.jsp\"><img id=\"skin-icon\" class=\"icon\" src=\"adm/dashboard-weapons/images/skin-icon.jpg\">Skins</a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <div id=\"header-down\">\r\n");
      out.write("            <div id=\"div-ancora-button\">\r\n");
      out.write("                <a href=\"../../\" id=\"ancora-button\"><button id=\"button_logout\" class=\"button\">LOG OUT</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <div id=\"dashboard\">\r\n");
      out.write("        <h1>Weapons</h1>\r\n");
      out.write("        <table id=\"table\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <th class=\"th\">ID</th>\r\n");
      out.write("                <th class=\"th\">Name</th>\r\n");
      out.write("                <th class=\"th\">Type</th>\r\n");
      out.write("                <th class=\"th\">Creds</th>\r\n");
      out.write("                <th class=\"th\">Damage</th>\r\n");
      out.write("                <th class=\"th\">Magazine</th>\r\n");
      out.write("                <th class=\"th\">Reserve</th>\r\n");
      out.write("                <th class=\"th\">FireRateSecs</th>\r\n");
      out.write("                <th class=\"th\">WallPenetration</th>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("        <div id=\"div-ancora-novo\">\r\n");
      out.write("            <a href=\"/create-weapon\" class=\"novo-ancora\" id=\"\"><button id=\"button_novo\" class=\"button\">Novo</button></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fforEach_005f0.setParent(null);
    // /adm/dashboard-weapons/Weapons.jsp(50,12) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVar("weapon");
    // /adm/dashboard-weapons/Weapons.jsp(50,12) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/adm/dashboard-weapons/Weapons.jsp(50,12) '${weapons}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${weapons}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
      if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                <tr>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.type}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.creds}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.damage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.magazine}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.reserve}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.fireRateSecs}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.wallPenetration}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("                    <td class=\"td\">\r\n");
          out.write("                        <form action=\"/delete-weapon\" method=\"post\" id=\"form-delete\">\r\n");
          out.write("                            <input type=\"hidden\" id=\"weapon-id\" name=\"weapon-id\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${weapon.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("\" class=\"button\">\r\n");
          out.write("                            <button type=\"submit\" class=\"button\" id=\"button-delete\">Delete</button>\r\n");
          out.write("                        </form>\r\n");
          out.write("                    </td>\r\n");
          out.write("                </tr>\r\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (java.lang.Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_005fforEach_005f0.doFinally();
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
    }
    return false;
  }
}
