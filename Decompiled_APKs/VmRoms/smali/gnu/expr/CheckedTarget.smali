.class public Lgnu/expr/CheckedTarget;
.super Lgnu/expr/StackTarget;
.source "CheckedTarget.java"


# static fields
.field static initWrongTypeProcMethod:Lgnu/bytecode/Method;

.field static initWrongTypeStringMethod:Lgnu/bytecode/Method;

.field static typeClassCastException:Lgnu/bytecode/ClassType;

.field static typeWrongType:Lgnu/bytecode/ClassType;


# instance fields
.field argno:I

.field proc:Lgnu/expr/LambdaExp;

.field procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 23
    const/4 v0, -0x4

    iput v0, p0, Lgnu/expr/CheckedTarget;->argno:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V
    .locals 1
    .parameter "type"
    .parameter "proc"
    .parameter "argno"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 29
    iput-object p2, p0, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    .line 30
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 31
    iput p3, p0, Lgnu/expr/CheckedTarget;->argno:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V
    .locals 0
    .parameter "type"
    .parameter "procname"
    .parameter "argno"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 37
    iput-object p2, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 38
    iput p3, p0, Lgnu/expr/CheckedTarget;->argno:I

    .line 39
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V
    .locals 6
    .parameter "comp"
    .parameter "proc"
    .parameter "argno"
    .parameter "type"

    .prologue
    .line 110
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 111
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 6
    .parameter "comp"
    .parameter "proc"
    .parameter "argno"
    .parameter "type"
    .parameter "argValue"

    .prologue
    .line 116
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 117
    return-void
.end method

.method static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 7
    .parameter "comp"
    .parameter "proc"
    .parameter "procname"
    .parameter "argno"
    .parameter "type"
    .parameter "argValue"

    .prologue
    .line 123
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 128
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v3

    .line 129
    .local v3, isInTry:Z
    invoke-static {}, Lgnu/expr/CheckedTarget;->initWrongType()V

    .line 130
    new-instance v4, Lgnu/bytecode/Label;

    invoke-direct {v4, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 132
    .local v4, startTry:Lgnu/bytecode/Label;
    if-nez p5, :cond_2

    sget-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-eq p4, v1, :cond_2

    .line 134
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .line 135
    .local v1, tmpScope:Lgnu/bytecode/Scope;
    sget-object p5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .end local p5
    invoke-virtual {v0, p5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p5

    .line 136
    .restart local p5
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 137
    invoke-virtual {v0, p5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    move-object v5, v1

    .line 141
    .end local v1           #tmpScope:Lgnu/bytecode/Scope;
    .local v5, tmpScope:Lgnu/bytecode/Scope;
    :goto_0
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v2

    .line 142
    .local v2, startPC:I
    invoke-virtual {v4, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 143
    invoke-static {p4, p0}, Lgnu/expr/CheckedTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 145
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v1

    .line 150
    .local v1, endPC:I
    if-eq v1, v2, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    .end local v1           #endPC:I
    if-ne p4, v1, :cond_3

    .line 155
    :cond_0
    if-eqz v5, :cond_1

    .line 156
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 204
    .end local v2           #startPC:I
    .end local v4           #startTry:Lgnu/bytecode/Label;
    .end local p0
    .end local p1
    .end local p4
    :cond_1
    :goto_1
    return-void

    .line 140
    .end local v5           #tmpScope:Lgnu/bytecode/Scope;
    .restart local v4       #startTry:Lgnu/bytecode/Label;
    .restart local p0
    .restart local p1
    .restart local p4
    :cond_2
    const/4 v1, 0x0

    .local v1, tmpScope:Lgnu/bytecode/Scope;
    move-object v5, v1

    .end local v1           #tmpScope:Lgnu/bytecode/Scope;
    .restart local v5       #tmpScope:Lgnu/bytecode/Scope;
    goto :goto_0

    .line 160
    .restart local v2       #startPC:I
    :cond_3
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 161
    .local v1, endTry:Lgnu/bytecode/Label;
    invoke-virtual {v1, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 163
    new-instance p4, Lgnu/bytecode/Label;

    .end local p4
    invoke-direct {p4, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 164
    .local p4, endLabel:Lgnu/bytecode/Label;
    invoke-virtual {p4, v0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 165
    if-eqz v3, :cond_4

    .line 166
    invoke-virtual {v0, p4}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 167
    :cond_4
    const/4 v2, 0x0

    .line 168
    .local v2, fragment_cookie:I
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 169
    if-nez v3, :cond_5

    .line 170
    invoke-virtual {v0, p4}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v2

    .line 171
    :cond_5
    sget-object v6, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v4, v1, v6}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, thisIsProc:Z
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v4

    .end local v4           #startTry:Lgnu/bytecode/Label;
    if-eqz v4, :cond_c

    iget-object v4, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v4

    if-nez v4, :cond_c

    .line 178
    iget-object v4, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {p1, p0}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object p1

    .end local p1
    if-ne v4, p1, :cond_c

    .line 179
    const/4 p1, 0x1

    .line 181
    .end local v1           #thisIsProc:Z
    .local p1, thisIsProc:Z
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result p0

    .line 182
    .local p0, line:I
    if-lez p0, :cond_6

    .line 183
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    .line 184
    :cond_6
    sget-object p0, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    .end local p0           #line:I
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 185
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 186
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 187
    if-eqz p1, :cond_8

    .line 188
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 193
    :goto_3
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 194
    invoke-virtual {v0, p5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 195
    if-eqz p1, :cond_a

    sget-object p0, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    :goto_4
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 197
    if-eqz v5, :cond_7

    .line 198
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 199
    :cond_7
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 200
    if-eqz v3, :cond_b

    .line 201
    invoke-virtual {p4, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1

    .line 190
    :cond_8
    if-nez p2, :cond_9

    const/4 p0, -0x4

    if-eq p3, p0, :cond_9

    const-string p0, "lambda"

    :goto_5
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object p0, p2

    goto :goto_5

    .line 195
    :cond_a
    sget-object p0, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    goto :goto_4

    .line 203
    :cond_b
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto/16 :goto_1

    .end local p1           #thisIsProc:Z
    .restart local v1       #thisIsProc:Z
    .local p0, comp:Lgnu/expr/Compilation;
    :cond_c
    move p1, v1

    .end local v1           #thisIsProc:Z
    .restart local p1       #thisIsProc:Z
    goto :goto_2
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Ljava/lang/String;ILgnu/bytecode/Type;)V
    .locals 6
    .parameter "comp"
    .parameter "procname"
    .parameter "argno"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 104
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 105
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 1
    .parameter "type"

    .prologue
    .line 55
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;
    .locals 1
    .parameter "type"
    .parameter "proc"
    .parameter "argno"

    .prologue
    .line 49
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0, p1, p2}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;
    .locals 1
    .parameter "type"
    .parameter "procname"
    .parameter "argno"

    .prologue
    .line 43
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0, p1, p2}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;
    .locals 3
    .parameter "decl"

    .prologue
    .line 61
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v0

    return-object v0
.end method

.method private static initWrongType()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 71
    sget-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_0

    .line 72
    const-string v1, "java.lang.ClassCastException"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    .line 73
    :cond_0
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_1

    .line 75
    const-string v1, "gnu.mapping.WrongType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    .line 76
    new-array v0, v8, [Lgnu/bytecode/Type;

    .line 77
    .local v0, args:[Lgnu/bytecode/Type;
    sget-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v5

    .line 78
    sget-object v1, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v4

    .line 79
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v1, v0, v6

    .line 80
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v7

    .line 81
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    const-string v2, "<init>"

    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v4, v0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    .line 84
    new-array v0, v8, [Lgnu/bytecode/Type;

    .line 85
    sget-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v5

    .line 86
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v4

    .line 87
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v1, v0, v6

    .line 88
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v7

    .line 89
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    const-string v2, "<init>"

    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v4, v0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    .line 93
    .end local v0           #args:[Lgnu/bytecode/Type;
    :cond_1
    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 6
    .parameter "comp"
    .parameter "stackType"

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CheckedTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v1, p0, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    iget-object v2, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    iget v3, p0, Lgnu/expr/CheckedTarget;->argno:I

    iget-object v4, p0, Lgnu/expr/CheckedTarget;->type:Lgnu/bytecode/Type;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 99
    :cond_0
    return-void
.end method
