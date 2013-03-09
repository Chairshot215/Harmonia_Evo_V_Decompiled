.class public Lcom/htc/wrap/android/telephony/HtcWrapServiceState;
.super Landroid/telephony/ServiceState;
.source "HtcWrapServiceState.java"


# static fields
.field public static final APPENDIX_NONE:I = 0x0

.field public static final APPENDIX_POSTFIX:I = 0x2

.field public static final APPENDIX_PREFIX:I = 0x1

.field public static final RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final STATE_NETWORK_SEARCHING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1

    invoke-static {p0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppendixType()I
    .locals 1

    invoke-super {p0}, Landroid/telephony/ServiceState;->getAppendixType()I

    move-result v0

    return v0
.end method

.method public getGPRSState()I
    .locals 1

    invoke-super {p0}, Landroid/telephony/ServiceState;->getGPRSState()I

    move-result v0

    return v0
.end method

.method public getNetwrorkType()I
    .locals 1

    invoke-super {p0}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v0

    return v0
.end method

.method public htcGetCdmaRadioPowerSaveMode()Z
    .locals 1

    invoke-super {p0}, Landroid/telephony/ServiceState;->htcGetCdmaRadioPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public htcSetCdmaRadioPowerSaveMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->htcSetCdmaRadioPowerSaveMode(Z)V

    return-void
.end method

.method public setAppendixType(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    return-void
.end method

.method public setGPRSState(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->setGPRSState(I)V

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    return-void
.end method
