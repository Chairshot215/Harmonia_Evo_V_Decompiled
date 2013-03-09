.class Lcom/futuredial/atparser/Csam_priority_012_321;
.super Lcom/futuredial/atparser/CProcType;
.source "CProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/futuredial/atparser/CProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public proc_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "val"

    .prologue
    .line 519
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 538
    .end local p1
    .local v1, val:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 523
    .end local v1           #val:Ljava/lang/String;
    .restart local p1
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 524
    .local v0, iPriority:I
    packed-switch v0, :pswitch_data_0

    .line 536
    const-string p1, "1"

    :goto_1
    move-object v1, p1

    .line 538
    .end local p1
    .restart local v1       #val:Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v1           #val:Ljava/lang/String;
    .restart local p1
    :pswitch_0
    const-string p1, "2"

    .line 528
    goto :goto_1

    .line 530
    :pswitch_1
    const-string p1, "1"

    .line 531
    goto :goto_1

    .line 533
    :pswitch_2
    const-string p1, "0"

    .line 534
    goto :goto_1

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
