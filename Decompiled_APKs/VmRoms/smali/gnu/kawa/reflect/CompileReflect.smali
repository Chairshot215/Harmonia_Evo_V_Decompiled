.class public Lgnu/kawa/reflect/CompileReflect;
.super Ljava/lang/Object;
.source "CompileReflect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I
    .locals 4
    .parameter "type"
    .parameter "comp"

    .prologue
    .line 16
    instance-of v1, p0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/Type;->isExisting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v1, 0x1

    .line 29
    :goto_0
    return v1

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, ex:Ljava/lang/Exception;
    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 26
    const/4 v1, -0x1

    goto :goto_0

    .line 29
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;
    .locals 8
    .parameter "exp"
    .parameter "carg"
    .parameter "walker"

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    .line 39
    .local v1, comp:Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 40
    .local v2, language:Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 41
    .local v0, args:[Lgnu/expr/Expression;
    array-length v6, v0

    if-le v6, p1, :cond_1

    .line 43
    aget-object v6, v0, p1

    invoke-virtual {v2, v6}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v5

    .line 44
    .local v5, type:Lgnu/bytecode/Type;
    instance-of v6, v5, Lgnu/bytecode/Type;

    if-nez v6, :cond_0

    move-object v6, p0

    .line 54
    .end local v5           #type:Lgnu/bytecode/Type;
    :goto_0
    return-object v6

    .line 46
    .restart local v5       #type:Lgnu/bytecode/Type;
    :cond_0
    invoke-static {v5, v1}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 47
    array-length v6, v0

    new-array v3, v6, [Lgnu/expr/Expression;

    .line 48
    .local v3, nargs:[Lgnu/expr/Expression;
    array-length v6, v0

    invoke-static {v0, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v3, p1

    .line 50
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 51
    .local v4, nexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v4, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-object v6, v4

    .line 52
    goto :goto_0

    .end local v3           #nargs:[Lgnu/expr/Expression;
    .end local v4           #nexp:Lgnu/expr/ApplyExp;
    .end local v5           #type:Lgnu/bytecode/Type;
    :cond_1
    move-object v6, p0

    .line 54
    goto :goto_0
.end method

.method public static validateApplyInstanceOf(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 10
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v9, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 61
    invoke-static {p0, v9, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 63
    .local v1, args:[Lgnu/expr/Expression;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 65
    const/4 v7, 0x0

    aget-object v6, v1, v7

    .line 66
    .local v6, value:Lgnu/expr/Expression;
    aget-object v4, v1, v9

    .line 67
    .local v4, texp:Lgnu/expr/Expression;
    instance-of v7, v4, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_5

    .line 69
    check-cast v4, Lgnu/expr/QuoteExp;

    .end local v4           #texp:Lgnu/expr/Expression;
    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, t:Ljava/lang/Object;
    instance-of v7, v3, Lgnu/bytecode/Type;

    if-eqz v7, :cond_5

    .line 72
    move-object v0, v3

    check-cast v0, Lgnu/bytecode/Type;

    move-object v5, v0

    .line 73
    .local v5, type:Lgnu/bytecode/Type;
    instance-of v7, v5, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_0

    .line 74
    check-cast v5, Lgnu/bytecode/PrimType;

    .end local v5           #type:Lgnu/bytecode/Type;
    invoke-virtual {v5}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 75
    .restart local v5       #type:Lgnu/bytecode/Type;
    :cond_0
    instance-of v7, v6, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_2

    .line 76
    check-cast v6, Lgnu/expr/QuoteExp;

    .end local v6           #value:Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .line 89
    .end local v3           #t:Ljava/lang/Object;
    .end local v5           #type:Lgnu/bytecode/Type;
    :goto_0
    return-object v7

    .line 76
    .restart local v3       #t:Ljava/lang/Object;
    .restart local v5       #type:Lgnu/bytecode/Type;
    :cond_1
    sget-object v7, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 78
    .restart local v6       #value:Lgnu/expr/Expression;
    :cond_2
    invoke-virtual {v6}, Lgnu/expr/Expression;->side_effects()Z

    move-result v7

    if-nez v7, :cond_5

    .line 80
    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    .line 81
    .local v2, comp:I
    if-eq v2, v9, :cond_3

    if-nez v2, :cond_4

    .line 82
    :cond_3
    sget-object v7, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 83
    :cond_4
    const/4 v7, -0x3

    if-ne v2, v7, :cond_5

    .line 84
    sget-object v7, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .end local v2           #comp:I
    .end local v3           #t:Ljava/lang/Object;
    .end local v5           #type:Lgnu/bytecode/Type;
    .end local v6           #value:Lgnu/expr/Expression;
    :cond_5
    move-object v7, p0

    .line 89
    goto :goto_0
.end method

.method public static validateApplySlotGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 16
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v5

    .line 97
    .local v5, comp:Lgnu/expr/Compilation;
    invoke-virtual {v5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v10

    .line 98
    .local v10, language:Lgnu/expr/Language;
    move-object/from16 v0, p3

    check-cast v0, Lgnu/kawa/reflect/SlotGet;

    move-object/from16 p2, v0

    .line 99
    .local p2, gproc:Lgnu/kawa/reflect/SlotGet;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move v8, v0

    .line 101
    .local v8, isStatic:Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 102
    .local v4, args:[Lgnu/expr/Expression;
    const/16 p2, 0x0

    aget-object p2, v4, p2

    .line 103
    .local p2, arg0:Lgnu/expr/Expression;
    const/4 v3, 0x1

    aget-object v3, v4, v3

    .line 104
    .local v3, arg1:Lgnu/expr/Expression;
    invoke-virtual {v3}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v7

    .line 105
    .local v7, val1:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 106
    .local v6, name:Ljava/lang/String;
    instance-of v9, v7, Ljava/lang/String;

    if-nez v9, :cond_0

    instance-of v9, v7, Lgnu/lists/FString;

    if-nez v9, :cond_0

    instance-of v9, v7, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 112
    .end local v6           #name:Ljava/lang/String;
    .local v13, name:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 114
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v7

    .line 115
    .local v7, type:Lgnu/bytecode/Type;
    invoke-static {v7, v5}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v6

    .line 116
    .local v6, known:I
    if-gez v6, :cond_2

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .line 203
    .end local v3           #arg1:Lgnu/expr/Expression;
    .end local v4           #args:[Lgnu/expr/Expression;
    .end local v5           #comp:Lgnu/expr/Compilation;
    .end local v6           #known:I
    .end local v7           #type:Lgnu/bytecode/Type;
    .end local v8           #isStatic:Z
    .end local v13           #name:Ljava/lang/String;
    .end local p1
    .end local p2           #arg0:Lgnu/expr/Expression;
    .end local p3
    .local p0, name:Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local v3       #arg1:Lgnu/expr/Expression;
    .restart local v4       #args:[Lgnu/expr/Expression;
    .restart local v5       #comp:Lgnu/expr/Compilation;
    .local v6, name:Ljava/lang/String;
    .local v7, val1:Ljava/lang/Object;
    .restart local v8       #isStatic:Z
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2       #arg0:Lgnu/expr/Expression;
    .restart local p3
    :cond_1
    move-object/from16 p1, p0

    move-object/from16 p0, v6

    .line 111
    .end local v6           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto :goto_0

    .line 118
    .local v6, known:I
    .local v7, type:Lgnu/bytecode/Type;
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_2
    const-string v9, "class"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 120
    if-lez v6, :cond_3

    .line 121
    invoke-virtual {v7}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    invoke-static/range {p0 .. p0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto :goto_0

    .line 122
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_3
    sget-object p0, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    const-string p1, "getReflectClass"

    .end local p1
    const/16 p3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local p3
    move-result-object p0

    .line 124
    .local p0, method:Lgnu/bytecode/Method;
    new-instance p1, Lgnu/expr/ApplyExp;

    const/16 p3, 0x1

    move/from16 v0, p3

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p3, v0

    const/4 v3, 0x0

    aput-object p2, p3, v3

    .end local v3           #arg1:Lgnu/expr/Expression;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto :goto_0

    .line 126
    .restart local v3       #arg1:Lgnu/expr/Expression;
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p3
    :cond_4
    if-eqz v7, :cond_5

    .line 128
    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    .end local v6           #known:I
    const/4 v9, 0x0

    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v11, v6, v9

    const/4 v9, 0x1

    aput-object v3, v6, v9

    .line 130
    .local v6, nargs:[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    .end local v3           #arg1:Lgnu/expr/Expression;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    invoke-direct {v3, v9, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 131
    .local v3, nexp:Lgnu/expr/ApplyExp;
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 132
    move-object/from16 p0, v3

    .end local v3           #nexp:Lgnu/expr/ApplyExp;
    .end local v6           #nargs:[Lgnu/expr/Expression;
    :cond_5
    move-object v15, v7

    .line 137
    .end local v7           #type:Lgnu/bytecode/Type;
    .local v15, type:Lgnu/bytecode/Type;
    :goto_1
    instance-of v3, v15, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_7

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .line 138
    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v15           #type:Lgnu/bytecode/Type;
    .local v3, arg1:Lgnu/expr/Expression;
    .local v7, val1:Ljava/lang/Object;
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .local v3, type:Lgnu/bytecode/Type;
    move-object v15, v3

    .end local v3           #type:Lgnu/bytecode/Type;
    .restart local v15       #type:Lgnu/bytecode/Type;
    goto :goto_1

    .line 139
    .end local v7           #val1:Ljava/lang/Object;
    :cond_7
    instance-of v3, v15, Lgnu/bytecode/ObjectType;

    if-eqz v3, :cond_f

    .line 141
    move-object v0, v15

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v6, v0

    .line 142
    .local v6, ctype:Lgnu/bytecode/ObjectType;
    iget-object v3, v5, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_8

    iget-object v3, v5, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 144
    .local v3, caller:Lgnu/bytecode/ClassType;
    :goto_2
    invoke-static {v6, v13, v3}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v14

    .line 145
    .local v14, part:Lgnu/bytecode/Member;
    instance-of v7, v14, Lgnu/bytecode/Field;

    if-eqz v7, :cond_b

    .line 147
    move-object v0, v14

    check-cast v0, Lgnu/bytecode/Field;

    move-object v7, v0

    .line 148
    .local v7, field:Lgnu/bytecode/Field;
    invoke-virtual {v7}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v9

    .line 149
    .local v9, modifiers:I
    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_9

    .end local v9           #modifiers:I
    const/4 v9, 0x1

    .line 150
    .local v9, isStaticField:Z
    :goto_3
    if-eqz v8, :cond_a

    if-nez v9, :cond_a

    .line 151
    new-instance p0, Lgnu/expr/ErrorExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot access non-static field `"

    .end local p2           #arg0:Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' using `"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p3 .. p3}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto/16 :goto_0

    .line 142
    .end local v3           #caller:Lgnu/bytecode/ClassType;
    .end local v7           #field:Lgnu/bytecode/Field;
    .end local v9           #isStaticField:Z
    .end local v14           #part:Lgnu/bytecode/Member;
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2       #arg0:Lgnu/expr/Expression;
    :cond_8
    iget-object v3, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_2

    .line 149
    .restart local v3       #caller:Lgnu/bytecode/ClassType;
    .restart local v7       #field:Lgnu/bytecode/Field;
    .restart local v14       #part:Lgnu/bytecode/Member;
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 153
    .restart local v9       #isStaticField:Z
    :cond_a
    if-eqz v3, :cond_d

    invoke-virtual {v3, v7, v6}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result p3

    .end local p3
    if-nez p3, :cond_d

    .line 155
    new-instance p0, Lgnu/expr/ErrorExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "field "

    .end local p2           #arg0:Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2e

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not accessible here"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    .end local v7           #field:Lgnu/bytecode/Field;
    .end local v9           #isStaticField:Z
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2       #arg0:Lgnu/expr/Expression;
    .restart local p3
    :cond_b
    instance-of v7, v14, Lgnu/bytecode/Method;

    if-eqz v7, :cond_d

    .line 161
    move-object v0, v14

    check-cast v0, Lgnu/bytecode/Method;

    move-object v11, v0

    .line 162
    .local v11, method:Lgnu/bytecode/Method;
    invoke-virtual {v11}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 163
    .local v7, dtype:Lgnu/bytecode/ClassType;
    invoke-virtual {v11}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v12

    .line 164
    .local v12, modifiers:I
    invoke-virtual {v11}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v9

    .line 165
    .local v9, isStaticMethod:Z
    if-eqz v8, :cond_c

    if-nez v9, :cond_c

    .line 166
    new-instance p0, Lgnu/expr/ErrorExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot call non-static getter method `"

    .end local p2           #arg0:Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' using `"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p3 .. p3}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto/16 :goto_0

    .line 168
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2       #arg0:Lgnu/expr/Expression;
    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3, v7, v6, v12}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result p3

    .end local p3
    if-nez p3, :cond_d

    .line 169
    new-instance p0, Lgnu/expr/ErrorExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "method "

    .end local p2           #arg0:Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not accessible here"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto/16 :goto_0

    .line 172
    .end local v7           #dtype:Lgnu/bytecode/ClassType;
    .end local v9           #isStaticMethod:Z
    .end local v11           #method:Lgnu/bytecode/Method;
    .end local v12           #modifiers:I
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2       #arg0:Lgnu/expr/Expression;
    :cond_d
    if-eqz v14, :cond_e

    .line 174
    const/16 p1, 0x2

    move/from16 v0, p1

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p1, v0

    .end local p1
    const/16 p3, 0x0

    aput-object p2, p1, p3

    const/16 p2, 0x1

    new-instance p3, Lgnu/expr/QuoteExp;

    .end local p2           #arg0:Lgnu/expr/Expression;
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p3, p1, p2

    .line 176
    .local p1, nargs:[Lgnu/expr/Expression;
    new-instance p2, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object p3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 177
    .local p2, nexp:Lgnu/expr/ApplyExp;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    move-object/from16 p1, p2

    .line 178
    goto/16 :goto_0

    .line 180
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, visitor:Lgnu/expr/InlineCalls;
    .local p2, arg0:Lgnu/expr/Expression;
    :cond_e
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .end local p2           #arg0:Lgnu/expr/Expression;
    move-object v0, v15

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_f

    invoke-virtual {v5}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 181
    const/16 p2, 0x65

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no slot `"

    .end local v3           #caller:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, "\' in "

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v6}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 184
    .end local v6           #ctype:Lgnu/bytecode/ObjectType;
    .end local v14           #part:Lgnu/bytecode/Member;
    :cond_f
    invoke-static {v13}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    .local p2, fname:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 188
    const-string p3, "get"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-static {v0, v1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 189
    .local p3, getName:Ljava/lang/String;
    const-string v3, "is"

    invoke-static {v3, v13}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, isName:Ljava/lang/String;
    new-instance v5, Lgnu/expr/ApplyExp;

    .end local v5           #comp:Lgnu/expr/Compilation;
    sget-object v6, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const/16 v7, 0x9

    new-array v7, v7, [Lgnu/expr/Expression;

    const/4 v9, 0x0

    const-string v11, "gnu.kawa.reflect.SlotGet"

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-string v11, "getSlotValue"

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x2

    if-eqz v8, :cond_10

    sget-object v8, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .end local v8           #isStatic:Z
    :goto_4
    aput-object v8, v7, v9

    const/4 v8, 0x3

    const/4 v9, 0x0

    aget-object v4, v4, v9

    .end local v4           #args:[Lgnu/expr/Expression;
    aput-object v4, v7, v8

    const/4 v4, 0x4

    invoke-static {v13}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x5

    invoke-static/range {p2 .. p2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p2

    .end local p2           #fname:Ljava/lang/String;
    aput-object p2, v7, v4

    const/16 p2, 0x6

    invoke-static/range {p3 .. p3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p3

    .end local p3           #getName:Ljava/lang/String;
    aput-object p3, v7, p2

    const/16 p2, 0x7

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p3

    aput-object p3, v7, p2

    const/16 p2, 0x8

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p3

    aput-object p3, v7, p2

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 202
    .local v5, nexp:Lgnu/expr/ApplyExp;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 203
    const/16 p0, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto/16 :goto_0

    .line 190
    .end local v5           #nexp:Lgnu/expr/ApplyExp;
    .restart local v4       #args:[Lgnu/expr/Expression;
    .restart local v8       #isStatic:Z
    .restart local v13       #name:Ljava/lang/String;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p2       #fname:Ljava/lang/String;
    .restart local p3       #getName:Ljava/lang/String;
    :cond_10
    sget-object v8, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_4
.end method

.method public static validateApplySlotSet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 210
    move-object v0, p3

    check-cast v0, Lgnu/kawa/reflect/SlotSet;

    move-object v2, v0

    .line 215
    .local v2, sproc:Lgnu/kawa/reflect/SlotSet;
    iget-boolean v1, v2, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    .line 216
    .local v1, isStatic:Z
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v3

    iget-boolean v3, v3, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v3, :cond_0

    .line 217
    invoke-static {p0, v5, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 218
    :cond_0
    iget-boolean v3, v2, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v5}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 221
    return-object p0

    .line 218
    :cond_1
    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_0
.end method

.method public static validateApplyTypeSwitch(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 228
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 229
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 231
    aget-object v3, v0, v1

    instance-of v3, v3, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_0

    .line 233
    aget-object v2, v0, v1

    check-cast v2, Lgnu/expr/LambdaExp;

    .line 234
    .local v2, lexp:Lgnu/expr/LambdaExp;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 235
    iput-object p0, v2, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 229
    .end local v2           #lexp:Lgnu/expr/LambdaExp;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    return-object p0
.end method
