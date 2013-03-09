.class public Lcom/android/phone/FlipToSpeakerAttrG;
.super Lcom/android/phone/FlagSetting;
.source "FlipToSpeakerAttrG.java"


# static fields
.field static final FILENAME_GSENSOR:Ljava/lang/String; = "/sys/devices/virtual/htc_accelerometer/accelerometer/PhoneOnOffFlag"

.field private static final TAG:Ljava/lang/String; = "FlipToSpeaker"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    .line 12
    const-string v0, "/sys/devices/virtual/htc_accelerometer/accelerometer/PhoneOnOffFlag"

    invoke-direct {p0, p1, v0}, Lcom/android/phone/FlagSetting;-><init>(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public isAccessible()Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/phone/FlagSetting;->isAccessible()Z

    move-result v0

    return v0
.end method
