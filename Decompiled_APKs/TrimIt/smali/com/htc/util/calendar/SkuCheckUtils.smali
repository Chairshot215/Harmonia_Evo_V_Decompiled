.class public Lcom/htc/util/calendar/SkuCheckUtils;
.super Ljava/lang/Object;
.source "SkuCheckUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportSMSReminder()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v1, :pswitch_data_0

    .line 18
    :cond_0
    :goto_0
    return v0

    .line 10
    :pswitch_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_0

    .line 11
    const/4 v0, 0x1

    goto :goto_0

    .line 7
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method
