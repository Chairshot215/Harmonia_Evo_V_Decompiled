.class public Lgnu/kawa/functions/IsEq;
.super Lgnu/mapping/Procedure2;
.source "IsEq.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "name"

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    .line 16
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEq;->setName(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V
    .locals 10
    .parameter "args"
    .parameter "comp"
    .parameter "target"
    .parameter "language"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 37
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 38
    .local v1, code:Lgnu/bytecode/CodeAttr;
    aget-object v6, p0, v8

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p1, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 39
    aget-object v6, p0, v9

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p1, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 40
    instance-of v6, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v6, :cond_1

    .line 42
    move-object v0, p2

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v2, v0

    .line 43
    .local v2, ctarget:Lgnu/expr/ConditionalTarget;
    iget-boolean v6, v2, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v6, :cond_0

    .line 44
    iget-object v6, v2, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    .line 47
    :goto_0
    invoke-virtual {v2, v1}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 75
    .end local v2           #ctarget:Lgnu/expr/ConditionalTarget;
    :goto_1
    return-void

    .line 46
    .restart local v2       #ctarget:Lgnu/expr/ConditionalTarget;
    :cond_0
    iget-object v6, v2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 52
    .end local v2           #ctarget:Lgnu/expr/ConditionalTarget;
    :cond_1
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 53
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    instance-of v6, v6, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_3

    .line 55
    invoke-virtual {p3, v9}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, trueValue:Ljava/lang/Object;
    invoke-virtual {p3, v8}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, falseValue:Ljava/lang/Object;
    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v4, v6}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 58
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 59
    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v3, v6}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 60
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    instance-of v6, v3, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 61
    sget-object v5, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    .line 72
    .end local v3           #falseValue:Ljava/lang/Object;
    .end local v4           #trueValue:Ljava/lang/Object;
    .local v5, type:Lgnu/bytecode/Type;
    :goto_2
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 73
    invoke-virtual {p2, p1, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 63
    .end local v5           #type:Lgnu/bytecode/Type;
    .restart local v3       #falseValue:Ljava/lang/Object;
    .restart local v4       #trueValue:Ljava/lang/Object;
    :cond_2
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .restart local v5       #type:Lgnu/bytecode/Type;
    goto :goto_2

    .line 67
    .end local v3           #falseValue:Ljava/lang/Object;
    .end local v4           #trueValue:Ljava/lang/Object;
    .end local v5           #type:Lgnu/bytecode/Type;
    :cond_3
    invoke-virtual {v1, v9}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 68
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 69
    invoke-virtual {v1, v8}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 70
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, v6}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    .restart local v5       #type:Lgnu/bytecode/Type;
    goto :goto_2
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 21
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 26
    iget-object v0, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 31
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    invoke-static {v0, p2, p3, v1}, Lgnu/kawa/functions/IsEq;->compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V

    .line 32
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "args"

    .prologue
    .line 79
    iget-object v0, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method
