.class public Lgnu/kawa/functions/CompilationHelpers;
.super Ljava/lang/Object;
.source "CompilationHelpers.java"


# static fields
.field public static final setterDecl:Lgnu/expr/Declaration;

.field static final setterField:Lgnu/bytecode/Field;

.field static final setterType:Lgnu/bytecode/ClassType;

.field static final typeList:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "java.util.List"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    .line 103
    const-string v0, "gnu.kawa.functions.Setter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterType:Lgnu/bytecode/ClassType;

    .line 104
    sget-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterType:Lgnu/bytecode/ClassType;

    const-string v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterField:Lgnu/bytecode/Field;

    .line 105
    new-instance v0, Lgnu/expr/Declaration;

    const-string v1, "setter"

    sget-object v2, Lgnu/kawa/functions/CompilationHelpers;->setterField:Lgnu/bytecode/Field;

    invoke-direct {v0, v1, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    .line 106
    sget-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    new-instance v1, Lgnu/expr/QuoteExp;

    sget-object v2, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static nonNumeric(Lgnu/expr/Expression;)Z
    .locals 3
    .parameter "exp"

    .prologue
    const/4 v2, 0x0

    .line 21
    instance-of v1, p0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_1

    .line 23
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lgnu/math/Numeric;

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/text/Char;

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 27
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    move v1, v2

    .line 24
    goto :goto_0

    .end local v0           #value:Ljava/lang/Object;
    .restart local p0
    :cond_1
    move v1, v2

    .line 27
    goto :goto_0
.end method

.method public static validateApplyToArgs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "applyToArgs"

    .prologue
    .line 41
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p3

    .line 42
    .local p3, args:[Lgnu/expr/Expression;
    array-length v1, p3

    const/4 v2, 0x1

    sub-int v3, v1, v2

    .line 43
    .local v3, nargs:I
    if-ltz v3, :cond_7

    .line 45
    const/4 v1, 0x0

    aget-object v1, p3, v1

    .line 46
    .local v1, proc:Lgnu/expr/Expression;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    instance-of v2, v1, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 50
    new-array v2, v3, [Lgnu/expr/Expression;

    .line 51
    .local v2, rargs:[Lgnu/expr/Expression;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p3, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-instance p3, Lgnu/expr/ApplyExp;

    .end local p3           #args:[Lgnu/expr/Expression;
    invoke-direct {p3, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    .end local p0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    .line 100
    .end local v1           #proc:Lgnu/expr/Expression;
    .end local v2           #rargs:[Lgnu/expr/Expression;
    .end local v3           #nargs:I
    :goto_0
    return-object p0

    .line 54
    .restart local v1       #proc:Lgnu/expr/Expression;
    .restart local v3       #nargs:I
    .restart local p0
    .restart local p3       #args:[Lgnu/expr/Expression;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    .line 55
    const/4 v2, 0x0

    aput-object v1, p3, v2

    :cond_1
    move-object v4, v1

    .line 57
    .end local v1           #proc:Lgnu/expr/Expression;
    .local v4, proc:Lgnu/expr/Expression;
    invoke-virtual {v4}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getRealType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 58
    .local v5, ptype:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    .line 59
    .local v1, comp:Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 60
    .local v2, language:Lgnu/expr/Language;
    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    new-array v1, v3, [Lgnu/expr/Expression;

    .line 63
    .local v1, rargs:[Lgnu/expr/Expression;
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {p3, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .end local v2           #language:Lgnu/expr/Language;
    .end local v5           #ptype:Lgnu/bytecode/Type;
    new-instance p3, Lgnu/expr/ApplyExp;

    .end local p3           #args:[Lgnu/expr/Expression;
    invoke-direct {p3, v4, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 65
    .local p3, nexp:Lgnu/expr/ApplyExp;
    invoke-virtual {p3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 66
    const/4 p0, 0x0

    invoke-virtual {v4, p3, p1, p2, p0}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    .end local p0
    move-result-object p0

    goto :goto_0

    .line 70
    .local v1, comp:Lgnu/expr/Compilation;
    .restart local v2       #language:Lgnu/expr/Language;
    .restart local v5       #ptype:Lgnu/bytecode/Type;
    .restart local p0
    .local p3, args:[Lgnu/expr/Expression;
    :cond_2
    const/4 v6, 0x0

    .line 71
    .local v6, result:Lgnu/expr/ApplyExp;
    invoke-static {v5, v1}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v1

    .end local v1           #comp:Lgnu/expr/Compilation;
    if-gez v1, :cond_3

    move-object p3, v6

    .line 93
    .end local v2           #language:Lgnu/expr/Language;
    .end local v3           #nargs:I
    .end local v4           #proc:Lgnu/expr/Expression;
    .end local v5           #ptype:Lgnu/bytecode/Type;
    .end local v6           #result:Lgnu/expr/ApplyExp;
    .local p3, result:Lgnu/expr/ApplyExp;
    :goto_1
    if-eqz p3, :cond_7

    .line 95
    invoke-virtual {p3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 96
    invoke-virtual {p1, p3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_0

    .line 73
    .restart local v2       #language:Lgnu/expr/Language;
    .restart local v3       #nargs:I
    .restart local v4       #proc:Lgnu/expr/Expression;
    .restart local v5       #ptype:Lgnu/bytecode/Type;
    .restart local v6       #result:Lgnu/expr/ApplyExp;
    .local p3, args:[Lgnu/expr/Expression;
    :cond_3
    sget-object v1, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v2, v4, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 76
    :cond_4
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    .end local v2           #language:Lgnu/expr/Language;
    invoke-direct {v1, v2, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .end local v6           #result:Lgnu/expr/ApplyExp;
    .local v1, result:Lgnu/expr/ApplyExp;
    move-object p3, v1

    .end local v1           #result:Lgnu/expr/ApplyExp;
    .local p3, result:Lgnu/expr/ApplyExp;
    goto :goto_1

    .line 78
    .restart local v2       #language:Lgnu/expr/Language;
    .restart local v6       #result:Lgnu/expr/ApplyExp;
    .local p3, args:[Lgnu/expr/Expression;
    :cond_5
    instance-of v1, v5, Lgnu/bytecode/ArrayType;

    if-eqz v1, :cond_6

    .line 80
    check-cast v5, Lgnu/bytecode/ArrayType;

    .end local v5           #ptype:Lgnu/bytecode/Type;
    invoke-virtual {v5}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 81
    .local v1, elementType:Lgnu/bytecode/Type;
    new-instance v2, Lgnu/expr/ApplyExp;

    .end local v2           #language:Lgnu/expr/Language;
    new-instance v3, Lgnu/kawa/reflect/ArrayGet;

    .end local v3           #nargs:I
    invoke-direct {v3, v1}, Lgnu/kawa/reflect/ArrayGet;-><init>(Lgnu/bytecode/Type;)V

    invoke-direct {v2, v3, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .end local v6           #result:Lgnu/expr/ApplyExp;
    .local v2, result:Lgnu/expr/ApplyExp;
    move-object p3, v2

    .line 82
    .end local v2           #result:Lgnu/expr/ApplyExp;
    .local p3, result:Lgnu/expr/ApplyExp;
    goto :goto_1

    .line 83
    .end local v1           #elementType:Lgnu/bytecode/Type;
    .local v2, language:Lgnu/expr/Language;
    .restart local v3       #nargs:I
    .restart local v5       #ptype:Lgnu/bytecode/Type;
    .restart local v6       #result:Lgnu/expr/ApplyExp;
    .local p3, args:[Lgnu/expr/Expression;
    :cond_6
    instance-of v1, v5, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_8

    move-object v0, v5

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v1, v0

    .local v1, ctype:Lgnu/bytecode/ClassType;
    sget-object v2, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    .end local v2           #language:Lgnu/expr/Language;
    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    if-ne v3, v2, :cond_8

    .line 90
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    .end local v3           #nargs:I
    const/4 v4, 0x0

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .end local v4           #proc:Lgnu/expr/Expression;
    .end local v5           #ptype:Lgnu/bytecode/Type;
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 91
    .local v1, get:Lgnu/bytecode/Method;
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v1, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .end local v6           #result:Lgnu/expr/ApplyExp;
    .local v2, result:Lgnu/expr/ApplyExp;
    move-object p3, v2

    .end local v2           #result:Lgnu/expr/ApplyExp;
    .local p3, result:Lgnu/expr/ApplyExp;
    goto :goto_1

    .line 99
    .end local v1           #get:Lgnu/bytecode/Method;
    .end local p3           #result:Lgnu/expr/ApplyExp;
    :cond_7
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    goto/16 :goto_0

    .restart local v3       #nargs:I
    .restart local v4       #proc:Lgnu/expr/Expression;
    .restart local v5       #ptype:Lgnu/bytecode/Type;
    .restart local v6       #result:Lgnu/expr/ApplyExp;
    .local p3, args:[Lgnu/expr/Expression;
    :cond_8
    move-object p3, v6

    .end local v6           #result:Lgnu/expr/ApplyExp;
    .local p3, result:Lgnu/expr/ApplyExp;
    goto :goto_1
.end method

.method public static validateIsEqv(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 161
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 162
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    new-instance v1, Lgnu/expr/ApplyExp;

    check-cast p3, Lgnu/kawa/functions/IsEqv;

    .end local p3
    iget-object v2, p3, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 164
    :goto_0
    return-object v1

    .restart local p3
    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method public static validateSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 10
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 112
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 113
    .local v3, args:[Lgnu/expr/Expression;
    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 115
    const/4 v8, 0x0

    aget-object v1, v3, v8

    .line 116
    .local v1, arg:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 118
    .local v2, argType:Lgnu/bytecode/Type;
    instance-of v8, v2, Lgnu/bytecode/ArrayType;

    if-eqz v8, :cond_0

    .line 120
    new-instance v8, Lgnu/kawa/functions/SetArrayExp;

    check-cast v2, Lgnu/bytecode/ArrayType;

    .end local v2           #argType:Lgnu/bytecode/Type;
    invoke-direct {v8, v1, v2}, Lgnu/kawa/functions/SetArrayExp;-><init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V

    .line 154
    .end local v1           #arg:Lgnu/expr/Expression;
    :goto_0
    return-object v8

    .line 122
    .restart local v1       #arg:Lgnu/expr/Expression;
    .restart local v2       #argType:Lgnu/bytecode/Type;
    :cond_0
    instance-of v8, v2, Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_2

    move-object v0, v2

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v4, v0

    .local v4, ctype:Lgnu/bytecode/ClassType;
    sget-object v8, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v8}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 125
    instance-of v8, p0, Lgnu/kawa/functions/SetListExp;

    if-eqz v8, :cond_1

    move-object v8, p0

    .line 126
    goto :goto_0

    .line 128
    :cond_1
    new-instance v8, Lgnu/kawa/functions/SetListExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lgnu/kawa/functions/SetListExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 130
    .end local v4           #ctype:Lgnu/bytecode/ClassType;
    :cond_2
    instance-of v8, v1, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_3

    .line 132
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    .line 133
    .local v5, decl:Lgnu/expr/Declaration;
    if-eqz v5, :cond_3

    .line 134
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 136
    .end local v5           #decl:Lgnu/expr/Declaration;
    :cond_3
    instance-of v8, v1, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_5

    .line 138
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1           #arg:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 139
    .local v7, value:Ljava/lang/Object;
    instance-of v8, v7, Lgnu/mapping/Procedure;

    if-eqz v8, :cond_5

    .line 141
    check-cast v7, Lgnu/mapping/Procedure;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v6

    .line 142
    .local v6, setter:Lgnu/mapping/Procedure;
    instance-of v8, v6, Lgnu/mapping/Procedure;

    if-eqz v8, :cond_5

    .line 144
    instance-of v8, v6, Ljava/io/Externalizable;

    if-eqz v8, :cond_4

    .line 145
    new-instance v8, Lgnu/expr/QuoteExp;

    invoke-direct {v8, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_4
    check-cast v6, Lgnu/mapping/Procedure;

    .end local v6           #setter:Lgnu/mapping/Procedure;
    invoke-static {v6}, Lgnu/expr/Declaration;->getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 148
    .restart local v5       #decl:Lgnu/expr/Declaration;
    if-eqz v5, :cond_5

    .line 149
    new-instance v8, Lgnu/expr/ReferenceExp;

    invoke-direct {v8, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_0

    .end local v2           #argType:Lgnu/bytecode/Type;
    .end local v5           #decl:Lgnu/expr/Declaration;
    :cond_5
    move-object v8, p0

    .line 154
    goto :goto_0
.end method
