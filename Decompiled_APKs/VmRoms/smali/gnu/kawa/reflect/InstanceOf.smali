.class public Lgnu/kawa/reflect/InstanceOf;
.super Lgnu/mapping/Procedure2;
.source "InstanceOf.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static instanceMethod:Lgnu/bytecode/Method;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field protected language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    .line 13
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileReflect:validateApplyInstanceOf"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/InstanceOf;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "name"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;)V

    .line 20
    invoke-virtual {p0, p2}, Lgnu/kawa/reflect/InstanceOf;->setName(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .parameter "type"
    .parameter "incoming"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 93
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-interface {p0, v3, v3, p2}, Lgnu/expr/TypeValue;->emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, cond:Lgnu/expr/ConditionalTarget;
    instance-of v3, p3, Lgnu/expr/ConditionalTarget;

    if-eqz v3, :cond_1

    .line 97
    move-object v0, p3

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v2, v0

    .line 98
    iget-object v3, v2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 102
    :goto_0
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 103
    if-eqz v2, :cond_2

    .line 104
    iget-object v3, v2, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 107
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 108
    if-nez v2, :cond_0

    .line 109
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {p3, p2, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 111
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_0

    .line 106
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_1
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 25
    iget-object v1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p2}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 26
    .local v0, type:Lgnu/bytecode/Type;
    instance-of v1, v0, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Lgnu/bytecode/PrimType;

    .end local v0           #type:Lgnu/bytecode/Type;
    invoke-virtual {v0}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 28
    .restart local v0       #type:Lgnu/bytecode/Type;
    :cond_0
    iget-object v1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 12
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 36
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 37
    .local v1, args:[Lgnu/expr/Expression;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 38
    .local v2, code:Lgnu/bytecode/CodeAttr;
    const/4 v4, 0x0

    .line 39
    .local v4, type:Lgnu/bytecode/Type;
    aget-object v5, v1, v10

    .line 40
    .local v5, typeArg:Lgnu/expr/Expression;
    instance-of v6, v5, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_1

    .line 44
    :try_start_0
    iget-object v6, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    check-cast v5, Lgnu/expr/QuoteExp;

    .end local v5           #typeArg:Lgnu/expr/Expression;
    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    :goto_0
    if-eqz v4, :cond_3

    .line 55
    instance-of v6, v4, Lgnu/bytecode/PrimType;

    if-eqz v6, :cond_0

    .line 56
    check-cast v4, Lgnu/bytecode/PrimType;

    .end local v4           #type:Lgnu/bytecode/Type;
    invoke-virtual {v4}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 57
    .restart local v4       #type:Lgnu/bytecode/Type;
    :cond_0
    aget-object v6, v1, v11

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 58
    instance-of v6, v4, Lgnu/expr/TypeValue;

    if-eqz v6, :cond_2

    .line 60
    move-object v0, v4

    check-cast v0, Lgnu/expr/TypeValue;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v7, p2, p3}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 82
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 48
    .local v3, ex:Ljava/lang/Exception;
    const/16 v6, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown type spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v5       #typeArg:Lgnu/expr/Expression;
    :cond_1
    iget-object v6, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v6, v5}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_0

    .line 64
    .end local v5           #typeArg:Lgnu/expr/Expression;
    :cond_2
    invoke-virtual {v4, v2}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 65
    invoke-virtual {p2, v4}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 81
    :goto_2
    iget-object v6, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {p3, p2, v6}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 69
    :cond_3
    sget-object v6, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    if-nez v6, :cond_4

    .line 71
    const-string v6, "gnu.bytecode.Type"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    sput-object v6, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    .line 72
    sget-object v6, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    const-string v7, "isInstance"

    sget-object v8, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v9, Lgnu/bytecode/Type;->boolean_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v6

    sput-object v6, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    .line 77
    :cond_4
    aget-object v6, v1, v10

    sget-object v7, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 78
    aget-object v6, v1, v11

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 79
    sget-object v6, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_2
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "args"

    .prologue
    .line 86
    iget-object v0, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method
