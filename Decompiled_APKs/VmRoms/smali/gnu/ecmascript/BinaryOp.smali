.class public Lgnu/ecmascript/BinaryOp;
.super Lgnu/mapping/Procedure2;
.source "BinaryOp.java"


# instance fields
.field op:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "op"

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lgnu/ecmascript/BinaryOp;->setName(Ljava/lang/String;)V

    .line 10
    iput p2, p0, Lgnu/ecmascript/BinaryOp;->op:I

    .line 11
    return-void
.end method


# virtual methods
.method public apply(DD)D
    .locals 2
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 25
    iget v0, p0, Lgnu/ecmascript/BinaryOp;->op:I

    packed-switch v0, :pswitch_data_0

    .line 32
    const-wide/high16 v0, 0x7ff8

    :goto_0
    return-wide v0

    .line 27
    :pswitch_0
    add-double v0, p1, p3

    goto :goto_0

    .line 28
    :pswitch_1
    sub-double v0, p1, p3

    goto :goto_0

    .line 29
    :pswitch_2
    mul-double v0, p1, p3

    goto :goto_0

    .line 30
    :pswitch_3
    double-to-int v0, p1

    double-to-int v1, p3

    and-int/lit8 v1, v1, 0x1f

    shl-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 15
    iget v0, p0, Lgnu/ecmascript/BinaryOp;->op:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 17
    invoke-static {p1}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    :goto_0
    return-object v0

    .line 17
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/Double;

    invoke-static {p1}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {p2}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lgnu/ecmascript/BinaryOp;->apply(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0
.end method
