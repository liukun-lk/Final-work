## 期末作业提交展示平台


#### 实现功能：

1. 实现用户作业的上传，并直接打开自己上传的网站。要求用户必须把所有文件放在一个以`学号`命名的文件夹下，首页必须以 `index.html` 命名
2. 支持点赞功能，首页的 slide 是根据赞的数目前5名显示。首页下方的是根据赞的数目进行排序。
3. 这里使用的是管理员先将信息导入到数据库之后，让用户自行修改密码。

---

#### todo-list 

1. masonry.js 可能影响网页浏览的体验，需要进行优化或修改。
2. 修改邮件地址，由于域名更改。
3. 添加网页页面加载动画。
4. 添加上传文件进度条显示。
5. 重构网页样式，将风格统一。
6. 添加 edit 功能。
7. 把内容删除之后要不要删除文件。或者说原始文件需不需要备份。
8. 对图片自动进行压缩处理。
9. 对图片进行懒加载。
10. 用户注册时增加邮箱验证这一环节。
11. 增加允许的压缩包的格式。
12. 优化对数据库查询的语句。
13. 或者是允许直接导入 Excel，将所有的用户之间添加到数据库中。