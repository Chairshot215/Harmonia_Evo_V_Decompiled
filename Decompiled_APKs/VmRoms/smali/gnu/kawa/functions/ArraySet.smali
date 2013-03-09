.class public Lgnu/kawa/functions/ArraySet;
.super Lgnu/mapping/ProcedureN;
.source "ArraySet.java"


# static fields
.field public static final arraySet:Lgnu/kawa/functions/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/ArraySet;

    invoke-direct {v0}, Lgnu/kawa/functions/ArraySet;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArraySet;->arraySet:Lgnu/kawa/functions/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .locals 4
    .parameter "array"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    .line 15
    .local v0, dims:I
    new-array v2, v0, [I

    .line 16
    .local v2, indexes:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    invoke-interface {p1, v1}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0, v2, p2}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lgnu/lists/Array;

    .end local p1
    check-cast p2, Lgnu/lists/Sequence;

    .end local p2
    invoke-static {p1, p2, p3}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 32
    :goto_0
    return-object v0

    .restart local p1
    .restart local p2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 38
    const/4 v5, 0x0

    aget-object v1, p1, v5

    check-cast v1, Lgnu/lists/Array;

    .line 40
    .local v1, array:Lgnu/lists/Array;
    array-length v5, p1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 42
    const/4 v5, 0x1

    aget-object v0, p1, v5

    .line 43
    .local v0, arg1:Ljava/lang/Object;
    instance-of v5, v0, Lgnu/lists/Sequence;

    if-eqz v5, :cond_0

    .line 45
    check-cast v0, Lgnu/lists/Sequence;

    .end local v0           #arg1:Ljava/lang/Object;
    aget-object v5, p1, v7

    invoke-static {v1, v0, v5}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 46
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 56
    .end local p0
    :goto_0
    return-object v5

    .line 49
    .restart local p0
    :cond_0
    array-length v5, p1

    sub-int v2, v5, v7

    .line 50
    .local v2, dim:I
    new-array v4, v2, [I

    .line 51
    .local v4, indexes:[I
    move v3, v2

    .end local p0
    .local v3, i:I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 53
    add-int/lit8 v5, v3, 0x1

    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v3

    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    invoke-interface {v1, v4, v5}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method
