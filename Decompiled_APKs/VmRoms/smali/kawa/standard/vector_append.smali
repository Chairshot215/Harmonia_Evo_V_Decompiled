.class public Lkawa/standard/vector_append;
.super Lgnu/mapping/ProcedureN;
.source "vector_append.java"


# static fields
.field public static final vectorAppend:Lkawa/standard/vector_append;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lkawa/standard/vector_append;

    const-string v1, "vector-append"

    invoke-direct {v0, v1}, Lkawa/standard/vector_append;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;
    .locals 16
    .parameter "args"

    .prologue
    .line 27
    const/4 v5, 0x0

    .line 28
    .local v5, length:I
    move-object/from16 v0, p0

    array-length v0, v0

    move v2, v0

    .line 29
    .local v2, args_length:I
    move v3, v2

    .local v3, i:I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 31
    aget-object v1, p0, v3

    .line 32
    .local v1, arg:Ljava/lang/Object;
    instance-of v13, v1, Lgnu/lists/FVector;

    if-eqz v13, :cond_0

    .line 33
    check-cast v1, Lgnu/lists/FVector;

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/lists/FVector;->size()I

    move-result v13

    add-int/2addr v5, v13

    goto :goto_0

    .line 36
    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v6

    .line 37
    .local v6, n:I
    if-gez v6, :cond_1

    .line 38
    new-instance v13, Lgnu/mapping/WrongType;

    sget-object v14, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    const-string v15, "list or vector"

    invoke-direct {v13, v14, v3, v1, v15}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v13

    .line 39
    :cond_1
    add-int/2addr v5, v6

    goto :goto_0

    .line 42
    .end local v1           #arg:Ljava/lang/Object;
    .end local v6           #n:I
    :cond_2
    new-array v10, v5, [Ljava/lang/Object;

    .line 43
    .local v10, result:[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 44
    .local v8, position:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    .line 46
    aget-object v1, p0, v3

    .line 47
    .restart local v1       #arg:Ljava/lang/Object;
    instance-of v13, v1, Lgnu/lists/FVector;

    if-eqz v13, :cond_5

    .line 49
    move-object v0, v1

    check-cast v0, Lgnu/lists/FVector;

    move-object v11, v0

    .line 50
    .local v11, vec:Lgnu/lists/FVector;
    invoke-virtual {v11}, Lgnu/lists/FVector;->size()I

    move-result v12

    .line 51
    .local v12, vec_length:I
    const/4 v4, 0x0

    .local v4, j:I
    move v9, v8

    .end local v8           #position:I
    .local v9, position:I
    :goto_2
    if-ge v4, v12, :cond_3

    .line 52
    add-int/lit8 v8, v9, 0x1

    .end local v9           #position:I
    .restart local v8       #position:I
    invoke-virtual {v11, v4}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v10, v9

    .line 51
    add-int/lit8 v4, v4, 0x1

    move v9, v8

    .end local v8           #position:I
    .restart local v9       #position:I
    goto :goto_2

    :cond_3
    move v8, v9

    .line 44
    .end local v4           #j:I
    .end local v9           #position:I
    .end local v11           #vec:Lgnu/lists/FVector;
    .end local v12           #vec_length:I
    .restart local v8       #position:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :cond_5
    instance-of v13, v1, Lgnu/lists/Pair;

    if-eqz v13, :cond_4

    .line 56
    :goto_3
    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v13, :cond_4

    .line 58
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 59
    .local v7, pair:Lgnu/lists/Pair;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #position:I
    .restart local v9       #position:I
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v10, v8

    .line 60
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move v8, v9

    .line 61
    .end local v9           #position:I
    .restart local v8       #position:I
    goto :goto_3

    .line 64
    .end local v1           #arg:Ljava/lang/Object;
    .end local v7           #pair:Lgnu/lists/Pair;
    :cond_6
    new-instance v13, Lgnu/lists/FVector;

    invoke-direct {v13, v10}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    return-object v13
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 22
    invoke-static {p1}, Lkawa/standard/vector_append;->apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;

    move-result-object v0

    return-object v0
.end method
