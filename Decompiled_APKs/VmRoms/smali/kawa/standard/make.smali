.class public Lkawa/standard/make;
.super Lgnu/mapping/ProcedureN;
.source "make.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "args"

    .prologue
    .line 12
    array-length v8, p1

    .line 13
    .local v8, nargs:I
    if-nez v8, :cond_0

    .line 14
    new-instance v10, Lgnu/mapping/WrongArguments;

    invoke-direct {v10, p0, v8}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v10

    .line 15
    :cond_0
    const/4 v10, 0x0

    aget-object v2, p1, v10

    .line 17
    .local v2, arg_0:Ljava/lang/Object;
    instance-of v10, v2, Ljava/lang/Class;

    if-eqz v10, :cond_1

    .line 18
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    .line 23
    .local v3, clas:Ljava/lang/Class;
    :goto_0
    if-nez v3, :cond_3

    .line 24
    new-instance v10, Lgnu/mapping/WrongType;

    const/4 v11, 0x1

    const-string v12, "class"

    invoke-direct {v10, p0, v11, v2, v12}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v10

    .line 19
    .end local v3           #clas:Ljava/lang/Class;
    :cond_1
    instance-of v10, v2, Lgnu/bytecode/ClassType;

    if-eqz v10, :cond_2

    .line 20
    move-object v0, v2

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    .restart local v3       #clas:Ljava/lang/Class;
    goto :goto_0

    .line 22
    .end local v3           #clas:Ljava/lang/Class;
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #clas:Ljava/lang/Class;
    goto :goto_0

    .line 28
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 34
    .local v9, result:Ljava/lang/Object;
    const/4 v5, 0x1

    .local v5, i:I
    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 36
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aget-object v7, p1, v6

    check-cast v7, Lgnu/expr/Keyword;

    .line 37
    .local v7, key:Lgnu/expr/Keyword;
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .restart local v6       #i:I
    aget-object v1, p1, v5

    .line 38
    .local v1, arg:Ljava/lang/Object;
    invoke-virtual {v7}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10, v9}, Lkawa/lang/Record;->set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    .end local v1           #arg:Ljava/lang/Object;
    .end local v6           #i:I
    .end local v7           #key:Lgnu/expr/Keyword;
    .end local v9           #result:Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 32
    .local v4, ex:Ljava/lang/Exception;
    new-instance v10, Lgnu/mapping/WrappedException;

    invoke-direct {v10, v4}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 40
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v6       #i:I
    .restart local v9       #result:Ljava/lang/Object;
    :cond_4
    return-object v9
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 8
    const/16 v0, -0xfff

    return v0
.end method
