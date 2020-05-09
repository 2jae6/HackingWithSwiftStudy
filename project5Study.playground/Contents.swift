class Singer{
    func playSong(){
        print("Shake it off!")
    }
}

func sing() -> () -> Void{
    let taylor = Singer()
    let singing = {[weak taylor] in
        taylor?.playSong()
        return
    }
    
    return singing
}


let singFunction = sing()
singFunction()
print("gg")
