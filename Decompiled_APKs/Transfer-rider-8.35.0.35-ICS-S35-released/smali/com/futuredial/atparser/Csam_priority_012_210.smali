.class Lcom/futuredial/atparser/Csam_priority_012_210;
.super Lcom/futuredial/atparser/CProcType;
.source "CProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/futuredial/atparser/CProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public proc_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 376
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 377
    .local v0, iPriority:I
    packed-switch v0, :pswitch_data_0

    .line 389
    const-string p1, "1"

    .line 391
    :goto_0
    return-object p1

    .line 380
    :pswitch_0
    const-string p1, "2"

    .line 381
    goto :goto_0

    .line 383
    :pswitch_1
    const-string p1, "1"

    .line 384
    goto :goto_0

    .line 386
    :pswitch_2
    const-string p1, "0"

    .line 387
    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
