.class public Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcTelephonyPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;,
        Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;,
        Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;
    }
.end annotation


# static fields
.field protected static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected static mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;


# instance fields
.field protected event:I

.field protected mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "summaryType"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    invoke-direct {p0, p3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "summaryType"
    .parameter "defStyle"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    invoke-direct {p0, p3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V
    .locals 0
    .parameter "context"
    .parameter "summaryType"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-direct {p0, p2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V

    .line 168
    return-void
.end method

.method private getPhoneTypeName(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 377
    packed-switch p1, :pswitch_data_0

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c075e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 379
    :pswitch_0
    const-string v0, "GSM"

    goto :goto_0

    .line 381
    :pswitch_1
    const-string v0, "CDMA"

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimStateDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "simState"

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_0

    .line 413
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 399
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 401
    :pswitch_1
    const-string v0, "Ready"

    goto :goto_0

    .line 403
    :pswitch_2
    const-string v0, "No SIM card"

    goto :goto_0

    .line 406
    :pswitch_3
    const-string v0, "Locked (requires the user\'s SIM PIN to unlock)"

    goto :goto_0

    .line 408
    :pswitch_4
    const-string v0, "Locked (requires the user\'s SIM PUK to unlock)"

    goto :goto_0

    .line 410
    :pswitch_5
    const-string v0, "Locked (requries a network PIN to unlock)"

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V
    .locals 3
    .parameter "summaryType"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->updateSummary()V

    .line 186
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 188
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 190
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v1, "#####"

    const-string v2, "########phone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method


# virtual methods
.method protected getDataStateDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "dataState"

    .prologue
    .line 352
    packed-switch p1, :pswitch_data_0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c075e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 354
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0778

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0779

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c077a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 363
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c077b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public installListener()V
    .locals 3

    .prologue
    .line 425
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;->$SwitchMap$com$android$settings$framework$preference$telephony$HtcTelephonyPreference$SummaryType:[I

    iget-object v1, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 434
    :sswitch_0
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;-><init>(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    .line 437
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    iget v2, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->event:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public uninstallListener()V
    .locals 3

    .prologue
    .line 443
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 447
    :cond_0
    return-void
.end method

.method public updateSummary()V
    .locals 5

    .prologue
    const v4, 0x7f0c0a09

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 197
    .local v0, summary:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;->$SwitchMap$com$android$settings$framework$preference$telephony$HtcTelephonyPreference$SummaryType:[I

    iget-object v3, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    :goto_1
    return-void

    .line 202
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0a05

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getDataStateDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    const/16 v2, 0x40

    iput v2, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->event:I

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c09fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 213
    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c09fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 221
    goto :goto_0

    .line 226
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 228
    goto :goto_0

    .line 234
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c09fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 236
    goto :goto_0

    .line 241
    :pswitch_5
    const-string v1, "Network country ISO"

    .line 242
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_0

    .line 248
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 250
    goto/16 :goto_0

    .line 255
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 257
    goto/16 :goto_0

    .line 262
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0a08

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0773

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_2
    goto/16 :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0774

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 273
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0a04

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 275
    goto/16 :goto_0

    .line 278
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    goto/16 :goto_0

    .line 283
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0a07

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v0, "0"

    .line 286
    goto/16 :goto_0

    .line 291
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 302
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 311
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04ad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 321
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 323
    goto/16 :goto_0

    .line 328
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getSimStateDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    goto/16 :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c075e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
