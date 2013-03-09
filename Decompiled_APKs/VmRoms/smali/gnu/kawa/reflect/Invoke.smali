.class public Lgnu/kawa/reflect/Invoke;
.super Lgnu/mapping/ProcedureN;
.source "Invoke.java"


# static fields
.field public static final invoke:Lgnu/kawa/reflect/Invoke;

.field public static final invokeSpecial:Lgnu/kawa/reflect/Invoke;

.field public static final invokeStatic:Lgnu/kawa/reflect/Invoke;

.field public static final make:Lgnu/kawa/reflect/Invoke;


# instance fields
.field kind:C

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .line 29
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-static"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    .line 30
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-special"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    .line 31
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "make"

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .parameter "name"
    .parameter "kind"

    .prologue
    .line 35
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;CLgnu/expr/Language;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLgnu/expr/Language;)V
    .locals 2
    .parameter "name"
    .parameter "kind"
    .parameter "language"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 41
    iput-char p2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 42
    iput-object p3, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    .line 43
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileInvoke:validateApplyInvoke"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/Invoke;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 2
    .parameter "type"
    .parameter "name"
    .parameter "args"

    .prologue
    .line 310
    const-class v0, Lgnu/kawa/reflect/Invoke;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/CompileInvoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static invoke$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStatic$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static make$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 5
    .parameter "type"
    .parameter "name"
    .parameter "args"

    .prologue
    .line 299
    const-class v1, Lgnu/kawa/reflect/Invoke;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/Invoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    .line 300
    .local v0, method:Lgnu/expr/PrimProcedure;
    if-nez v0, :cond_0

    .line 301
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing or ambiguous method `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v0           #method:Lgnu/expr/PrimProcedure;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 303
    .restart local v0       #method:Lgnu/expr/PrimProcedure;
    :cond_0
    :try_start_1
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v2
.end method

.method private static typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;
    .locals 3
    .parameter "arg"
    .parameter "thisProc"

    .prologue
    .line 64
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .line 66
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_1

    .line 67
    check-cast p0, Lgnu/bytecode/ObjectType;

    move-object v0, p0

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_3

    .line 69
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_4

    .line 71
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_4
    instance-of v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v0, :cond_5

    .line 73
    check-cast p0, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_5
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    const-string v2, "class-specifier"

    invoke-direct {v0, p1, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, args:[Ljava/lang/Object;
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x53

    if-eq v8, v9, :cond_0

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x56

    if-eq v8, v9, :cond_0

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x73

    if-eq v8, v9, :cond_0

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_6

    .line 84
    :cond_0
    array-length v6, v1

    .line 85
    .local v6, nargs:I
    invoke-static {p0, v6}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 86
    const/4 v8, 0x0

    aget-object v0, v1, v8

    .line 87
    .local v0, arg0:Ljava/lang/Object;
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x53

    if-eq v8, v9, :cond_1

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x73

    if-ne v8, v9, :cond_4

    :cond_1
    invoke-static {v0, p0}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v8

    move-object v2, v8

    :goto_0
    check-cast v2, Lgnu/bytecode/ObjectType;

    .line 90
    .local v2, dtype:Lgnu/bytecode/ObjectType;
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {p0, v2, v8}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v7

    .line 91
    .local v7, proc:Lgnu/mapping/Procedure;
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x53

    if-ne v8, v9, :cond_5

    const/4 v8, 0x2

    :goto_1
    sub-int v8, v6, v8

    new-array v5, v8, [Ljava/lang/Object;

    .line 92
    .local v5, margs:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 93
    .local v3, i:I
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x56

    if-eq v8, v9, :cond_2

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_3

    .line 94
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    const/4 v8, 0x0

    aget-object v8, v1, v8

    aput-object v8, v5, v3

    move v3, v4

    .line 95
    .end local v4           #i:I
    .restart local v3       #i:I
    :cond_3
    const/4 v8, 0x2

    const/4 v9, 0x2

    sub-int v9, v6, v9

    invoke-static {v1, v8, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {v7, v5, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 100
    .end local v0           #arg0:Ljava/lang/Object;
    .end local v2           #dtype:Lgnu/bytecode/ObjectType;
    .end local v3           #i:I
    .end local v5           #margs:[Ljava/lang/Object;
    .end local v6           #nargs:I
    .end local v7           #proc:Lgnu/mapping/Procedure;
    :goto_2
    return-void

    .line 87
    .restart local v0       #arg0:Ljava/lang/Object;
    .restart local v6       #nargs:I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v2, v8

    goto :goto_0

    .line 91
    .restart local v2       #dtype:Lgnu/bytecode/ObjectType;
    .restart local v7       #proc:Lgnu/mapping/Procedure;
    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    .line 99
    .end local v0           #arg0:Ljava/lang/Object;
    .end local v2           #dtype:Lgnu/bytecode/ObjectType;
    .end local v6           #nargs:I
    .end local v7           #proc:Lgnu/mapping/Procedure;
    :cond_6
    invoke-virtual {p0, v1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x50

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 105
    new-instance v34, Ljava/lang/RuntimeException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ": invoke-special not allowed at run time"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 108
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    .line 109
    .local v27, nargs:I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 110
    const/16 v34, 0x0

    aget-object v7, p1, v34

    .line 111
    .local v7, arg0:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x56

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x2a

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v34

    move-object/from16 v11, v34

    .line 114
    .local v11, dtype:Lgnu/bytecode/ObjectType;
    :goto_0
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x4e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    .line 116
    const/16 v25, 0x0

    .line 117
    .local v25, mname:Ljava/lang/Object;
    move-object v0, v11

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 v34, v0

    if-eqz v34, :cond_2

    .line 119
    move-object v0, v11

    check-cast v0, Lgnu/expr/TypeValue;

    move-object v12, v0

    invoke-interface {v12}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v10

    .line 120
    .local v10, constructor:Lgnu/mapping/Procedure;
    if-eqz v10, :cond_2

    .line 122
    add-int/lit8 v27, v27, -0x1

    .line 123
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 124
    .local v33, xargs:[Ljava/lang/Object;
    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object/from16 v2, v33

    move/from16 v3, v35

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    move-object v0, v10

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 254
    .end local v10           #constructor:Lgnu/mapping/Procedure;
    .end local v25           #mname:Ljava/lang/Object;
    .end local v33           #xargs:[Ljava/lang/Object;
    .end local p0
    :goto_1
    return-object v34

    .line 111
    .end local v11           #dtype:Lgnu/bytecode/ObjectType;
    .restart local p0
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ObjectType;

    move-object v11, v5

    goto :goto_0

    .line 128
    .restart local v11       #dtype:Lgnu/bytecode/ObjectType;
    .restart local v25       #mname:Ljava/lang/Object;
    :cond_2
    move-object v0, v11

    instance-of v0, v0, Lgnu/expr/PairClassType;

    move/from16 v34, v0

    if-eqz v34, :cond_3

    .line 130
    move-object v0, v11

    check-cast v0, Lgnu/expr/PairClassType;

    move-object/from16 v29, v0

    .line 131
    .local v29, ptype:Lgnu/expr/PairClassType;
    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object v11, v0

    .line 133
    .end local v29           #ptype:Lgnu/expr/PairClassType;
    :cond_3
    move-object v0, v11

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v34, v0

    if-eqz v34, :cond_9

    .line 135
    move-object v0, v11

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 137
    .local v12, elementType:Lgnu/bytecode/Type;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x1

    sub-int v21, v34, v35

    .line 142
    .local v21, len:I
    const/16 v34, 0x2

    move/from16 v0, v21

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    const/16 v34, 0x1

    aget-object v34, p1, v34

    move-object/from16 v0, v34

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-eqz v34, :cond_6

    const-string v34, "length"

    const/16 v35, 0x1

    aget-object p0, p1, v35

    .end local p0
    check-cast p0, Lgnu/expr/Keyword;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v26

    .local v26, name:Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_4

    const-string v34, "size"

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 146
    :cond_4
    const/16 v34, 0x2

    aget-object p0, p1, v34

    check-cast p0, Ljava/lang/Number;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v22

    .line 147
    .local v22, length:I
    const/4 v15, 0x3

    .line 148
    .local v15, i:I
    const/16 v23, 0x1

    .line 156
    .end local v26           #name:Ljava/lang/String;
    .local v23, lengthSpecified:Z
    :goto_2
    invoke-virtual {v12}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    .line 158
    .local v8, arr:Ljava/lang/Object;
    const/16 v17, 0x0

    .line 159
    .local v17, index:I
    :goto_3
    move v0, v15

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    .line 161
    aget-object v6, p1, v15

    .line 162
    .local v6, arg:Ljava/lang/Object;
    if-eqz v23, :cond_5

    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-eqz v34, :cond_5

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 164
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6           #arg:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v20

    .line 167
    .local v20, kname:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 173
    add-int/lit8 v15, v15, 0x1

    aget-object v6, p1, v15

    .line 175
    .end local v20           #kname:Ljava/lang/String;
    .restart local v6       #arg:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v12, v6}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    move-object v0, v8

    move/from16 v1, v17

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 176
    add-int/lit8 v17, v17, 0x1

    .line 159
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 152
    .end local v6           #arg:Ljava/lang/Object;
    .end local v8           #arr:Ljava/lang/Object;
    .end local v15           #i:I
    .end local v17           #index:I
    .end local v22           #length:I
    .end local v23           #lengthSpecified:Z
    :cond_6
    move/from16 v22, v21

    .line 153
    .restart local v22       #length:I
    const/4 v15, 0x1

    .line 154
    .restart local v15       #i:I
    const/16 v23, 0x0

    .restart local v23       #lengthSpecified:Z
    goto :goto_2

    .line 169
    .restart local v8       #arr:Ljava/lang/Object;
    .restart local v17       #index:I
    .restart local v20       #kname:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 171
    .local v14, ex:Ljava/lang/Throwable;
    new-instance v34, Ljava/lang/RuntimeException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "non-integer keyword \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\' in array constructor"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    .end local v14           #ex:Ljava/lang/Throwable;
    .end local v20           #kname:Ljava/lang/String;
    :cond_7
    move-object/from16 v34, v8

    .line 178
    goto/16 :goto_1

    .line 183
    .end local v8           #arr:Ljava/lang/Object;
    .end local v12           #elementType:Lgnu/bytecode/Type;
    .end local v15           #i:I
    .end local v17           #index:I
    .end local v21           #len:I
    .end local v22           #length:I
    .end local v23           #lengthSpecified:Z
    .end local v25           #mname:Ljava/lang/Object;
    .restart local p0
    :cond_8
    const/16 v34, 0x1

    aget-object v25, p1, v34

    .line 185
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v28

    .line 186
    .local v28, proc:Lgnu/mapping/MethodProc;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x4e

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x53

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x73

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    :cond_a
    const/16 v34, 0x2

    :goto_4
    sub-int v34, v27, v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 189
    .local v24, margs:[Ljava/lang/Object;
    const/4 v15, 0x0

    .line 190
    .restart local v15       #i:I
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x56

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v34, v0

    const/16 v35, 0x2a

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_c

    .line 191
    :cond_b
    add-int/lit8 v16, v15, 0x1

    .end local v15           #i:I
    .local v16, i:I
    const/16 v34, 0x0

    aget-object v34, p1, v34

    aput-object v34, v24, v15

    move/from16 v15, v16

    .line 192
    .end local v16           #i:I
    .restart local v15       #i:I
    :cond_c
    const/16 v34, 0x2

    const/16 v35, 0x2

    sub-int v35, v27, v35

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object/from16 v2, v24

    move v3, v15

    move/from16 v4, v35

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    goto/16 :goto_1

    .line 188
    .end local v15           #i:I
    .end local v24           #margs:[Ljava/lang/Object;
    :cond_d
    const/16 v34, 0x1

    goto :goto_4

    .line 197
    :cond_e
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v31

    .line 198
    .local v31, vars:Lgnu/mapping/CallContext;
    const/16 v19, 0x0

    .line 200
    .local v19, keywordStart:I
    :goto_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_f

    aget-object v34, p1, v19

    move-object/from16 v0, v34

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-nez v34, :cond_f

    .line 201
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 204
    :cond_f
    const/4 v13, -0x1

    .line 205
    .local v13, err:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    .line 207
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v13

    .line 208
    if-nez v13, :cond_10

    .line 209
    invoke-virtual/range {v31 .. v31}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v34

    goto/16 :goto_1

    .line 211
    :cond_10
    move-object v0, v11

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v12, v0

    const-string v34, "valueOf"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v36, v0

    move-object v0, v12

    move-object/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v32

    .line 213
    .local v32, vproc:Lgnu/mapping/MethodProc;
    if-eqz v32, :cond_11

    .line 215
    const/16 v34, 0x1

    sub-int v34, v27, v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 216
    .restart local v24       #margs:[Ljava/lang/Object;
    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x1

    sub-int v36, v27, v36

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object/from16 v2, v24

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v13

    .line 218
    if-nez v13, :cond_11

    .line 219
    invoke-virtual/range {v31 .. v31}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v34

    goto/16 :goto_1

    .line 221
    .end local v24           #margs:[Ljava/lang/Object;
    :cond_11
    const/16 v34, 0x0

    aget-object v34, p1, v34

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/mapping/MethodProc;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 230
    .end local v32           #vproc:Lgnu/mapping/MethodProc;
    .local v30, result:Ljava/lang/Object;
    :goto_6
    move/from16 v15, v19

    .line 232
    .restart local v15       #i:I
    :goto_7
    add-int/lit8 v34, v15, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    .line 234
    aget-object v6, p1, v15

    .line 235
    .restart local v6       #arg:Ljava/lang/Object;
    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-nez v34, :cond_15

    .line 242
    .end local v6           #arg:Ljava/lang/Object;
    :cond_12
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 243
    const/4 v15, 0x1

    .line 244
    :cond_13
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-eq v0, v1, :cond_17

    .line 246
    move-object v0, v11

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v12, v0

    const-string v34, "add"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v36, v0

    move-object v0, v12

    move-object/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v5

    .line 248
    .local v5, aproc:Lgnu/mapping/MethodProc;
    if-nez v5, :cond_16

    .line 249
    move v0, v13

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v34

    throw v34

    .line 225
    .end local v5           #aproc:Lgnu/mapping/MethodProc;
    .end local v15           #i:I
    .end local v30           #result:Ljava/lang/Object;
    :cond_14
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 226
    .local v9, cargs:[Ljava/lang/Object;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object v2, v9

    move/from16 v3, v35

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    move-object/from16 v0, v28

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .restart local v30       #result:Ljava/lang/Object;
    goto :goto_6

    .line 237
    .end local v9           #cargs:[Ljava/lang/Object;
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v15       #i:I
    :cond_15
    move-object v0, v6

    check-cast v0, Lgnu/expr/Keyword;

    move-object/from16 v18, v0

    .line 238
    .local v18, key:Lgnu/expr/Keyword;
    add-int/lit8 v34, v15, 0x1

    aget-object v6, p1, v34

    .line 239
    const/16 v34, 0x0

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v35

    move/from16 v0, v34

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v15, v15, 0x2

    goto/16 :goto_7

    .line 250
    .end local v6           #arg:Ljava/lang/Object;
    .end local v18           #key:Lgnu/expr/Keyword;
    .restart local v5       #aproc:Lgnu/mapping/MethodProc;
    :cond_16
    :goto_8
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-ge v0, v1, :cond_17

    .line 251
    add-int/lit8 v16, v15, 0x1

    .end local v15           #i:I
    .restart local v16       #i:I
    aget-object v34, p1, v15

    move-object v0, v5

    move-object/from16 v1, v30

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v15, v16

    .end local v16           #i:I
    .restart local v15       #i:I
    goto :goto_8

    .end local v5           #aproc:Lgnu/mapping/MethodProc;
    :cond_17
    move-object/from16 v34, v30

    .line 254
    goto/16 :goto_1
.end method

.method protected lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 6
    .parameter "dtype"
    .parameter "name"

    .prologue
    const/16 v5, 0x56

    const/16 v4, 0x50

    .line 266
    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    .line 267
    const-string v0, "<init>"

    .line 278
    .end local p2
    .local v0, mname:Ljava/lang/String;
    :goto_0
    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-ne v2, v4, :cond_4

    move v2, v4

    :goto_1
    iget-object v3, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p1, v0, v2, v3}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v1

    .line 283
    .local v1, proc:Lgnu/mapping/MethodProc;
    if-nez v1, :cond_7

    .line 284
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no method named `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    .end local v0           #mname:Ljava/lang/String;
    .end local v1           #proc:Lgnu/mapping/MethodProc;
    .restart local p2
    :cond_0
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p2, Lgnu/lists/FString;

    if-eqz v2, :cond_2

    .line 271
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .end local p2
    .restart local v0       #mname:Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    .end local v0           #mname:Ljava/lang/String;
    .restart local p2
    :cond_2
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_3

    .line 273
    check-cast p2, Lgnu/mapping/Symbol;

    .end local p2
    invoke-virtual {p2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mname:Ljava/lang/String;
    goto :goto_2

    .line 275
    .end local v0           #mname:Ljava/lang/String;
    .restart local p2
    :cond_3
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v2

    .line 278
    .end local p2
    .restart local v0       #mname:Ljava/lang/String;
    :cond_4
    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_5

    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-ne v2, v5, :cond_6

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 286
    .restart local v1       #proc:Lgnu/mapping/MethodProc;
    :cond_7
    return-object v1
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 260
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/lit16 v0, v0, -0x1000

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
