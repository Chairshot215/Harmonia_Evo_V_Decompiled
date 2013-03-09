.class public Lcom/android/htccontacts/model/BaseAccountType$ImActionInflater;
.super Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a00ba

    .line 874
    if-nez p1, :cond_0

    .line 885
    :goto_0
    :pswitch_0
    return v0

    .line 875
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 876
    :pswitch_1
    const v0, 0x7f0a00b2

    goto :goto_0

    .line 877
    :pswitch_2
    const v0, 0x7f0a00b3

    goto :goto_0

    .line 878
    :pswitch_3
    const v0, 0x7f0a00b4

    goto :goto_0

    .line 879
    :pswitch_4
    const v0, 0x7f0a00b5

    goto :goto_0

    .line 880
    :pswitch_5
    const v0, 0x7f0a00b6

    goto :goto_0

    .line 881
    :pswitch_6
    const v0, 0x7f0a00b7

    goto :goto_0

    .line 882
    :pswitch_7
    const v0, 0x7f0a00b8

    goto :goto_0

    .line 883
    :pswitch_8
    const v0, 0x7f0a00b9

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
