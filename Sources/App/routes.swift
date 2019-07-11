import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
        
    }
    
    
//    router.get("WWDC2019") { req -> UserModel in
//        let code = 200
//        let message = "success"
//        let status = StatusModel(code: code, message: message)
//        let info = UserInfoModel(name: "Xuzhen", age: "26")
//        return UserModel(status: status, result: info)
//    }
//
//    router.get("Home") { req -> BasicModel in
//        let code = 200
//        let message = "success"
//        let status = StatusModel(code: code, message: message)
//
//        UserInfoModel(name: "Liu", age: "15")
//        return BasicModel(status: status, result: [])
//    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
