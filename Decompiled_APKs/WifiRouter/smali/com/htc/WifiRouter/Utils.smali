.class public Lcom/htc/WifiRouter/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnableSkin()Z
    .locals 1

    .prologue
    .line 20
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 23
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static isEnableTheme()Z
    .locals 1

    .prologue
    .line 8
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 15
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 12
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_0
    .end sparse-switch
.end method
