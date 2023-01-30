package hxopenai;

import haxe.extern.EitherType;

typedef TextCompletion = {
    var model:String;
    @:optional var prompt:EitherType<Array<String>, String>;
    @:optional var suffix:String;
    @:optional var max_tokens:Int;
    @:optional var temperature:Int;
    @:optional var top_p:Int;
    @:optional var n:Int;
    @:optional var stream:Bool;
    @:optional var logprobs:Int;
    @:optional var echo:Bool;
    @:optional var stop:EitherType<Array<String>, String>;
    @:optional var presence_penalty:Int;
    @:optional var frequency_penalty:Int;
    @:optional var best_of:Int;
    @:optional var logit_bias:Array<String>; //Not sure
    @:optional var user:String;
}

typedef CreateEdit = {
    var model:String;
    @:optional var input:String;
    var instruction:String;
    @:optional var n:Int;
    @:optional var temperature:Int;
    @:optional var top_p:Int;
}

typedef CreateImage = {
    var prompt:String;
    @:optional var n:Int;
    @:optional var size:String;
    @:optional var response_format:String;
    @:optional var user:String;
}

typedef CreateEmbeddings = {
    var model:String;
    var input:EitherType<Array<String>, String>;
    @:optional var user:String;
}