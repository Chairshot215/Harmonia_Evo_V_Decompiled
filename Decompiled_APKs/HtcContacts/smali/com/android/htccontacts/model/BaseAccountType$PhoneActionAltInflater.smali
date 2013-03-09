.class public Lcom/android/htccontacts/model/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a009a

    .line 760
    if-nez p1, :cond_0

    .line 782
    :goto_0
    :pswitch_0
    return v0

    .line 761
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 782
    const v0, 0x7f0a0093

    goto :goto_0

    .line 762
    :pswitch_1
    const v0, 0x7f0a0094

    goto :goto_0

    .line 763
    :pswitch_2
    const v0, 0x7f0a0095

    goto :goto_0

    .line 764
    :pswitch_3
    const v0, 0x7f0a0096

    goto :goto_0

    .line 765
    :pswitch_4
    const v0, 0x7f0a0097

    goto :goto_0

    .line 766
    :pswitch_5
    const v0, 0x7f0a0098

    goto :goto_0

    .line 767
    :pswitch_6
    const v0, 0x7f0a0099

    goto :goto_0

    .line 769
    :pswitch_7
    const v0, 0x7f0a009b

    goto :goto_0

    .line 770
    :pswitch_8
    const v0, 0x7f0a009c

    goto :goto_0

    .line 771
    :pswitch_9
    const v0, 0x7f0a009d

    goto :goto_0

    .line 772
    :pswitch_a
    const v0, 0x7f0a009e

    goto :goto_0

    .line 773
    :pswitch_b
    const v0, 0x7f0a009f

    goto :goto_0

    .line 774
    :pswitch_c
    const v0, 0x7f0a00a0

    goto :goto_0

    .line 775
    :pswitch_d
    const v0, 0x7f0a00a1

    goto :goto_0

    .line 776
    :pswitch_e
    const v0, 0x7f0a00a2

    goto :goto_0

    .line 777
    :pswitch_f
    const v0, 0x7f0a00a3

    goto :goto_0

    .line 778
    :pswitch_10
    const v0, 0x7f0a00a4

    goto :goto_0

    .line 779
    :pswitch_11
    const v0, 0x7f0a00a5

    goto :goto_0

    .line 780
    :pswitch_12
    const v0, 0x7f0a00a6

    goto :goto_0

    .line 781
    :pswitch_13
    const v0, 0x7f0a00a7

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 755
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
