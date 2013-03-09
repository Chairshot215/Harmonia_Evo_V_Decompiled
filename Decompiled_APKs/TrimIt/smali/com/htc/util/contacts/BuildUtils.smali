.class public final Lcom/htc/util/contacts/BuildUtils;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/BuildUtils$SocialNetwork;,
        Lcom/htc/util/contacts/BuildUtils$IM;,
        Lcom/htc/util/contacts/BuildUtils$Feature;,
        Lcom/htc/util/contacts/BuildUtils$Customization;,
        Lcom/htc/util/contacts/BuildUtils$HtcSense;,
        Lcom/htc/util/contacts/BuildUtils$OpenSense;
    }
.end annotation


# static fields
.field public static final HTC_SENSE_1_5:D = 1.5

.field public static final HTC_SENSE_1_5_1:D = 1.51

.field public static final HTC_SENSE_1_6:D = 1.51

.field public static final HTC_SENSE_2_0:D = 2.0

.field public static final HTC_SENSE_2_1:D = 2.1

.field public static final HTC_SENSE_2_1_T:D = 2.11

.field public static final HTC_SENSE_3_0:D = 3.0

.field public static final HTC_SENSE_3_5:D = 3.5

.field public static final HTC_SENSE_4_0:D = 4.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    return-void
.end method

.method public static isCdma()Z
    .locals 2

    .prologue
    .line 621
    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->s_byteHtc_MobileNetworkInUse:B

    sget-byte v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->s_byteHtc_MobileNetwork_CDMA:B

    if-ne v0, v1, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDebug()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public static isFaceBookPhoneProject()Z
    .locals 2

    .prologue
    .line 663
    const-wide/high16 v0, 0x400c

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x42

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x89

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_1

    .line 667
    :cond_0
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSIMSDNEnabled()Z
    .locals 2

    .prologue
    .line 674
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    .line 679
    :cond_0
    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 632
    const/16 v0, 0x28

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x21

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x22

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x7c

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 636
    :cond_0
    const/4 v0, 0x1

    .line 638
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTabletPhoneEnabled()Z
    .locals 1

    .prologue
    .line 645
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTabletPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVVMEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 652
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVVMFlag:Z

    if-ne v0, v1, :cond_0

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
