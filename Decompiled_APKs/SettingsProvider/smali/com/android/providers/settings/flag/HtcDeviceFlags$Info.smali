.class public final Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;
.super Ljava/lang/Object;
.source "HtcDeviceFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/flag/HtcDeviceFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    return-void
.end method

.method public static getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;
    .locals 1

    .prologue
    .line 398
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    .line 407
    :goto_0
    return-object v0

    .line 402
    :cond_0
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    packed-switch v0, :pswitch_data_0

    .line 407
    sget-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->PDA_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    goto :goto_0

    .line 404
    :pswitch_0
    sget-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->SMART_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static isTabletDevice()Z
    .locals 1

    .prologue
    .line 319
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
