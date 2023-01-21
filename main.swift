import Foundation


var data = ["sonun": "123456"]

func authorization() {
    
    print("Введите логин")
    var login = readLine()!
    
    print("Введите пароль")
    
    var password = readLine()!
    if password.count < 6 {
        print("Повторите попытку")
    }else{
        for (key,value) in data {
            if key == login && value == password {
                return print("вы успешно вошли")
            }
            if key != login {
                return print("вы успешно зарегистрировались")
            }
            
            if value != password {
                return print("неправильный пароль")
            }
        }
    }
}
authorization()

