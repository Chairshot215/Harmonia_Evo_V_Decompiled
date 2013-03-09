.class public Lcom/android/phone/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaOptions$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_CALL_GUARD:Ljava/lang/String; = "button_roaming_call_guard"

.field private static final BUTTON_CDMA_APN_EXPAND_KEY:Ljava/lang/String; = "cdma_button_apn_key"

.field private static final BUTTON_CDMA_LTE_ROAMING_KEY:Ljava/lang/String; = "network_mode_key"

.field private static final BUTTON_CDMA_ROAMING_KEY:Ljava/lang/String; = "cdma_roaming_mode_key"

.field private static final BUTTON_CDMA_SUBSCRIPTION_KEY:Ljava/lang/String; = "cdma_subscription_key"

.field private static final BUTTON_CDMA_SYSTEM_SELECT_KEY:Ljava/lang/String; = "cdma_system_select_key"

.field private static final BUTTON_CDMA_UPDATE_PRL:Ljava/lang/String; = "button_update_prl_key"

.field private static final BUTTON_DATA_ROAM_GUARD2_KEY:Ljava/lang/String; = "data_roam_guard2_key"

.field private static final BUTTON_DATA_ROAM_GUARD_KEY:Ljava/lang/String; = "data_roam_guard_key"

.field private static final BUTTON_ROAMING_GUARD_LIST:Ljava/lang/String; = "button_roaming_guard_list"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x3ea

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaOptions"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11


# instance fields
.field private mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonCDMAAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

.field private mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

.field private mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonPrlUpdater:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonRoamingGuardList:Lcom/htc/preference/HtcPreferenceScreen;

.field private mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 75
    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonRoamingGuardList:Lcom/htc/preference/HtcPreferenceScreen;

    .line 76
    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 77
    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonPrlUpdater:Lcom/htc/preference/HtcPreferenceScreen;

    .line 78
    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCDMAAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 81
    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    .line 619
    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    .line 85
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 86
    iput-object p2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->create()V

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaOptions;)Lcom/android/phone/CdmaRoamingListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private deviceSupportsNvAndRuim()Z
    .locals 9

    .prologue
    .line 326
    const-string v7, "ril.subscription.types"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, subscriptionsSupported:Ljava/lang/String;
    const/4 v3, 0x0

    .line 328
    .local v3, nvSupported:Z
    const/4 v4, 0x0

    .line 330
    .local v4, ruimSupported:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 331
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 334
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 335
    .local v5, subscriptionType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 336
    const-string v7, "NV"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 337
    const/4 v3, 0x1

    .line 339
    :cond_0
    const-string v7, "RUIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    const/4 v4, 0x1

    .line 334
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #subscriptionType:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ruimSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 347
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected create()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 94
    new-instance v0, Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    const/16 v2, 0x3ea

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "cdma_roaming_mode_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaRoamingListPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    .line 106
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_PREFERRED_ROAMING:Z

    if-ne v0, v5, :cond_b

    .line 108
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-static {v6, v6}, Lcom/android/phone/HtcFeatureList;->getCDMARoamingInfo(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaRoamingListPreference;->setTitle(I)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-static {v5, v6}, Lcom/android/phone/HtcFeatureList;->getCDMARoamingInfo(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaRoamingListPreference;->setDialogTitle(I)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPreferredOnly()I

    move-result v1

    invoke-static {v7, v1}, Lcom/android/phone/HtcFeatureList;->getCDMARoamingInfo(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaRoamingListPreference;->setEntries(I)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPreferredOnly()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/HtcFeatureList;->getCDMARoamingInfo(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaRoamingListPreference;->setEntryValues(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_roaming_call_guard"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 121
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_VOICE_ROAMING:Z

    if-eqz v0, :cond_3

    .line 136
    :cond_2
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO remove BUTTON_CALL_GUARD ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard2:Z

    if-ne v0, v5, :cond_4

    .line 143
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO remove BUTTON_CALL_GUARD ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_roaming_guard_list"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonRoamingGuardList:Lcom/htc/preference/HtcPreferenceScreen;

    .line 150
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD3:Z

    if-eq v0, v5, :cond_5

    .line 151
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonRoamingGuardList:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_c

    .line 152
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove BUTTON_ROAMING_GUARD_LIST( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonRoamingGuardList:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "data_roam_guard_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    .line 164
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "data_roam_guard2_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 169
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-eqz v0, :cond_6

    .line 170
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v0, :cond_d

    .line 171
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-interface {v0, v1, v7, v4}, Lcom/android/internal/telephony/Phone;->registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 180
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_7

    .line 181
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v0, :cond_e

    .line 182
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-interface {v0, v1, v7, v4}, Lcom/android/internal/telephony/Phone;->registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_apn_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 195
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_APN_SETTINGS:Z

    if-eq v0, v5, :cond_8

    .line 196
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_8

    .line 197
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO remove BUTTON_APN_EXPAND_KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "cdma_button_apn_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCDMAAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 203
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_9

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_9

    .line 207
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCDMAAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_9

    .line 208
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO remove BUTTON_CDMA_APN_EXPAND_KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCDMAAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_update_prl_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonPrlUpdater:Lcom/htc/preference/HtcPreferenceScreen;

    .line 218
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_UPDATE_PRL:Z

    if-eq v0, v5, :cond_a

    .line 219
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonPrlUpdater:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_a

    .line 220
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO remove BUTTON_CDMA_UPDATE_PRL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonPrlUpdater:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "network_mode_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaLteRoamingListPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    .line 228
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_LTE_NETWORK_SELECTOR:Z

    if-eqz v0, :cond_10

    .line 229
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    if-eqz v0, :cond_f

    .line 230
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaLteRoamingListPreference;->setCdmaRoamingListPreference(Lcom/android/phone/CdmaRoamingListPreference;)V

    .line 244
    :goto_4
    return-void

    .line 114
    :cond_b
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove FEATURE_CDMA_PREFERRED_ROAMING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    :cond_c
    const-string v0, "CdmaOptions"

    const-string v1, "BUTTON_ROAMING_GUARD_LIST is not found !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 176
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 177
    iput-object v4, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    goto/16 :goto_2

    .line 186
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 187
    iput-object v4, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_3

    .line 232
    :cond_f
    const-string v0, "CdmaOptions"

    const-string v1, "OoO BUTTON_CDMA_LTE_ROAMING_KEY is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 235
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    if-eqz v0, :cond_11

    .line 236
    const-string v0, "CdmaOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO remove BUTTON_CDMA_LTE_ROAMING_KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object v4, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    goto :goto_4

    .line 240
    :cond_11
    const-string v0, "CdmaOptions"

    const-string v1, "OoO remove BUTTON_CDMA_LTE_ROAMING_KEY is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V

    .line 314
    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    .line 316
    :cond_0
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V

    .line 318
    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneModeChanged(Landroid/os/Handler;)V

    .line 322
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 525
    const-string v0, "CdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 489
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v1, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 498
    .local v0, buttonDataRoamGuard:I
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    invoke-static {v0}, Lcom/android/phone/HtcCdmaPhoneApp;->userSetDataRoamGuardTo(I)V

    .line 505
    .end local v0           #buttonDataRoamGuard:I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const v7, 0x1040014

    const v6, 0x1040013

    const v5, 0x1040009

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 351
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cdma_system_select_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    const-string v2, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    move v0, v1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cdma_subscription_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    const-string v2, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    move v0, v1

    .line 357
    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cdma_roaming_mode_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    const-string v2, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    move v0, v1

    .line 367
    goto :goto_0

    .line 374
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    if-ne p1, v2, :cond_4

    .line 375
    const-string v2, "preferenceTreeClick: return BUTTON_CDMA_LTE_ROAMING_KEY true"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    move v0, v1

    .line 376
    goto :goto_0

    .line 385
    :cond_4
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_5

    move v0, v1

    .line 388
    goto :goto_0

    .line 389
    :cond_5
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v2, :cond_7

    .line 392
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 394
    .local v0, buttonDataRoamGuard:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming_guard"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    invoke-static {v0}, Lcom/android/phone/HtcCdmaPhoneApp;->userSetDataRoamGuardTo(I)V

    move v0, v1

    .line 398
    goto :goto_0

    .line 392
    .end local v0           #buttonDataRoamGuard:I
    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    .line 402
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 404
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_9

    .line 405
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 406
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CdmaOptions$3;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaOptions$3;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v2, v6, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CdmaOptions$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaOptions$2;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v2, v5, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CdmaOptions$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaOptions$1;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_2
    move v0, v1

    .line 479
    goto/16 :goto_0

    .line 438
    :cond_8
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CdmaOptions$6;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaOptions$6;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v2, v6, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CdmaOptions$5;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaOptions$5;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v2, v5, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CdmaOptions$4;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaOptions$4;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    .line 471
    :cond_9
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 472
    const-string v2, "CdmaOptions"

    const-string v3, "Call guard enable "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPhoneApp;->setCdmaCallGuardSetting(Z)V

    goto :goto_2

    .line 475
    :cond_a
    const-string v2, "CdmaOptions"

    const-string v3, "Call guard disable "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {v0}, Lcom/android/phone/HtcCdmaPhoneApp;->setCdmaCallGuardSetting(Z)V

    goto :goto_2
.end method

.method protected resume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-eqz v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, dataRoamSetting:I
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming_guard"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    .end local v0           #dataRoamSetting:I
    :cond_0
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 262
    const/4 v0, 0x0

    .line 264
    .restart local v0       #dataRoamSetting:I
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming_guard"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 268
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 271
    .end local v0           #dataRoamSetting:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_2

    .line 272
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->htcCdmaCallGuardSetting()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 273
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 281
    :cond_2
    :goto_3
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 283
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    if-eqz v1, :cond_3

    .line 284
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaRoamingListPreference;->setEnabled(Z)V

    .line 296
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    if-eqz v1, :cond_4

    .line 298
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 299
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaLteRoamingListPreference;->setEnabled(Z)V

    .line 309
    :cond_4
    :goto_5
    return-void

    .restart local v0       #dataRoamSetting:I
    :cond_5
    move v1, v3

    .line 268
    goto :goto_2

    .line 275
    .end local v0           #dataRoamSetting:I
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCallGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 286
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaRoamingListPreference;->setEnabled(Z)V

    goto :goto_4

    .line 301
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaLteRoamingListPreference;->setEnabled(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    invoke-virtual {v1}, Lcom/android/phone/CdmaLteRoamingListPreference;->getNetworkType()V

    .line 303
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaLteRoam:Lcom/android/phone/CdmaLteRoamingListPreference;

    iget v2, v2, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaLteRoamingListPreference;->updateGUI(I)V

    goto :goto_5

    .line 266
    .restart local v0       #dataRoamSetting:I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 256
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public setButtonRoam(Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 598
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard:Lcom/htc/preference/HtcListPreference;

    const-string v1, "button_roaming_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setDependency(Ljava/lang/String;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonDataRoamGuard2:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "button_roaming_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 605
    :cond_1
    return-void
.end method

.method public showDialog(Lcom/htc/preference/HtcPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_roaming_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaRoamingListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
