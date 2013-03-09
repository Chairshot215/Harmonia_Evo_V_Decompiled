.class public Lgnu/kawa/functions/ArrayRef;
.super Lgnu/mapping/ProcedureN;
.source "ArrayRef.java"


# static fields
.field public static final arrayRef:Lgnu/kawa/functions/ArrayRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/ArrayRef;

    invoke-direct {v0}, Lgnu/kawa/functions/ArrayRef;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArrayRef;->arrayRef:Lgnu/kawa/functions/ArrayRef;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;
    .locals 4
    .parameter "array"
    .parameter "index"

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
    invoke-interface {p0, v2}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lgnu/lists/Array;

    .end local p1
    check-cast p2, Lgnu/lists/Sequence;

    .end local p2
    invoke-static {p1, p2}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .restart local p1
    .restart local p2
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 34
    const/4 v4, 0x0

    aget-object v1, p1, v4

    check-cast v1, Lgnu/lists/Array;

    .line 36
    .local v1, array:Lgnu/lists/Array;
    array-length v4, p1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 38
    aget-object v0, p1, v6

    .line 39
    .local v0, arg1:Ljava/lang/Object;
    instance-of v4, v0, Lgnu/lists/Sequence;

    if-eqz v4, :cond_0

    .line 40
    check-cast v0, Lgnu/lists/Sequence;

    .end local v0           #arg1:Ljava/lang/Object;
    invoke-static {v1, v0}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    .end local p0
    :goto_0
    return-object v4

    .line 42
    .restart local p0
    :cond_0
    array-length v4, p1

    sub-int/2addr v4, v6

    new-array v3, v4, [I

    .line 43
    .local v3, indexes:[I
    array-length v4, p1

    sub-int v2, v4, v6

    .end local p0
    .local v2, i:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 45
    add-int/lit8 v4, v2, 0x1

    aget-object p0, p1, v4

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v3, v2

    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {v1, v3}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method
