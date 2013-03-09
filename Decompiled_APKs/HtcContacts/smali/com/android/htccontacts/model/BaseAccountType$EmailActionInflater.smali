.class public Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;
.super Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 790
    if-nez p1, :cond_0

    const v0, 0x7f0a00ad

    .line 796
    :goto_0
    return v0

    .line 791
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 796
    const v0, 0x7f0a00ac

    goto :goto_0

    .line 792
    :pswitch_0
    const v0, 0x7f0a00a8

    goto :goto_0

    .line 793
    :pswitch_1
    const v0, 0x7f0a00aa

    goto :goto_0

    .line 794
    :pswitch_2
    const v0, 0x7f0a00ab

    goto :goto_0

    .line 795
    :pswitch_3
    const v0, 0x7f0a00a9

    goto :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
