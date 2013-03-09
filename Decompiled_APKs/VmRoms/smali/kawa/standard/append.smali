.class public Lkawa/standard/append;
.super Lgnu/mapping/ProcedureN;
.source "append.java"


# static fields
.field public static final append:Lkawa/standard/append;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lkawa/standard/append;

    invoke-direct {v0}, Lkawa/standard/append;-><init>()V

    sput-object v0, Lkawa/standard/append;->append:Lkawa/standard/append;

    .line 13
    sget-object v0, Lkawa/standard/append;->append:Lkawa/standard/append;

    const-string v1, "append"

    invoke-virtual {v0, v1}, Lkawa/standard/append;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "args"

    .prologue
    const/4 v10, 0x1

    .line 22
    array-length v2, p0

    .line 23
    .local v2, count:I
    if-nez v2, :cond_1

    .line 24
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 50
    :cond_0
    return-object v9

    .line 25
    :cond_1
    sub-int v9, v2, v10

    aget-object v8, p0, v9

    .line 26
    .local v8, result:Ljava/lang/Object;
    sub-int v3, v2, v10

    .local v3, i:I
    move-object v9, v8

    .end local v8           #result:Ljava/lang/Object;
    :cond_2
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 28
    aget-object v5, p0, v3

    .line 29
    .local v5, list:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 30
    .local v1, copy:Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, last:Lgnu/lists/Pair;
    move-object v8, v1

    .line 31
    .end local v1           #copy:Ljava/lang/Object;
    :goto_1
    instance-of v10, v5, Lgnu/lists/Pair;

    if-eqz v10, :cond_4

    .line 33
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    .line 34
    .local v6, list_pair:Lgnu/lists/Pair;
    new-instance v7, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .local v7, new_pair:Lgnu/lists/Pair;
    if-nez v4, :cond_3

    .line 36
    move-object v1, v7

    .local v1, copy:Lgnu/lists/Pair;
    move-object v10, v1

    .line 39
    .end local v1           #copy:Lgnu/lists/Pair;
    :goto_2
    move-object v4, v7

    .line 40
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v10

    .line 41
    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {v4, v7}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    move-object v10, v8

    goto :goto_2

    .line 42
    .end local v6           #list_pair:Lgnu/lists/Pair;
    .end local v7           #new_pair:Lgnu/lists/Pair;
    :cond_4
    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v10, :cond_5

    .line 43
    new-instance v9, Lgnu/mapping/WrongType;

    sget-object v10, Lkawa/standard/append;->append:Lkawa/standard/append;

    add-int/lit8 v11, v3, 0x1

    aget-object v12, p0, v3

    const-string v13, "list"

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v9

    .line 44
    :cond_5
    if-eqz v4, :cond_2

    .line 46
    invoke-virtual {v4, v9}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .local v8, result:Lgnu/lists/Pair;
    move-object v9, v8

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 17
    invoke-static {p1}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
