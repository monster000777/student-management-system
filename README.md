# 学生管理系统 (Student Management System)

一个基于前后端分离架构的学生管理系统，前端使用 Vue 3 + Vite + Pinia + Element Plus，后端使用 Spring Boot 3 + MyBatis-Flex + MySQL。

## 技术栈

### 后端
- Spring Boot 3.5.7
- MyBatis-Flex 1.9.0
- MySQL 8.0+
- Lombok
- Java 17

### 前端
- Vue 3.4+
- Vite 5.1+
- Pinia 2.1+
- Element Plus 2.5+
- Axios 1.6+
- Vue Router 4.3+

## 项目结构

```
student-management-system/
├── src/                          # 后端代码
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/studentmanagementsystem/
│   │   │       ├── common/       # 通用类（Result响应类）
│   │   │       ├── config/       # 配置类（CORS配置）
│   │   │       ├── controller/   # 控制器层
│   │   │       ├── entity/       # 实体类
│   │   │       ├── exception/    # 异常处理
│   │   │       ├── mapper/       # Mapper接口
│   │   │       └── service/      # 服务层
│   │   └── resources/
│   │       ├── db/              # 数据库脚本
│   │       └── application.properties
│   └── test/                     # 测试代码
└── frontend/                     # 前端代码
    ├── src/
    │   ├── api/                  # API接口封装
    │   ├── components/           # 组件
    │   ├── router/               # 路由配置
    │   ├── utils/                # 工具类
    │   └── views/                # 页面视图
    ├── package.json
    └── vite.config.js
```

## 快速开始

### 1. 数据库准备

执行 `src/main/resources/db/schema.sql` 创建数据库和表结构。

或者手动创建数据库：
```sql
CREATE DATABASE student_management DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### 2. 后端配置

修改 `src/main/resources/application.properties` 中的数据库连接信息：

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/student_management?...
spring.datasource.username=root
spring.datasource.password=your_password
```

### 3. 启动后端

```bash
# 使用Maven运行
mvn spring-boot:run

# 或使用Maven Wrapper
./mvnw spring-boot:run  # Linux/Mac
mvnw.cmd spring-boot:run  # Windows
```

后端服务默认运行在 `http://localhost:8080`

### 4. 启动前端

```bash
cd frontend

# 安装依赖
npm install

# 启动开发服务器
npm run dev
```

前端服务默认运行在 `http://localhost:3000`

## API 接口文档

### 学生管理 (Students)

- `GET /api/students` - 分页查询学生列表
  - 参数：`pageNumber` (默认1), `pageSize` (默认10), `name`, `studentNo`
  
- `GET /api/students/{id}` - 根据ID查询学生详情

- `POST /api/students` - 新增学生

- `PUT /api/students/{id}` - 更新学生信息

- `DELETE /api/students/{id}` - 删除学生（逻辑删除）

### 课程管理 (Courses)

- `GET /api/courses` - 分页查询课程列表
  - 参数：`pageNumber`, `pageSize`, `courseName`, `courseNo`
  
- `GET /api/courses/{id}` - 根据ID查询课程详情

- `POST /api/courses` - 新增课程

- `PUT /api/courses/{id}` - 更新课程信息

- `DELETE /api/courses/{id}` - 删除课程（逻辑删除）

### 成绩管理 (Grades)

- `GET /api/grades` - 分页查询成绩列表
  - 参数：`pageNumber`, `pageSize`, `studentId`, `courseId`
  
- `GET /api/grades/{id}` - 根据ID查询成绩详情

- `POST /api/grades` - 新增成绩

- `PUT /api/grades/{id}` - 更新成绩信息

- `DELETE /api/grades/{id}` - 删除成绩（逻辑删除）

## 功能特性

- ✅ 学生管理（CRUD + 分页 + 模糊搜索）
- ✅ 课程管理（CRUD + 分页 + 模糊搜索）
- ✅ 成绩管理（CRUD + 分页 + 筛选）
- ✅ 逻辑删除
- ✅ 统一响应格式
- ✅ 全局异常处理
- ✅ CORS跨域支持
- ✅ RESTful API设计

## 开发规范

- 前端组件命名采用 PascalCase
- Java 类名首字母大写，包名小写
- Controller 路径统一以 `/api` 开头
- MyBatis-Flex 实体类使用 `@Table` 和 `@Id` 注解
- 所有代码统一使用英文命名，注释可用中文

## 注意事项

1. 确保 MySQL 版本 >= 8.0
2. 确保 Java 版本 >= 17
3. 确保 Node.js 版本 >= 16
4. 数据库用户名和密码需要在 `application.properties` 中配置

## 许可证

MIT License
