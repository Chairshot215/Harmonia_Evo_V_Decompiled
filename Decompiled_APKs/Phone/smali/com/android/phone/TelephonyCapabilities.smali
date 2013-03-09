.class public Lcom/android/phone/TelephonyCapabilities;
.super Ljava/lang/Object;
.source "TelephonyCapabilities.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyCapabilities"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static getDeviceIdLabel(Lcom/android/internal/telephony/Phone;)I
    .locals 3
    .parameter "phone"

    .prologue
    .line 154
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    const v0, 0x7f0e0285

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 157
    const v0, 0x7f0e0286

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "TelephonyCapabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceIdLabel: no known label for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static supportsAnswerAndHold(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static supportsEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 84
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v0, 0x1

    .line 194
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static supportsOtasp(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 111
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 123
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static useShortDtmfTones(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z
    .locals 6
    .parameter "phone"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 45
    .local v0, phoneType:I
    if-ne v0, v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v2

    .line 47
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, toneType:I
    if-nez v1, :cond_0

    move v2, v3

    .line 53
    goto :goto_0

    .line 57
    .end local v1           #toneType:I
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    move v2, v3

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
