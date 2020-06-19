package controller.category;

import controller.base.AdminBaseController;
import dao.CategoryDAO;
import dao.base.condition.Column;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/admin/category/delete")
public class DeleteController extends AdminBaseController {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.authentication(req, resp);
        Map<String, String> param = this.param(req);
        int id = Integer.parseInt(param.get("id"));
        int result = CategoryDAO.getInstance().where(Column.check("id", "=", id)).delete();
        if (result > 0) {
            this.message(req, resp, "删除成功");
        }else {
            this.message(req, resp, "删除失败");
        }
        this.redirect(req, resp, "admin/category/index");
    }
}
