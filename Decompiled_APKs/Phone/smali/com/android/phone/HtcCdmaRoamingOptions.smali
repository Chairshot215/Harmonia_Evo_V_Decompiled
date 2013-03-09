.class public Lcom/android/phone/HtcCdmaRoamingOptions;
.super Ljava/lang/Object;
.source "HtcCdmaRoamingOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaRoamingOptions"


# instance fields
.field private final BUTTON_ROAMG_DATA_DOMESTIC:Ljava/lang/String;

.field private final BUTTON_ROAMG_DATA_INTERNATIONAL:Ljava/lang/String;

.field private final BUTTON_ROAMG_VOICE_DOMESTIC:Ljava/lang/String;

.field private final BUTTON_ROAMG_VOICE_INTERNATIONAL:Ljava/lang/String;

.field private final EXTRA_KEY_FOR_ROAMING_MODE:Ljava/lang/String;

.field private final INTENT_OF_ROAMING_PREFERENCE_UPDATED:Ljava/lang/String;

.field private ROAM_TYPE_DOMESTIC:Ljava/lang/String;

.field private ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

.field private intentFilter:Landroid/content/IntentFilter;

.field private mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mRoamingMode:I


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    const-string v0, "button_roaming_voice_domestic"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->BUTTON_ROAMG_VOICE_DOMESTIC:Ljava/lang/String;

    .line 46
    const-string v0, "button_roaming_voice_international"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->BUTTON_ROAMG_VOICE_INTERNATIONAL:Ljava/lang/String;

    .line 47
    const-string v0, "button_roaming_data_domestic"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->BUTTON_ROAMG_DATA_DOMESTIC:Ljava/lang/String;

    .line 48
    const-string v0, "button_roaming_data_international"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->BUTTON_ROAMG_DATA_INTERNATIONAL:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 51
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 52
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 53
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 55
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mRoamingMode:I

    .line 88
    const-string v0, "intent_of_roaming_preference_updated"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->INTENT_OF_ROAMING_PREFERENCE_UPDATED:Ljava/lang/String;

    .line 89
    const-string v0, "roaming_mode_key"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->EXTRA_KEY_FOR_ROAMING_MODE:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intent_of_roaming_preference_updated"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->intentFilter:Landroid/content/IntentFilter;

    .line 93
    new-instance v0, Lcom/android/phone/HtcCdmaRoamingOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaRoamingOptions$1;-><init>(Lcom/android/phone/HtcCdmaRoamingOptions;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    const-string v0, "domestic"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    .line 229
    const-string v0, "international"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 59
    iput-object p2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaRoamingOptions;->create()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaRoamingOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaRoamingOptions;->setRoamingMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaRoamingOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mRoamingMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCdmaRoamingOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaRoamingOptions;->updateButtonEnabledState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcCdmaRoamingOptions;->setupRoamingModeState(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/HtcCdmaRoamingOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingOptions;->updateRoamingSettings()V

    return-void
.end method

.method private setRoamingMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mRoamingMode:I

    .line 86
    return-void
.end method

.method private setVoiceRoamingMode()V
    .locals 7

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, domesticEnabled:I
    const/4 v3, 0x0

    .line 284
    .local v3, internationalEnabled:I
    const/4 v2, 0x0

    .line 285
    .local v2, enabled:Z
    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 286
    if-eqz v2, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 290
    if-eqz v2, :cond_1

    .line 291
    const/4 v3, 0x1

    .line 295
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v3, v5}, Lcom/android/internal/telephony/Phone;->requestSetVoiceRoamingMode(IILandroid/os/Message;)V

    .line 296
    const-string v4, "HtcCdmaRoamingOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO requestSetVoiceRoamingMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/lang/NoSuchMethodError;
    const-string v4, "HtcCdmaRoamingOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchMethod - requestSetVoiceRoamingMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupRoamingModeState(Ljava/lang/String;Z)V
    .locals 3
    .parameter "roamingType"
    .parameter "enabled"

    .prologue
    .line 250
    move v0, p2

    .line 252
    .local v0, tryEnable:Z
    const-string v1, "button_roaming_voice_domestic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingOptions;->setVoiceRoamingMode()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v1, "button_roaming_voice_international"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 264
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingOptions;->setVoiceRoamingMode()V

    goto :goto_0

    .line 266
    :cond_2
    const-string v1, "button_roaming_data_domestic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 270
    :cond_3
    const-string v1, "button_roaming_data_international"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;Z)V
    .locals 3
    .parameter "roamingType"
    .parameter "enabled"

    .prologue
    .line 306
    if-nez p2, :cond_0

    .line 308
    const-string v0, "HtcCdmaRoamingOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO Cancel ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/HtcCdmaRoamingOptions;->setupRoamingModeState(Ljava/lang/String;Z)V

    .line 336
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v0, "HtcCdmaRoamingOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO enabled ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e018d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/HtcCdmaRoamingOptions$4;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/HtcCdmaRoamingOptions$4;-><init>(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/phone/HtcCdmaRoamingOptions$3;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/HtcCdmaRoamingOptions$3;-><init>(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/HtcCdmaRoamingOptions$2;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/HtcCdmaRoamingOptions$2;-><init>(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private updateButtonEnabledState(I)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    const/4 v1, 0x1

    .line 115
    .local v1, selectable:Z
    if-nez p1, :cond_8

    .line 116
    const/4 v1, 0x0

    .line 124
    :goto_0
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v3, v7, :cond_0

    .line 125
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, settingsNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 137
    .end local v2           #settingsNetworkMode:I
    :cond_0
    if-nez v1, :cond_9

    .line 138
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 160
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 162
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 163
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 165
    :cond_4
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 168
    :cond_5
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 169
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 171
    :cond_6
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 172
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 173
    :cond_7
    return-void

    .line 118
    .end local v0           #enabled:Z
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 148
    :cond_9
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_a

    .line 149
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 151
    :cond_a
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_b

    .line 152
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 154
    :cond_b
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_SUPPORT_VOICE_CALL_SERVICE:Z

    if-eq v3, v7, :cond_3

    .line 155
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 156
    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateRoamingSettings()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 81
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 179
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    new-instance v0, Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;-><init>(Lcom/android/phone/HtcCdmaRoamingOptions;Lcom/android/phone/HtcCdmaRoamingOptions$1;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mHandler:Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;

    .line 185
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_roaming_voice_domestic"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 186
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_roaming_voice_international"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 187
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_roaming_data_domestic"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 188
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_roaming_data_international"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 192
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_SUPPORT_VOICE_CALL_SERVICE:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "HtcCdmaRoamingOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove BUTTON_ROAMG_VOICE_DOMESTIC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "HtcCdmaRoamingOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove BUTTON_ROAMG_VOICE_INTERNATIONAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "button_roaming_voice_domestic"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "button_roaming_voice_international"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setDependency(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected destroy()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected pause()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    return-void
.end method

.method public preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, key:Ljava/lang/String;
    const-string v2, "button_roaming_voice_domestic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string v2, "button_roaming_voice_domestic"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/HtcCdmaRoamingOptions;->showAlertDialog(Ljava/lang/String;Z)V

    .line 246
    :goto_0
    return v1

    .line 236
    :cond_0
    const-string v2, "button_roaming_voice_international"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    const-string v2, "button_roaming_voice_international"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamVoiceInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/HtcCdmaRoamingOptions;->showAlertDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 239
    :cond_1
    const-string v2, "button_roaming_data_domestic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    const-string v2, "button_roaming_data_domestic"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataDomestic:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/HtcCdmaRoamingOptions;->showAlertDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 242
    :cond_2
    const-string v2, "button_roaming_data_international"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    const-string v2, "button_roaming_data_international"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mButtonRoamDataInternational:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/HtcCdmaRoamingOptions;->showAlertDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 246
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resume()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->intentFilter:Landroid/content/IntentFilter;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 215
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingOptions;->updateRoamingSettings()V

    .line 217
    iget v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions;->mRoamingMode:I

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaRoamingOptions;->updateButtonEnabledState(I)V

    .line 218
    return-void
.end method
