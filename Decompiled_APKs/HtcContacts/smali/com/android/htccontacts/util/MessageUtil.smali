.class public Lcom/android/htccontacts/util/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# static fields
.field private static mMaxMMSMRN:I

.field private static mMaxSMSMRN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 11
    sput v0, Lcom/android/htccontacts/util/MessageUtil;->mMaxSMSMRN:I

    .line 12
    sput v0, Lcom/android/htccontacts/util/MessageUtil;->mMaxMMSMRN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultMaxMMSRecipientNumber()I
    .locals 3

    .prologue
    const/16 v1, 0x14

    const/16 v0, 0xa

    .line 68
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isDeviceFlag(S)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const/16 v0, 0x28

    goto :goto_0

    .line 74
    :cond_2
    const/16 v2, 0xa9

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    const/16 v2, 0xa8

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    const/16 v2, 0x98

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isDeviceFlag(S)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    const/16 v1, 0x9e

    invoke-static {v1}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    const/16 v0, 0x20

    goto :goto_0

    .line 87
    :cond_5
    const/16 v1, 0x50

    invoke-static {v1}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/16 v0, 0x19

    goto :goto_0
.end method

.method public static getDefaultMaxSMSRecipientNumber()I
    .locals 3

    .prologue
    const/16 v0, 0xa

    const/16 v1, 0xfa

    .line 41
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isDeviceFlag(S)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    const/16 v0, 0x28

    goto :goto_0

    .line 47
    :cond_2
    const/16 v2, 0xa9

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    const/16 v0, 0x14

    goto :goto_0

    .line 50
    :cond_3
    const/16 v2, 0xa8

    invoke-static {v2}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const/16 v0, 0x98

    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    const/16 v0, 0x64

    goto :goto_0

    .line 57
    :cond_4
    const/16 v0, 0x9e

    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_5
    const/16 v0, 0x50

    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 61
    goto :goto_0

    :cond_6
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public static getMaxMMSRecipientNumber(Landroid/content/Context;)I
    .locals 3
    .parameter "conttext"

    .prologue
    .line 15
    sget v1, Lcom/android/htccontacts/util/MessageUtil;->mMaxMMSMRN:I

    if-gtz v1, :cond_0

    .line 16
    const-string v1, "com.android.htccontacts.customizationBySIM"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "MMS_Max_Recipient_Number"

    invoke-static {}, Lcom/android/htccontacts/util/MessageUtil;->getDefaultMaxMMSRecipientNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/htccontacts/util/MessageUtil;->mMaxMMSMRN:I

    .line 21
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    sget v1, Lcom/android/htccontacts/util/MessageUtil;->mMaxMMSMRN:I

    return v1
.end method

.method public static getMaxSMSRecipientNumber(Landroid/content/Context;)I
    .locals 3
    .parameter "conttext"

    .prologue
    .line 24
    sget v1, Lcom/android/htccontacts/util/MessageUtil;->mMaxSMSMRN:I

    if-gtz v1, :cond_0

    .line 25
    const-string v1, "com.android.htccontacts.customizationBySIM"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "SMS_Max_Recipient_Number"

    invoke-static {}, Lcom/android/htccontacts/util/MessageUtil;->getDefaultMaxSMSRecipientNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/htccontacts/util/MessageUtil;->mMaxSMSMRN:I

    .line 29
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    sget v1, Lcom/android/htccontacts/util/MessageUtil;->mMaxSMSMRN:I

    return v1
.end method

.method public static isDeviceFlag(S)Z
    .locals 1
    .parameter "byteDeviceFlag"

    .prologue
    .line 95
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLanguageFlag(S)Z
    .locals 1
    .parameter "byteLangFlag"

    .prologue
    .line 103
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProjectFlag(S)Z
    .locals 1
    .parameter "bytePrjFlag"

    .prologue
    .line 99
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMaxMMSRecipientNumber(I)V
    .locals 0
    .parameter "setMaxMMS"

    .prologue
    .line 37
    sput p0, Lcom/android/htccontacts/util/MessageUtil;->mMaxMMSMRN:I

    .line 38
    return-void
.end method

.method public static setMaxSMSRecipientNumber(I)V
    .locals 0
    .parameter "setMaxSMS"

    .prologue
    .line 33
    sput p0, Lcom/android/htccontacts/util/MessageUtil;->mMaxSMSMRN:I

    .line 34
    return-void
.end method
