.class public Lcom/android/phone/HtcWorldPhoneOptions;
.super Ljava/lang/Object;
.source "HtcWorldPhoneOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
    }
.end annotation


# static fields
.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "button_cdma_more_expand_key"

.field private static final BUTTON_CDMA_OPTIONS_KEY:Ljava/lang/String; = "cdma_options_key"

.field private static final BUTTON_GLOBAL_KEY:Ljava/lang/String; = "button_global_mode_key"

.field private static final BUTTON_GSM_OPTIONS_KEY:Ljava/lang/String; = "gsm_options_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "button_gsm_more_expand_key"

.field private static final LOG_TAG:Ljava/lang/String; = "phone/settings_HtcWorldPhoneOptions"

.field public static final REGISTER_NETWORK_DIALOG:I = 0x3e9


# instance fields
.field private final CDMA_ROAMING_PREFERENCE_KEY:Ljava/lang/String;

.field private final DBG:Z

.field private final EXTRA_KEY_FOR_ROAMING_MODE:Ljava/lang/String;

.field private final INTENT_OF_ROAMING_PREFERENCE_UPDATED:Ljava/lang/String;

.field private INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

.field final NT_MODE_LTE_CMDA_EVDO_GSM_WCDMA:I

.field final NT_MODE_LTE_GSM_WCDMA:I

.field private QUICK_START:Ljava/lang/String;

.field private SETTINGS_PREFERR_NETWORK_TYPE:Ljava/lang/String;

.field private intentFilter:Landroid/content/IntentFilter;

.field private mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

.field private mCallOption:I

.field private mContext:Landroid/content/Context;

.field private mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRoamingPrefef:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQuickShow_preferredNetwork:Z

.field private mShortCutOfSecrectCode:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;I)V
    .locals 3
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "option"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->DBG:Z

    .line 46
    iput v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mCallOption:I

    .line 48
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    .line 58
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 59
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 60
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 62
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 63
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 68
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    new-instance v0, Lcom/android/phone/HtcWorldPhoneOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcWorldPhoneOptions$1;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;)V

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 334
    const-string v0, "htc.android.action.UPDATE_PREFERRED_NETWORK_TYPE"

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

    .line 335
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->intentFilter:Landroid/content/IntentFilter;

    .line 337
    new-instance v0, Lcom/android/phone/HtcWorldPhoneOptions$2;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcWorldPhoneOptions$2;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;)V

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 803
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    .line 805
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1283
    const-string v0, "preferrednetwork"

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->SETTINGS_PREFERR_NETWORK_TYPE:Ljava/lang/String;

    .line 1284
    iput-boolean v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mQuickShow_preferredNetwork:Z

    .line 1290
    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    .line 1291
    const-string v0, "shortcut"

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->QUICK_START:Ljava/lang/String;

    .line 1323
    const-string v0, "cdma_roaming_preference_key"

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->CDMA_ROAMING_PREFERENCE_KEY:Ljava/lang/String;

    .line 1472
    const-string v0, "intent_of_roaming_preference_updated"

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->INTENT_OF_ROAMING_PREFERENCE_UPDATED:Ljava/lang/String;

    .line 1473
    const-string v0, "roaming_mode_key"

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->EXTRA_KEY_FOR_ROAMING_MODE:Ljava/lang/String;

    .line 1487
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mLastRoamingPrefef:I

    .line 1491
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->NT_MODE_LTE_GSM_WCDMA:I

    .line 1492
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->NT_MODE_LTE_CMDA_EVDO_GSM_WCDMA:I

    .line 108
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 109
    iput-object p2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 110
    iput p3, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mCallOption:I

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->create()V

    .line 112
    return-void
.end method

.method private SyncRoamingPreference()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x7

    const/4 v7, 0x2

    .line 1343
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 1344
    const-string v4, "phone/settings_HtcWorldPhoneOptions"

    const-string v5, "OoO PhoneType is CDMA_PHONE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v3

    .line 1347
    .local v3, targetRoamingPref:I
    const/4 v0, 0x0

    .line 1349
    .local v0, needForeSetup:Z
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1352
    .local v2, settingsRoamingMode:I
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1357
    .local v1, settingsNetworkMode:I
    if-eq v2, v3, :cond_4

    .line 1358
    const/4 v0, 0x1

    .line 1370
    :goto_0
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_1

    .line 1373
    :cond_0
    if-eq v3, v7, :cond_1

    .line 1374
    invoke-direct {p0, v7}, Lcom/android/phone/HtcWorldPhoneOptions;->setTargetRoamingPreference(I)V

    .line 1375
    const/4 v3, 0x2

    .line 1379
    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 1380
    if-eqz v3, :cond_2

    if-ne v3, v7, :cond_7

    .line 1383
    :cond_2
    const-string v4, "phone/settings_HtcWorldPhoneOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO SyncRoamingPreference("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    invoke-virtual {v5, v7}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1393
    .end local v0           #needForeSetup:Z
    .end local v1           #settingsNetworkMode:I
    .end local v2           #settingsRoamingMode:I
    .end local v3           #targetRoamingPref:I
    :cond_3
    :goto_1
    return-void

    .line 1359
    .restart local v0       #needForeSetup:Z
    .restart local v1       #settingsNetworkMode:I
    .restart local v2       #settingsRoamingMode:I
    .restart local v3       #targetRoamingPref:I
    :cond_4
    if-eq v1, v8, :cond_5

    if-ne v1, v9, :cond_6

    :cond_5
    if-eq v2, v7, :cond_6

    .line 1362
    const/4 v0, 0x1

    goto :goto_0

    .line 1364
    :cond_6
    const-string v4, "phone/settings_HtcWorldPhoneOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO No need to SyncRoamingPreference(Target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<> RealState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1389
    :cond_7
    const-string v4, "phone/settings_HtcWorldPhoneOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO getlastRoamingPreference -> out of rang("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 7
    .parameter "NetworkMode"

    .prologue
    const v6, 0x7f0e00ed

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 699
    const-string v1, "phone/settings_HtcWorldPhoneOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO UpdatePreferredNetworkModeSummary("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, roamingItemsArray:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 784
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 788
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    if-ne v1, v4, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 797
    :cond_0
    const-string v1, "phone/settings_HtcWorldPhoneOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkMode type is not available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " please help to check."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_1
    :goto_0
    return-void

    .line 713
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 715
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v1, v4, :cond_1

    .line 720
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 722
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 735
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-eqz v1, :cond_3

    .line 739
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 740
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 749
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    if-ne v1, v4, :cond_1

    .line 750
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 752
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 741
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 742
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 755
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 767
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 770
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    if-ne v1, v4, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 780
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_2
    .end packed-switch

    .line 750
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->checkForNetworkSelector()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/HtcWorldPhoneOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/HtcWorldPhoneOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->setUniformNetworkTypeValue(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/HtcWorldPhoneOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->quickSelectPreferredNetworkMode(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/HtcWorldPhoneOptions;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->handlePreferredNetworkModeChange(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/HtcWorldPhoneOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->SyncRoamingPreference()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->reversePhoneTypeOptions()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/HtcWorldPhoneOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/HtcWorldPhoneOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    return-void
.end method

.method private checkForNetworkSelector()V
    .locals 8

    .prologue
    .line 265
    invoke-static {}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance()Lcom/android/phone/WorldPhoneModeSelection;

    move-result-object v2

    .line 266
    .local v2, modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    invoke-virtual {v2}, Lcom/android/phone/WorldPhoneModeSelection;->getHtcSimType()I

    move-result v0

    .line 267
    .local v0, SimTypeGroup:I
    const-string v5, "phone/settings_HtcWorldPhoneOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get htcSimType("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v4, 0x1

    .line 269
    .local v4, showItem:Z
    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    const-string v5, "ro.bootmode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, ret:Ljava/lang/String;
    const-string v5, "phone/settings_HtcWorldPhoneOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.bootmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v5, "factory2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    const-string v5, "phone/settings_HtcWorldPhoneOptions"

    const-string v6, "OoO for factory testing."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v4, 0x1

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->isForNelTesting()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 299
    const/4 v4, 0x1

    .line 303
    :cond_2
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 304
    return-void

    .line 271
    .end local v3           #ret:Ljava/lang/String;
    :pswitch_0
    const/4 v4, 0x0

    .line 273
    :pswitch_1
    const/4 v4, 0x0

    .line 276
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/phone/WorldPhoneModeSelection;->getRawSimType()I

    move-result v1

    .line 277
    .local v1, htcSimtype:I
    const-string v5, "phone/settings_HtcWorldPhoneOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get RawhtcSimType("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    .line 279
    const/4 v4, 0x0

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTargetRoamingPreference()I
    .locals 5

    .prologue
    .line 1334
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1335
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "cdma_roaming_preference_key"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1336
    .local v1, value:I
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTargetRoamingPreference("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return v1
.end method

.method private handlePreferredNetworkModeChange(Ljava/lang/Object;)Z
    .locals 13
    .parameter "objValue"

    .prologue
    .line 1061
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO will change preferredNetworkType ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-static {}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance()Lcom/android/phone/WorldPhoneModeSelection;

    move-result-object v8

    .local v8, modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    move-object v0, p1

    .line 1067
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1068
    .local v7, buttonNetworkMode:I
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonNetworkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1075
    .local v12, settingsNetworkMode:I
    const/4 v11, 0x0

    .line 1076
    .local v11, needHandleChange:Z
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1077
    const/4 v0, 0x4

    if-eq v7, v0, :cond_0

    const/4 v0, 0x6

    if-eq v7, v0, :cond_0

    const/4 v0, 0x5

    if-ne v7, v0, :cond_1

    .line 1081
    :cond_0
    iget v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mLastRoamingPrefef:I

    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1082
    const/4 v11, 0x1

    .line 1083
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO need to check for CDMA mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1
    if-ne v7, v12, :cond_2

    if-nez v11, :cond_2

    const/4 v0, 0x3

    if-ne v7, v0, :cond_11

    .line 1092
    :cond_2
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO change preferredNetworkType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    packed-switch v7, :pswitch_data_0

    .line 1254
    :pswitch_0
    const/4 v9, 0x0

    .line 1257
    .local v9, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v7}, Lcom/android/phone/HtcWorldPhoneOptions;->UpdatePreferredNetworkModeSummary(I)V

    .line 1259
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1263
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1266
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    const/16 v1, 0xa

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->sendEmptyMessageDelayed(IJ)Z

    .line 1269
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO change preferredNetworkType complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .end local v9           #modemNetworkMode:I
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 1099
    :pswitch_1
    invoke-virtual {v8}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1101
    const/4 v9, 0x7

    .line 1104
    .restart local v9       #modemNetworkMode:I
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-eqz v0, :cond_3

    .line 1105
    const/16 v9, 0xa

    .line 1107
    :cond_3
    invoke-virtual {v8, v9}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto :goto_0

    .line 1113
    .end local v9           #modemNetworkMode:I
    :cond_4
    const v10, 0x7f0e0166

    .line 1114
    .local v10, msgDialogId:I
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 1115
    const v10, 0x7f0e0167

    .line 1118
    :cond_5
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1120
    const/4 v0, 0x4

    if-ne v12, v0, :cond_6

    .line 1122
    const/4 v0, 0x1

    goto :goto_2

    .line 1124
    :cond_6
    const/4 v9, 0x4

    .line 1125
    .restart local v9       #modemNetworkMode:I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1132
    .end local v9           #modemNetworkMode:I
    .end local v10           #msgDialogId:I
    :pswitch_2
    invoke-virtual {v8}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1134
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-eqz v0, :cond_9

    .line 1140
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->isForNelTesting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1141
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "Will Pop Up GSM Network Selection !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-direct {p0, v12}, Lcom/android/phone/HtcWorldPhoneOptions;->optionsOfGsmNetworkMode(I)V

    .line 1143
    const/4 v0, 0x1

    goto :goto_2

    .line 1149
    :cond_7
    invoke-virtual {v8}, Lcom/android/phone/WorldPhoneModeSelection;->getHtcSimType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 1151
    const/4 v9, 0x3

    .line 1152
    .restart local v9       #modemNetworkMode:I
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1156
    .end local v9           #modemNetworkMode:I
    :cond_8
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e016b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1158
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1163
    :cond_9
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    if-eqz v0, :cond_a

    .line 1164
    const/4 v9, 0x3

    .line 1165
    .restart local v9       #modemNetworkMode:I
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1170
    .end local v9           #modemNetworkMode:I
    :cond_a
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "Will Pop Up GSM Network Selection !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-direct {p0, v12}, Lcom/android/phone/HtcWorldPhoneOptions;->optionsOfGsmNetworkMode(I)V

    .line 1172
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1179
    :cond_b
    const v10, 0x7f0e0166

    .line 1180
    .restart local v10       #msgDialogId:I
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "project:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    .line 1182
    const v10, 0x7f0e0168

    .line 1185
    :cond_c
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1187
    const/4 v0, 0x4

    if-ne v12, v0, :cond_d

    .line 1189
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1191
    :cond_d
    const/4 v9, 0x4

    .line 1192
    .restart local v9       #modemNetworkMode:I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1198
    .end local v9           #modemNetworkMode:I
    .end local v10           #msgDialogId:I
    :pswitch_3
    const/4 v9, 0x6

    .line 1199
    .restart local v9       #modemNetworkMode:I
    goto/16 :goto_0

    .line 1201
    .end local v9           #modemNetworkMode:I
    :pswitch_4
    const/4 v9, 0x5

    .line 1202
    .restart local v9       #modemNetworkMode:I
    goto/16 :goto_0

    .line 1204
    .end local v9           #modemNetworkMode:I
    :pswitch_5
    invoke-virtual {v8}, Lcom/android/phone/WorldPhoneModeSelection;->getHtcSimType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1206
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e016b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1208
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1210
    :cond_e
    const/4 v9, 0x4

    .line 1211
    .restart local v9       #modemNetworkMode:I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1214
    .end local v9           #modemNetworkMode:I
    :pswitch_6
    const/4 v9, 0x2

    .line 1215
    .restart local v9       #modemNetworkMode:I
    goto/16 :goto_0

    .line 1217
    .end local v9           #modemNetworkMode:I
    :pswitch_7
    const/4 v9, 0x1

    .line 1218
    .restart local v9       #modemNetworkMode:I
    goto/16 :goto_0

    .line 1220
    .end local v9           #modemNetworkMode:I
    :pswitch_8
    const/4 v9, 0x0

    .line 1221
    .restart local v9       #modemNetworkMode:I
    goto/16 :goto_0

    .line 1224
    .end local v9           #modemNetworkMode:I
    :pswitch_9
    const/16 v9, 0x8

    .line 1225
    .restart local v9       #modemNetworkMode:I
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1233
    .end local v9           #modemNetworkMode:I
    :pswitch_a
    invoke-virtual {v8}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1235
    const/16 v9, 0xb

    .line 1236
    .restart local v9       #modemNetworkMode:I
    invoke-virtual {v8, v9}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1241
    .end local v9           #modemNetworkMode:I
    :cond_f
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0166

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1243
    const/4 v0, 0x4

    if-ne v12, v0, :cond_10

    .line 1245
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1247
    :cond_10
    const/4 v9, 0x4

    .line 1248
    .restart local v9       #modemNetworkMode:I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    goto/16 :goto_0

    .line 1272
    .end local v9           #modemNetworkMode:I
    :cond_11
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO no need to change preferredNetworkType"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1094
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_a
    .end packed-switch
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 1417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1419
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1420
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v6

    .line 1421
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1425
    .local v1, settingsRoamingMode:I
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1430
    :cond_0
    if-eq v2, v1, :cond_1

    .line 1431
    move v1, v2

    .line 1433
    const-string v3, "phone/settings_HtcWorldPhoneOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCdmaRoamingPreference("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1440
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1442
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->SyncRoamingPreference()V

    .line 1444
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    invoke-virtual {v4, v6}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1457
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    :goto_0
    return-void

    .line 1447
    .restart local v1       #settingsRoamingMode:I
    .restart local v2       #statusCdmaRoamingMode:I
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/phone/HtcWorldPhoneOptions;->notifyRoamingModeChanged(I)V

    .line 1449
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    invoke-virtual {v4, v6}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 1453
    :cond_4
    const-string v3, "phone/settings_HtcWorldPhoneOptions"

    const-string v4, "reset cdma roaming mode to default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->resetCdmaRoamingModeToDefault()V

    goto :goto_0
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1396
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1398
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1400
    const/4 v1, -0x1

    .line 1401
    .local v1, statusCdmaRoamingMode:I
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v1

    .line 1402
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1404
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1408
    invoke-direct {p0, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->notifyRoamingModeChanged(I)V

    .line 1414
    .end local v1           #statusCdmaRoamingMode:I
    :cond_1
    :goto_0
    return-void

    .line 1411
    .restart local v1       #statusCdmaRoamingMode:I
    :cond_2
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO getlastRoamingPreference -> out of rang("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isForNelTesting()Z
    .locals 5

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, ret:Z
    const-string v2, "ro.nel"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, result:Ljava/lang/String;
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO ro.nel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    const-string v3, "OoO for nel testing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v1, 0x1

    .line 317
    :cond_0
    return v1
.end method

.method private notifyRoamingModeChanged(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent_of_roaming_preference_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "roaming_mode_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1465
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1467
    return-void
.end method

.method private optionsOfGsmNetworkMode(I)V
    .locals 6
    .parameter "currentNetworkType"

    .prologue
    .line 812
    move v0, p1

    .line 813
    .local v0, defaultIndex:I
    const-string v3, "phone/settings_HtcWorldPhoneOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO show option to set GSM Network Mode by default ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    packed-switch v0, :pswitch_data_0

    .line 875
    :goto_0
    :pswitch_0
    const-string v3, "phone/settings_HtcWorldPhoneOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO will show option to set GSM Network Mode by default ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const v1, 0x7f070012

    .line 887
    .local v1, resOfChoiceItems:I
    const v2, 0x7f0e00f2

    .line 888
    .local v2, resOfTitle:I
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 889
    const v1, 0x7f070020

    .line 899
    :cond_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/HtcWorldPhoneOptions$4;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions$4;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;I)V

    invoke-virtual {v3, v1, v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/phone/HtcWorldPhoneOptions$3;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions$3;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;I)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 964
    return-void

    .line 850
    .end local v1           #resOfChoiceItems:I
    .end local v2           #resOfTitle:I
    :pswitch_1
    const/4 v0, 0x0

    .line 858
    goto :goto_0

    .line 860
    :pswitch_2
    const/4 v0, 0x0

    .line 861
    goto :goto_0

    .line 863
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private quickSelectPreferredNetworkMode(I)V
    .locals 4
    .parameter "idexOfMode"

    .prologue
    .line 1012
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO quickSelectPreferredNetworkMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mQuickShow_preferredNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-boolean v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mQuickShow_preferredNetwork:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mQuickShow_preferredNetwork:Z

    .line 1018
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000e

    new-instance v2, Lcom/android/phone/HtcWorldPhoneOptions$6;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcWorldPhoneOptions$6;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/HtcWorldPhoneOptions$5;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcWorldPhoneOptions$5;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1053
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    const/16 v1, 0xb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->sendEmptyMessageDelayed(IJ)Z

    .line 1057
    :cond_0
    return-void
.end method

.method private resetCdmaRoamingModeToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1478
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1482
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1485
    return-void
.end method

.method private reversePhoneTypeOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 351
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 352
    .local v0, phoneType:I
    packed-switch v0, :pswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_2

    .line 358
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "cdma_options_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 366
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_3

    .line 367
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 369
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_3

    .line 370
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_5

    .line 376
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_4

    .line 377
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "button_cdma_more_expand_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_4

    .line 378
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 384
    :cond_5
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 387
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 393
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_6

    .line 394
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 396
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_6

    .line 397
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 399
    :cond_6
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_8

    .line 402
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_7

    .line 403
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "gsm_options_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_7

    .line 404
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 408
    :cond_7
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 411
    :cond_8
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_9

    .line 412
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 414
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_9

    .line 415
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 417
    :cond_9
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_0

    .line 420
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v3, :cond_a

    .line 421
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "button_gsm_more_expand_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_a

    .line 422
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 426
    :cond_a
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTargetRoamingPreference(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 1328
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1329
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cdma_roaming_preference_key"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 1330
    .local v0, isOK:Z
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTargetRoamingPreference("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    return-void
.end method

.method private setUniformNetworkTypeValue(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-nez v1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 475
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 536
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :pswitch_3
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 509
    const/4 v0, -0x1

    .line 510
    .local v0, value:I
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 518
    :goto_1
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :pswitch_5
    const/16 v0, 0x3e8

    .line 513
    goto :goto_1

    .line 515
    :pswitch_6
    const/16 v0, 0x3ea

    goto :goto_1

    .line 524
    .end local v0           #value:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 510
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected create()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 116
    iget v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mCallOption:I

    if-nez v2, :cond_8

    .line 117
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v3, 0x7f05001e

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 123
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    .line 126
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "button_global_mode_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 130
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    if-ne v2, v6, :cond_2

    .line 132
    iget v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mCallOption:I

    if-nez v2, :cond_0

    .line 133
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePreference BUTTON_GLOBAL_KEY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v3, 0x7f0e01c7

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setTitle(I)V

    .line 139
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v3, 0x7f0e01c8

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setDialogTitle(I)V

    .line 140
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 141
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, settingsRoamingMode:I
    invoke-direct {p0, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->setTargetRoamingPreference(I)V

    .line 155
    .end local v1           #settingsRoamingMode:I
    :cond_2
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v2, v6, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 158
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "cdma_options_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 175
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "gsm_options_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 177
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "button_cdma_more_expand_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 178
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "button_gsm_more_expand_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsCallOptions:Lcom/htc/preference/HtcPreferenceScreen;

    .line 180
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    if-ne v2, v6, :cond_6

    .line 181
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v2, :cond_5

    .line 182
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePreference BUTTON_CDMA_OPTIONS_KEY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonCdmaOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_5
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v2, :cond_6

    .line 186
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePreference BUTTON_GSM_OPTIONS_KEY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonGsmUmtsOptions:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v2

    if-ne v2, v7, :cond_7

    .line 197
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, settingsNetworkMode:I
    invoke-direct {p0, v0}, Lcom/android/phone/HtcWorldPhoneOptions;->setTargetRoamingPreference(I)V

    .line 204
    .end local v0           #settingsNetworkMode:I
    :cond_7
    return-void

    .line 119
    :cond_8
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0
.end method

.method protected internalResolveIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1300
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO internalResolveIntent: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->QUICK_START:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    .line 1304
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->SETTINGS_PREFERR_NETWORK_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO quickStart preferredNetwork Selector "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mQuickShow_preferredNetwork:Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 456
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 970
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "button_global_mode_key"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 971
    const-string v1, "preferenceChange: return BUTTON_GLOBAL_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->log(Ljava/lang/String;)V

    .line 975
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 979
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    if-ne v1, v2, :cond_0

    .line 981
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 982
    .local v0, index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange getIndex("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->log(Ljava/lang/String;)V

    .line 984
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->getTargetRoamingPreference()I

    move-result v1

    iput v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mLastRoamingPrefef:I

    .line 986
    packed-switch v0, :pswitch_data_0

    .line 999
    .end local v0           #index:I
    .end local p2
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/phone/HtcWorldPhoneOptions;->handlePreferredNetworkModeChange(Ljava/lang/Object;)Z

    move v1, v2

    .line 1003
    :goto_1
    return v1

    .line 988
    .restart local v0       #index:I
    .restart local p2
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/phone/HtcWorldPhoneOptions;->setTargetRoamingPreference(I)V

    .line 989
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 990
    .local p2, objValue:Ljava/lang/String;
    goto :goto_0

    .line 992
    .local p2, objValue:Ljava/lang/Object;
    :pswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->setTargetRoamingPreference(I)V

    .line 993
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .local p2, objValue:Ljava/lang/String;
    goto :goto_0

    .end local v0           #index:I
    .local p2, objValue:Ljava/lang/Object;
    :cond_1
    move v1, v3

    .line 1003
    goto :goto_1

    .line 986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pause()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->intentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->intentFilter:Landroid/content/IntentFilter;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 329
    :cond_1
    return-void
.end method

.method public preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_global_mode_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, settingsNetworkMode:I
    invoke-direct {p0, v0}, Lcom/android/phone/HtcWorldPhoneOptions;->setUniformNetworkTypeValue(I)V

    .line 446
    const-string v1, "phone/settings_HtcWorldPhoneOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO setValue onPreferenceTreeClick ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v1, 0x1

    .line 452
    .end local v0           #settingsNetworkMode:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    if-nez v1, :cond_1

    .line 216
    new-instance v1, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;Lcom/android/phone/HtcWorldPhoneOptions$1;)V

    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 219
    .local v0, phoneType:I
    packed-switch v0, :pswitch_data_0

    .line 231
    const-string v1, "phone/settings_HtcWorldPhoneOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: get Phone Type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->reversePhoneTypeOptions()V

    .line 236
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->internalResolveIntent(Landroid/content/Intent;)V

    .line 240
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    if-ne v1, v5, :cond_4

    .line 242
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 254
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->intentFilter:Landroid/content/IntentFilter;

    .line 255
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v1, v5, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions;->checkForNetworkSelector()V

    .line 260
    :cond_2
    return-void

    .line 221
    :pswitch_0
    const-string v1, "phone/settings_HtcWorldPhoneOptions"

    const-string v2, "onResume: get Phone Type (CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :pswitch_1
    const-string v1, "phone/settings_HtcWorldPhoneOptions"

    const-string v2, "onResume: get Phone Type (GSM"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :pswitch_2
    const-string v1, "phone/settings_HtcWorldPhoneOptions"

    const-string v2, "onResume: get Phone Type (NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    invoke-virtual {v2, v4}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1

    .line 249
    :cond_4
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    invoke-virtual {v2, v4}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
