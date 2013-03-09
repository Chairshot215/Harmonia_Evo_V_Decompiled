.class public interface abstract Landroid/telephony/HtcIfServiceState;
.super Ljava/lang/Object;
.source "HtcIfServiceState.java"


# static fields
.field public static final APPENDIX_NONE:I = 0x0

.field public static final APPENDIX_POSTFIX:I = 0x2

.field public static final APPENDIX_PREFIX:I = 0x1

.field public static final RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final STATE_NETWORK_SEARCHING:I = 0x4


# virtual methods
.method public abstract getAppendixType()I
.end method

.method public abstract getGPRSState()I
.end method

.method public abstract getNetwrorkType()I
.end method

.method public abstract htcGetCdmaRadioPowerSaveMode()Z
.end method

.method public abstract htcSetCdmaRadioPowerSaveMode(Z)V
.end method

.method public abstract setAppendixType(I)V
.end method

.method public abstract setGPRSState(I)V
.end method

.method public abstract setNetworkType(I)V
.end method
