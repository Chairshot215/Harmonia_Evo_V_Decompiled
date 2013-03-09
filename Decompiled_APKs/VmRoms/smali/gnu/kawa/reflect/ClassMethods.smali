.class public Lgnu/kawa/reflect/ClassMethods;
.super Lgnu/mapping/Procedure2;
.source "ClassMethods.java"


# static fields
.field public static final classMethods:Lgnu/kawa/reflect/ClassMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/reflect/ClassMethods;

    invoke-direct {v0}, Lgnu/kawa/reflect/ClassMethods;-><init>()V

    sput-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    .line 12
    sget-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    const-string v1, "class-methods"

    invoke-virtual {v0, v1}, Lgnu/kawa/reflect/ClassMethods;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;
    .locals 7
    .parameter "dtype"
    .parameter "mname"
    .parameter "mode"
    .parameter "language"

    .prologue
    .line 229
    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v5, p3}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v3

    .line 230
    .local v3, methods:[Lgnu/expr/PrimProcedure;
    const/4 v1, 0x0

    .line 231
    .local v1, gproc:Lgnu/expr/GenericProc;
    const/4 v4, 0x0

    .line 232
    .local v4, pproc:Lgnu/expr/PrimProcedure;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 234
    aget-object v0, v3, v2

    .line 235
    .local v0, cur:Lgnu/expr/PrimProcedure;
    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lgnu/expr/GenericProc;

    .end local v1           #gproc:Lgnu/expr/GenericProc;
    invoke-direct {v1}, Lgnu/expr/GenericProc;-><init>()V

    .line 238
    .restart local v1       #gproc:Lgnu/expr/GenericProc;
    invoke-virtual {v1, v4}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 240
    :cond_0
    move-object v4, v0

    .line 241
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v1, v4}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 232
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0           #cur:Lgnu/expr/PrimProcedure;
    :cond_2
    if-eqz v1, :cond_3

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    move-object v5, v1

    .line 249
    :goto_1
    return-object v5

    :cond_3
    move-object v5, v4

    goto :goto_1
.end method

.method public static apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 7
    .parameter "thisProc"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 30
    instance-of v4, p1, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 31
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    .line 32
    :cond_0
    instance-of v4, p1, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_3

    .line 33
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v1, v0

    .line 39
    .local v1, dtype:Lgnu/bytecode/ClassType;
    :goto_0
    instance-of v4, p2, Ljava/lang/String;

    if-nez v4, :cond_1

    instance-of v4, p2, Lgnu/lists/FString;

    if-nez v4, :cond_1

    instance-of v4, p2, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_6

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, mname:Ljava/lang/String;
    const-string v4, "<init>"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 45
    invoke-static {v2}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    :cond_2
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    invoke-static {v1, v2, v5, v4}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v3

    .line 47
    .local v3, result:Lgnu/mapping/MethodProc;
    if-nez v3, :cond_7

    .line 48
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no applicable method named `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 34
    .end local v1           #dtype:Lgnu/bytecode/ClassType;
    .end local v2           #mname:Ljava/lang/String;
    .end local v3           #result:Lgnu/mapping/MethodProc;
    :cond_3
    instance-of v4, p1, Ljava/lang/String;

    if-nez v4, :cond_4

    instance-of v4, p1, Lgnu/lists/FString;

    if-nez v4, :cond_4

    instance-of v4, p1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_5

    .line 36
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .restart local v1       #dtype:Lgnu/bytecode/ClassType;
    goto :goto_0

    .line 38
    .end local v1           #dtype:Lgnu/bytecode/ClassType;
    :cond_5
    new-instance v4, Lgnu/mapping/WrongType;

    invoke-direct {v4, p0, v5, v6}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v4

    .line 43
    .restart local v1       #dtype:Lgnu/bytecode/ClassType;
    :cond_6
    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v6}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v4

    .line 50
    .restart local v2       #mname:Ljava/lang/String;
    .restart local v3       #result:Lgnu/mapping/MethodProc;
    :cond_7
    return-object v3
.end method

.method static checkName(Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 3
    .parameter "exp"

    .prologue
    const/4 v2, 0x0

    .line 281
    instance-of v1, p0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_3

    .line 283
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, name:Ljava/lang/Object;
    instance-of v1, v0, Lgnu/lists/FString;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .end local v0           #name:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 286
    .restart local v0       #name:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_2

    .line 287
    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0           #name:Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0       #name:Ljava/lang/Object;
    :cond_2
    move-object v1, v2

    .line 289
    goto :goto_0

    .end local v0           #name:Ljava/lang/Object;
    .restart local p0
    :cond_3
    move-object v1, v2

    .line 291
    goto :goto_0
.end method

.method static checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;
    .locals 4
    .parameter "exp"
    .parameter "reversible"

    .prologue
    const/4 v3, 0x0

    .line 258
    instance-of v2, p0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_4

    .line 260
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, name:Ljava/lang/Object;
    instance-of v2, v1, Lgnu/lists/FString;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 263
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .end local v1           #name:Ljava/lang/Object;
    .local v0, nam:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 272
    .end local v0           #nam:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 264
    .restart local v1       #name:Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_2

    .line 265
    check-cast v1, Lgnu/mapping/Symbol;

    .end local v1           #name:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #nam:Ljava/lang/String;
    goto :goto_0

    .end local v0           #nam:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/Object;
    :cond_2
    move-object v2, v3

    .line 267
    goto :goto_1

    .line 270
    .end local v1           #name:Ljava/lang/Object;
    .restart local v0       #nam:Ljava/lang/String;
    :cond_3
    invoke-static {v0, p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v0           #nam:Ljava/lang/String;
    .restart local p0
    :cond_4
    move-object v2, v3

    .line 272
    goto :goto_1
.end method

.method public static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;
    .locals 8
    .parameter "dtype"
    .parameter "mname"
    .parameter "mode"
    .parameter "caller"
    .parameter "language"

    .prologue
    .line 100
    sget-object v1, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    if-ne p0, v1, :cond_0

    .line 101
    sget-object p0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    .line 102
    :cond_0
    new-instance v1, Lgnu/kawa/reflect/MethodFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x50

    if-ne p2, v2, :cond_4

    const/4 v2, 0x0

    move-object v6, v2

    :goto_0
    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/reflect/MethodFilter;-><init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V

    .line 104
    .local v1, filter:Lgnu/kawa/reflect/MethodFilter;
    const/16 p3, 0x50

    if-eq p2, p3, :cond_1

    .end local p3
    const-string p3, "<init>"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_5

    :cond_1
    const/4 p1, 0x1

    move v5, p1

    .line 105
    .local v5, named_class_only:Z
    :goto_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 106
    .local v4, methods:Ljava/util/Vector;
    if-eqz v5, :cond_6

    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, v1, p1, v4}, Lgnu/bytecode/ObjectType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 107
    if-nez v5, :cond_3

    instance-of p1, p0, Lgnu/bytecode/ClassType;

    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object p1, v0

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    :cond_2
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 p3, 0x0

    invoke-virtual {p1, v1, p3, v4}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 111
    :cond_3
    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    move p3, p1

    .line 114
    .local p3, mlength:I
    :goto_3
    new-array v6, p3, [Lgnu/expr/PrimProcedure;

    .line 115
    .local v6, result:[Lgnu/expr/PrimProcedure;
    const/4 p1, 0x0

    .line 116
    .local p1, count:I
    move p3, p3

    .local p3, i:I
    move v7, p3

    .end local p3           #i:I
    .local v7, i:I
    move p3, p1

    .end local p1           #count:I
    .local p3, count:I
    move p1, v7

    .end local v1           #filter:Lgnu/kawa/reflect/MethodFilter;
    .end local v7           #i:I
    .local p1, i:I
    :goto_4
    add-int/lit8 v1, p1, -0x1

    .end local p1           #i:I
    .local v1, i:I
    if-ltz v1, :cond_8

    .line 118
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/Method;

    .line 119
    .local v2, method:Lgnu/bytecode/Method;
    if-nez v5, :cond_9

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    if-eq p1, p0, :cond_9

    .line 121
    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 122
    .local p1, itype:Lgnu/bytecode/Type;
    instance-of v3, p1, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_9

    .line 126
    new-instance v3, Lgnu/bytecode/Method;

    check-cast p1, Lgnu/bytecode/ClassType;

    .end local p1           #itype:Lgnu/bytecode/Type;
    invoke-direct {v3, v2, p1}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/Method;Lgnu/bytecode/ClassType;)V

    .end local v2           #method:Lgnu/bytecode/Method;
    .local v3, method:Lgnu/bytecode/Method;
    move-object p1, v3

    .line 129
    .end local v3           #method:Lgnu/bytecode/Method;
    .local p1, method:Lgnu/bytecode/Method;
    :goto_5
    new-instance v2, Lgnu/expr/PrimProcedure;

    invoke-direct {v2, p1, p2, p4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    .line 130
    .local v2, pproc:Lgnu/expr/PrimProcedure;
    add-int/lit8 p1, p3, 0x1

    .end local p3           #count:I
    .local p1, count:I
    aput-object v2, v6, p3

    move p3, p1

    .end local p1           #count:I
    .restart local p3       #count:I
    move p1, v1

    .line 131
    .end local v1           #i:I
    .local p1, i:I
    goto :goto_4

    .end local v2           #pproc:Lgnu/expr/PrimProcedure;
    .end local v4           #methods:Ljava/util/Vector;
    .end local v5           #named_class_only:Z
    .end local v6           #result:[Lgnu/expr/PrimProcedure;
    .local p1, mname:Ljava/lang/String;
    .local p3, caller:Lgnu/bytecode/ClassType;
    :cond_4
    move-object v6, p0

    .line 102
    goto :goto_0

    .line 104
    .end local p1           #mname:Ljava/lang/String;
    .end local p3           #caller:Lgnu/bytecode/ClassType;
    .local v1, filter:Lgnu/kawa/reflect/MethodFilter;
    :cond_5
    const/4 p1, 0x0

    move v5, p1

    goto :goto_1

    .line 106
    .restart local v4       #methods:Ljava/util/Vector;
    .restart local v5       #named_class_only:Z
    :cond_6
    const/4 p1, 0x2

    goto :goto_2

    .line 111
    :cond_7
    invoke-static {v4}, Lgnu/kawa/reflect/ClassMethods;->removeRedundantMethods(Ljava/util/Vector;)I

    move-result p1

    move p3, p1

    goto :goto_3

    .line 132
    .local v1, i:I
    .restart local v6       #result:[Lgnu/expr/PrimProcedure;
    .local p3, count:I
    :cond_8
    return-object v6

    .local v2, method:Lgnu/bytecode/Method;
    :cond_9
    move-object p1, v2

    .end local v2           #method:Lgnu/bytecode/Method;
    .local p1, method:Lgnu/bytecode/Method;
    goto :goto_5
.end method

.method private static removeRedundantMethods(Ljava/util/Vector;)I
    .locals 12
    .parameter "methods"

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 58
    .local v6, mlength:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_6

    .line 60
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/Method;

    .line 61
    .local v4, method1:Lgnu/bytecode/Method;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 62
    .local v0, class1:Lgnu/bytecode/ClassType;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v8

    .line 63
    .local v8, types1:[Lgnu/bytecode/Type;
    array-length v7, v8

    .line 64
    .local v7, tlen:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 66
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/Method;

    .line 67
    .local v5, method2:Lgnu/bytecode/Method;
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v9

    .line 68
    .local v9, types2:[Lgnu/bytecode/Type;
    array-length v10, v9

    if-eq v7, v10, :cond_1

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_1
    move v3, v7

    .local v3, k:I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 73
    aget-object v10, v8, v3

    aget-object v11, v9, v3

    if-eq v10, v11, :cond_2

    .line 76
    :cond_3
    if-gez v3, :cond_0

    .line 78
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    invoke-virtual {v0, v10}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 79
    invoke-virtual {p0, v4, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 80
    :cond_4
    const/4 v10, 0x1

    sub-int v10, v6, v10

    invoke-virtual {p0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 81
    add-int/lit8 v6, v6, -0x1

    .line 83
    goto :goto_0

    .line 85
    .end local v3           #k:I
    .end local v5           #method2:Lgnu/bytecode/Method;
    .end local v9           #types2:[Lgnu/bytecode/Type;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_0

    .line 87
    .end local v0           #class1:Lgnu/bytecode/ClassType;
    .end local v2           #j:I
    .end local v4           #method1:Lgnu/bytecode/Method;
    .end local v7           #tlen:I
    .end local v8           #types1:[Lgnu/bytecode/Type;
    :cond_6
    return v6
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;I)I
    .locals 13
    .parameter "methods"
    .parameter "numArgs"

    .prologue
    const/4 v12, 0x1

    .line 184
    array-length v1, p0

    .line 185
    .local v1, limit:I
    const/4 v7, 0x0

    .line 186
    .local v7, numTooManyArgs:I
    const/4 v6, 0x0

    .line 187
    .local v6, numTooFewArgs:I
    const/4 v5, 0x0

    .line 188
    .local v5, numOk:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 190
    aget-object v10, p0, v0

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->numArgs()I

    move-result v4

    .line 191
    .local v4, num:I
    invoke-static {v4}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v3

    .line 192
    .local v3, min:I
    invoke-static {v4}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v2

    .line 193
    .local v2, max:I
    const/4 v8, 0x0

    .line 194
    .local v8, ok:Z
    if-ge p1, v3, :cond_0

    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 200
    :goto_1
    if-eqz v8, :cond_2

    .line 202
    add-int/lit8 v5, v5, 0x1

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    if-le p1, v2, :cond_1

    if-ltz v2, :cond_1

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 199
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 208
    :cond_2
    sub-int v10, v1, v12

    aget-object v9, p0, v10

    .line 209
    .local v9, tmp:Lgnu/expr/PrimProcedure;
    sub-int v10, v1, v12

    aget-object v11, p0, v0

    aput-object v11, p0, v10

    .line 210
    aput-object v9, p0, v0

    .line 211
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 214
    .end local v2           #max:I
    .end local v3           #min:I
    .end local v4           #num:I
    .end local v8           #ok:Z
    .end local v9           #tmp:Lgnu/expr/PrimProcedure;
    :cond_3
    if-lez v5, :cond_4

    move v10, v5

    :goto_2
    return v10

    :cond_4
    if-lez v6, :cond_5

    const/high16 v10, -0xf

    goto :goto_2

    :cond_5
    if-lez v7, :cond_6

    const/high16 v10, -0xe

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J
    .locals 10
    .parameter "methods"
    .parameter "atypes"

    .prologue
    const/4 v8, 0x1

    .line 146
    array-length v2, p0

    .line 147
    .local v2, limit:I
    const/4 v3, 0x0

    .line 148
    .local v3, numDefApplicable:I
    const/4 v4, 0x0

    .line 149
    .local v4, numPosApplicable:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 151
    aget-object v6, p0, v1

    invoke-virtual {v6, p1}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v0

    .line 152
    .local v0, code:I
    if-gez v0, :cond_0

    .line 155
    sub-int v6, v2, v8

    aget-object v5, p0, v6

    .line 156
    .local v5, tmp:Lgnu/expr/PrimProcedure;
    sub-int v6, v2, v8

    aget-object v7, p0, v1

    aput-object v7, p0, v6

    .line 157
    aput-object v5, p0, v1

    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 159
    goto :goto_0

    .line 160
    .end local v5           #tmp:Lgnu/expr/PrimProcedure;
    :cond_0
    if-lez v0, :cond_1

    .line 163
    aget-object v5, p0, v3

    .line 164
    .restart local v5       #tmp:Lgnu/expr/PrimProcedure;
    aget-object v6, p0, v1

    aput-object v6, p0, v3

    .line 165
    aput-object v5, p0, v1

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto :goto_0

    .line 171
    .end local v5           #tmp:Lgnu/expr/PrimProcedure;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0           #code:I
    :cond_2
    int-to-long v6, v3

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    return-wide v6
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v0

    return-object v0
.end method
