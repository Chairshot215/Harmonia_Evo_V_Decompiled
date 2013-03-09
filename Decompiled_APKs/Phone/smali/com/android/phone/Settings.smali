.class public Lcom/android/phone/Settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$SettingsBroadcastReceiver;,
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_ADVANCED_SETTINGS_KDDI:Ljava/lang/String; = "advanced_settings_key"

.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_CARRIER_SELECT_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_DATA_USAGE_KEY:Ljava/lang/String; = "button_data_usage_key"

.field private static final BUTTON_NATIONAL_ROAMING_KEY:Ljava/lang/String; = "button_national_roaming_key"

.field private static final BUTTON_PREFERED_GSM_UMTS_NETWORK_MODE:Ljava/lang/String; = "preferred_gsm_umts_network_mode_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final BUTTON_ROAMING_SOUND_KEY:Ljava/lang/String; = "button_roaming_sound_key"

.field private static final BUTTON_SMART_ROAMING_KEY:Ljava/lang/String; = "button_smart_data_roaming_key"

.field private static final DBG:Z = true

.field private static final EVENT_SMART_DATA_ROAMING_REQUEST:I = 0x37

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field private static final ROAMING_OPTIONS_AUTOMATIC_VALUEINDEX:I = 0x2

.field private static final ROAMING_OPTIONS_NATIONAL_VALUEINDEX:I = 0x1

.field private static final ROAMING_OPTIONS_NEVER_VALUEINDEX:I = 0x0

.field private static final iface:Ljava/lang/String; = "rmnet0"

.field public static mUserCancelDataRoamingGuard:Z

.field static final preferredNetworkMode:I


# instance fields
.field private carrierSelect:Lcom/htc/preference/HtcPreference;

.field private mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonDataUsage:Lcom/htc/preference/HtcPreference;

.field private mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

.field private mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

.field private mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickSmartDataRoaming:Z

.field private mClickSmartRoaming:Z

.field private mClickedPreference:Lcom/htc/preference/HtcPreference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mDialogShowing:Z

.field mEnableNationalRoaming:Z

.field private mForeground:Z

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

.field mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

.field mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

.field private mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

.field private mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

.field mNetworkModeIdx:[Ljava/lang/CharSequence;

.field mNetworkModeList:[Ljava/lang/CharSequence;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowSmartButton:Z

.field private mSmartDataRoamingMode:I

.field private mSmartDataRoamingSuccess:Z

.field private mSwitch:Z

.field setPreferNetworkDoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z

    .line 158
    new-instance v0, Lcom/android/phone/Settings$SettingsBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Settings$SettingsBroadcastReceiver;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v0, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    .line 165
    iput-object v1, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    .line 177
    iput-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    .line 1713
    iput-object v1, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    return-void
.end method

.method private UpdatePreferredGsmUmtsNetworkModeSummary(I)V
    .locals 4
    .parameter "NetworkMode"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1519
    iget-object v0, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-nez v0, :cond_3

    .line 1521
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to update prefer mode summary - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 1598
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1521
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1529
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1530
    packed-switch p1, :pswitch_data_0

    .line 1552
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1533
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1537
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1541
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1545
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1549
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1556
    :cond_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v0, v3, :cond_5

    .line 1557
    packed-switch p1, :pswitch_data_1

    .line 1572
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1560
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1565
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1569
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1575
    :cond_5
    packed-switch p1, :pswitch_data_2

    .line 1593
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1578
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1582
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1586
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1590
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1557
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1575
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-nez v0, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1464
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1508
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1467
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1470
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1473
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1476
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1479
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1482
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1485
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1489
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1492
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: LTE only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1497
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA/EvDo/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1500
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: Global/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1503
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1464
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredGsmUmtsNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mSwitch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/Settings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mForeground:Z

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method private getRoamingSoundEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1625
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_sound_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1627
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1625
    goto :goto_0

    .line 1626
    :catch_0
    move-exception v0

    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v2

    .line 1627
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1621
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void
.end method

.method private showRoamingWarning()Z
    .locals 3

    .prologue
    .line 1672
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, mccmnc:Ljava/lang/String;
    const-string v1, "22299"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1674
    const/4 v1, 0x1

    .line 1675
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateOperatorInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1681
    iget-object v3, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_2

    .line 1682
    const-string v0, ""

    .line 1683
    .local v0, alpha:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 1684
    .local v2, operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-nez v3, :cond_3

    .line 1685
    :cond_0
    const v3, 0x7f0e02d1

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1698
    :goto_0
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    if-ne v3, v6, :cond_1

    .line 1700
    invoke-static {}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance()Lcom/android/phone/WorldPhoneModeSelection;

    move-result-object v1

    .line 1701
    .local v1, modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    invoke-virtual {v1}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1702
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1706
    .end local v1           #modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1708
    .end local v0           #alpha:Ljava/lang/String;
    .end local v2           #operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_2
    return-void

    .line 1687
    .restart local v0       #alpha:Ljava/lang/String;
    .restart local v2       #operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_3
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v3, :cond_4

    .line 1688
    const-string v3, "%s(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1689
    :cond_4
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-nez v3, :cond_5

    .line 1690
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1691
    :cond_5
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v3, :cond_6

    .line 1692
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1694
    :cond_6
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1664
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 1667
    :cond_0
    :goto_0
    return v1

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getNetworkManualModeEnabled()Z
    .locals 5

    .prologue
    .line 1645
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1646
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1647
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1649
    .local v1, networkSelection:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1603
    packed-switch p1, :pswitch_data_0

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1605
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1607
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    .line 1603
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 184
    iput-boolean v4, p0, Lcom/android/phone/Settings;->mDialogShowing:Z

    .line 185
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 187
    iput-boolean v5, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 188
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 189
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 192
    .local v1, netRoaming:Z
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 193
    const-string v3, "NetworkSettings"

    const-string v4, "requestGetSmartDataRoamingStatus()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 195
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setRadioSwitch(Z)V

    .line 196
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->requestGetSmartDataRoamingStatus(Z)V

    .line 197
    iput-boolean v5, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 213
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #netRoaming:Z
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 437
    invoke-super/range {p0 .. p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 440
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_OPTIONS:Z

    if-eqz v11, :cond_0

    .line 441
    new-instance v11, Lcom/android/phone/HtcCdmaGloableRoamingOption;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, p0, v12, v13}, Lcom/android/phone/HtcCdmaGloableRoamingOption;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;I)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    .line 446
    :cond_0
    const v11, 0x7f050023

    invoke-virtual {p0, v11}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 448
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 449
    new-instance v11, Lcom/android/phone/Settings$MyHandler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 452
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    .line 454
    .local v7, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x31

    if-ne v11, v12, :cond_10

    .line 455
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    .line 456
    const-string v11, "button_national_roaming_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/phone/NationalRoamingList;

    iput-object v11, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    .line 457
    iget-object v11, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v11, p0}, Lcom/android/phone/NationalRoamingList;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 458
    invoke-direct {p0}, Lcom/android/phone/Settings;->showRoamingWarning()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 459
    iget-object v11, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/NationalRoamingList;->setEnablePopup(Z)V

    .line 462
    :cond_1
    const-string v11, "button_roaming_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 463
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 491
    :cond_2
    :goto_0
    const-string v11, "preferred_network_mode_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 493
    const-string v11, "button_data_usage_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Lcom/htc/preference/HtcPreference;

    .line 495
    const-string v11, "button_smart_data_roaming_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    .line 496
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 498
    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "preferred_network_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 504
    .local v8, settingsNetworkMode:I
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v11, :cond_14

    .line 508
    new-instance v11, Lcom/android/phone/HtcWorldPhoneOptions;

    const/4 v12, 0x1

    invoke-direct {v11, p0, v7, v12}, Lcom/android/phone/HtcWorldPhoneOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;I)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    .line 514
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 515
    new-instance v11, Lcom/android/phone/CdmaOptions;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/CdmaOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 522
    :cond_3
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD3:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 523
    new-instance v11, Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/HtcCdmaRoamingOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    .line 525
    const-string v11, "NetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove BUTTON_ROAMING_KEY("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v13}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v11, Lcom/android/phone/HtcGsmRoamingPref;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/HtcGsmRoamingPref;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    .line 531
    :cond_4
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 533
    new-instance v11, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 535
    const-string v11, "button_apn_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 536
    const-string v11, "preferred_gsm_umts_network_mode_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 538
    const-string v11, "button_carrier_sel_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    .line 540
    iget-object v11, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const v12, 0x7f0e04aa

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 542
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v11, :cond_5

    .line 543
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 544
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 547
    :cond_5
    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    .line 548
    const-string v11, "NetworkSettings"

    const-string v12, "Not a GSM phone"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 550
    iget-object v11, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 566
    :cond_6
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.setprefernetwork.done"

    invoke-direct {v3, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 567
    .local v3, intentfilter:Landroid/content/IntentFilter;
    new-instance v11, Lcom/android/phone/Settings$1;

    invoke-direct {v11, p0}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->setPreferNetworkDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 593
    iget-object v11, p0, Lcom/android/phone/Settings;->setPreferNetworkDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/android/phone/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    .end local v3           #intentfilter:Landroid/content/IntentFilter;
    :cond_7
    :goto_2
    iget-boolean v11, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v11, :cond_8

    .line 696
    const-string v11, "button_roaming_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 697
    :cond_8
    sget-boolean v11, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v11, :cond_9

    .line 698
    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v12, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    const/16 v13, 0x37

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lcom/android/internal/telephony/Phone;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 701
    :cond_9
    const-string v11, "button_roaming_sound_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 705
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAMING_SOUND:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_a

    .line 706
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_a

    .line 707
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 708
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 714
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTablet()Z

    move-result v11

    if-nez v11, :cond_b

    .line 715
    const v11, 0x7f050024

    invoke-virtual {p0, v11}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 723
    :cond_b
    sget-boolean v11, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v11, :cond_22

    .line 724
    new-instance v1, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 725
    .local v1, airplaneMode:Landroid/content/IntentFilter;
    iget-object v11, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v1}, Lcom/android/phone/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 738
    .end local v1           #airplaneMode:Landroid/content/IntentFilter;
    :goto_3
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v11, :cond_c

    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v11, :cond_23

    :cond_c
    sget-boolean v11, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    if-eqz v11, :cond_23

    .line 740
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_d

    .line 741
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 751
    :cond_d
    :goto_4
    const-string v11, "throttle"

    invoke-virtual {p0, v11}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ThrottleManager;

    .line 752
    .local v10, tm:Landroid/net/ThrottleManager;
    new-instance v11, Lcom/android/phone/DataUsageListener;

    iget-object v12, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Lcom/htc/preference/HtcPreference;

    invoke-direct {v11, p0, v12, v7}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 757
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_MANUAL_NAI:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    .line 758
    const-string v11, "advanced_settings_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 759
    .local v0, advancedSettings:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_e

    .line 760
    const-string v11, "NetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove BUTTON_ADVANCED_SETTINGS_KDDI"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .end local v0           #advancedSettings:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_e
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_OPTIONS:Z

    if-eqz v11, :cond_f

    .line 767
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 770
    :cond_f
    return-void

    .line 466
    .end local v8           #settingsNetworkMode:I
    .end local v10           #tm:Landroid/net/ThrottleManager;
    :cond_10
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    .line 468
    const-string v11, "button_roaming_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 469
    const-string v11, "button_national_roaming_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/phone/NationalRoamingList;

    iput-object v11, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    .line 470
    iget-object v11, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 471
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v12, 0x2

    if-ne v11, v12, :cond_11

    .line 472
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_11

    .line 473
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const v12, 0x7f0e009f

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(I)V

    .line 474
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const v12, 0x7f0e00a0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(I)V

    .line 481
    :cond_11
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAMING_MODE_ENABLER:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 482
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_2

    .line 483
    const-string v11, "NetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove item Roaming Enabler( "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v13}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 553
    .restart local v8       #settingsNetworkMode:I
    :cond_12
    const-string v11, "NetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate: settingsNetworkMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v11, 0x4

    if-lt v8, v11, :cond_13

    .line 556
    iget-object v11, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 558
    :cond_13
    invoke-static {}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance()Lcom/android/phone/WorldPhoneModeSelection;

    move-result-object v4

    .line 559
    .local v4, modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    invoke-virtual {v4}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v11

    if-nez v11, :cond_6

    .line 560
    iget-object v11, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const v12, 0x7f0e04ab

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 561
    iget-object v11, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    if-eqz v11, :cond_6

    .line 562
    iget-object v11, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/HtcGsmRoamingPref;->setEnabled(Z)V

    goto/16 :goto_1

    .line 599
    .end local v4           #modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    :cond_14
    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 600
    .local v6, phoneType:I
    const/4 v11, 0x2

    if-ne v6, v11, :cond_17

    .line 601
    new-instance v11, Lcom/android/phone/CdmaOptions;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/CdmaOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 602
    iget-object v11, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v12, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaOptions;->setButtonRoam(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 607
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD3:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_15

    .line 608
    new-instance v11, Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/HtcCdmaRoamingOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    .line 610
    const-string v11, "NetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove BUTTON_ROAMING_KEY("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v13}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_15
    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v11, :cond_7

    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_EHRPD_SUPPORT:Z

    if-nez v11, :cond_16

    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v11, :cond_7

    .line 623
    :cond_16
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0xad

    if-eq v11, v12, :cond_7

    .line 624
    new-instance v11, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_2

    .line 628
    :cond_17
    const/4 v11, 0x1

    if-ne v6, v11, :cond_21

    .line 629
    new-instance v11, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v11, p0, v7}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v11, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 632
    const-string v11, "preferred_gsm_umts_network_mode_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    iput-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 635
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v11, :cond_18

    .line 637
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 638
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v12, 0x7f07002d

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 639
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v12, 0x7f07002e

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 662
    :cond_18
    :goto_5
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v11, :cond_19

    .line 663
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 666
    :cond_19
    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getBandCapability()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1a

    sget-boolean v11, Lcom/android/phone/HtcFeatureList;->FEATURE_GSM_UMTS_NETWORK_MODE:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xd2

    if-ne v11, v12, :cond_20

    .line 670
    :cond_1a
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v11, :cond_1b

    .line 671
    const-string v11, "NetworkSettings"

    const-string v12, "remove FEATURE_GSM_UMTS_NETWORK_MODE"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 680
    :cond_1b
    :goto_6
    const-string v11, "button_carrier_sel_key"

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    .line 684
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v11, :cond_7

    .line 685
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    .line 686
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/Settings;->mNetworkModeIdx:[Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 642
    :cond_1c
    const-string v11, "gsm.sim.state"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 644
    .local v9, simState:Ljava/lang/String;
    const-string v11, "READY"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 646
    const-string v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, operator:Ljava/lang/String;
    const-string v11, "ro.cid"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, cid:Ljava/lang/String;
    const-string v11, "VODAP304"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1d

    const-string v11, "21401"

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1f

    :cond_1d
    const-string v11, "VIDEO001"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1e

    const-string v11, "20404"

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1f

    :cond_1e
    const-string v11, "DAVE_001"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v11, "20404"

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 653
    :cond_1f
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v12, 0x7f07002f

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 654
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v12, 0x7f070030

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    goto/16 :goto_5

    .line 675
    .end local v2           #cid:Ljava/lang/String;
    .end local v5           #operator:Ljava/lang/String;
    .end local v9           #simState:Ljava/lang/String;
    :cond_20
    const-string v11, "NetworkSettings"

    const-string v12, "do not remove FEATURE_GSM_UMTS_NETWORK_MODE !"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v11, :cond_1b

    .line 677
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_6

    .line 690
    :cond_21
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 728
    .end local v6           #phoneType:I
    :cond_22
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    goto/16 :goto_3

    .line 745
    :cond_23
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_d

    .line 746
    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v12, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 989
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 990
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/CdmaOptions;->destroy()V

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaRoamingOptions;->destroy()V

    .line 1005
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 218
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 221
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 965
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 966
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v1, :cond_1

    .line 967
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Settings;->mForeground:Z

    .line 968
    iget-boolean v1, p0, Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getNetworkManualModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 970
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 974
    .end local v0           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v1}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 976
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v1, :cond_2

    .line 977
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v1}, Lcom/android/phone/HtcCdmaRoamingOptions;->pause()V

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    if-eqz v1, :cond_3

    .line 982
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v1}, Lcom/android/phone/HtcWorldPhoneOptions;->pause()V

    .line 985
    :cond_3
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1016
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v9, :cond_1

    .line 1019
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1021
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1022
    .local v1, buttonNetworkMode:I
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1025
    .local v6, settingsNetworkMode:I
    if-eq v1, v6, :cond_0

    .line 1027
    packed-switch v1, :pswitch_data_0

    .line 1070
    const/4 v5, 0x0

    .line 1072
    .local v5, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 1074
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1078
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v10, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v10, v11}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1189
    .end local v1           #buttonNetworkMode:I
    .end local v5           #modemNetworkMode:I
    .end local v6           #settingsNetworkMode:I
    :cond_0
    :goto_1
    return v11

    .line 1029
    .restart local v1       #buttonNetworkMode:I
    .restart local v6       #settingsNetworkMode:I
    :pswitch_0
    const/4 v5, 0x7

    .line 1030
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1032
    .end local v5           #modemNetworkMode:I
    :pswitch_1
    const/4 v5, 0x6

    .line 1033
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1035
    .end local v5           #modemNetworkMode:I
    :pswitch_2
    const/4 v5, 0x5

    .line 1036
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1038
    .end local v5           #modemNetworkMode:I
    :pswitch_3
    const/4 v5, 0x4

    .line 1039
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1041
    .end local v5           #modemNetworkMode:I
    :pswitch_4
    const/4 v5, 0x3

    .line 1042
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1044
    .end local v5           #modemNetworkMode:I
    :pswitch_5
    const/4 v5, 0x2

    .line 1045
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1047
    .end local v5           #modemNetworkMode:I
    :pswitch_6
    const/4 v5, 0x1

    .line 1048
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1050
    .end local v5           #modemNetworkMode:I
    :pswitch_7
    const/4 v5, 0x0

    .line 1051
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1054
    .end local v5           #modemNetworkMode:I
    :pswitch_8
    const/16 v5, 0x8

    .line 1055
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1057
    .end local v5           #modemNetworkMode:I
    :pswitch_9
    const/16 v5, 0x9

    .line 1058
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1060
    .end local v5           #modemNetworkMode:I
    :pswitch_a
    const/16 v5, 0xa

    .line 1061
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1063
    .end local v5           #modemNetworkMode:I
    :pswitch_b
    const/16 v5, 0xb

    .line 1064
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1066
    .end local v5           #modemNetworkMode:I
    :pswitch_c
    const/16 v5, 0xc

    .line 1067
    .restart local v5       #modemNetworkMode:I
    goto :goto_0

    .line 1083
    .end local v1           #buttonNetworkMode:I
    .end local v5           #modemNetworkMode:I
    .end local v6           #settingsNetworkMode:I
    .restart local p2
    :cond_1
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v9, :cond_4

    .line 1084
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1086
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1087
    .restart local v1       #buttonNetworkMode:I
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1090
    .restart local v6       #settingsNetworkMode:I
    if-eq v1, v6, :cond_0

    .line 1093
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1094
    packed-switch v1, :pswitch_data_1

    .line 1111
    :pswitch_d
    const/4 v5, 0x0

    .line 1132
    .restart local v5       #modemNetworkMode:I
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredGsmUmtsNetworkModeSummary(I)V

    .line 1135
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd2

    if-ne v9, v10, :cond_2

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3e

    if-ne v9, v10, :cond_2

    .line 1137
    const-string v9, "gsm.user.pref.net"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1139
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1140
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "gsm_user_pref_net_key"

    invoke-interface {v3, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1141
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1145
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v10, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v10, v11}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1096
    .end local v5           #modemNetworkMode:I
    :pswitch_e
    const/4 v5, 0x3

    .line 1097
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1099
    .end local v5           #modemNetworkMode:I
    :pswitch_f
    const/4 v5, 0x2

    .line 1100
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1102
    .end local v5           #modemNetworkMode:I
    :pswitch_10
    const/4 v5, 0x1

    .line 1103
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1105
    .end local v5           #modemNetworkMode:I
    :pswitch_11
    const/4 v5, 0x0

    .line 1106
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1108
    .end local v5           #modemNetworkMode:I
    :pswitch_12
    const/16 v5, 0x9

    .line 1109
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1114
    .end local v5           #modemNetworkMode:I
    :cond_3
    packed-switch v1, :pswitch_data_2

    .line 1128
    const/4 v5, 0x0

    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1116
    .end local v5           #modemNetworkMode:I
    :pswitch_13
    const/4 v5, 0x3

    .line 1117
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1119
    .end local v5           #modemNetworkMode:I
    :pswitch_14
    const/4 v5, 0x2

    .line 1120
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1122
    .end local v5           #modemNetworkMode:I
    :pswitch_15
    const/4 v5, 0x1

    .line 1123
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1125
    .end local v5           #modemNetworkMode:I
    :pswitch_16
    const/4 v5, 0x0

    .line 1126
    .restart local v5       #modemNetworkMode:I
    goto :goto_2

    .line 1152
    .end local v1           #buttonNetworkMode:I
    .end local v5           #modemNetworkMode:I
    .end local v6           #settingsNetworkMode:I
    .restart local p2
    :cond_4
    iget-boolean v9, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-eqz v9, :cond_0

    const-string v9, "button_national_roaming_key"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1158
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 1159
    .local v8, strIndex:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1160
    .local v4, index:I
    iget-object v9, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v9, v8}, Lcom/android/phone/NationalRoamingList;->setValue(Ljava/lang/String;)V

    .line 1161
    iget-object v9, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v10, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v10}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    .end local v8           #strIndex:Ljava/lang/String;
    :goto_3
    if-ltz v4, :cond_0

    .line 1168
    if-nez v4, :cond_5

    .line 1169
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_roaming"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1170
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "national_roaming_on"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v12}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    goto/16 :goto_1

    .line 1162
    .end local v4           #index:I
    :catch_0
    move-exception v2

    .line 1163
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "NetworkSettings"

    const-string v10, "could not get/set roaming setting"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    const/4 v4, -0x1

    .restart local v4       #index:I
    goto :goto_3

    .line 1172
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_5
    if-ne v4, v11, :cond_6

    .line 1173
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_roaming"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1174
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "national_roaming_on"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1175
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    goto/16 :goto_1

    .line 1176
    :cond_6
    if-ne v4, v13, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_roaming"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1179
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "national_roaming_on"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1180
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v13}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    goto/16 :goto_1

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1094
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_12
    .end packed-switch

    .line 1114
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 231
    iget-object v8, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v8

    if-ne v8, v7, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v7

    .line 234
    :cond_1
    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/HtcCdmaRoamingOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v8

    if-eq v8, v7, :cond_0

    .line 237
    :cond_2
    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    invoke-virtual {v8, p2}, Lcom/android/phone/HtcGsmRoamingPref;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v8

    if-eq v8, v7, :cond_0

    .line 239
    :cond_3
    iget-object v8, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v8

    if-ne v8, v7, :cond_4

    .line 241
    const-string v6, "ril.cdma.inecmmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    .line 247
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0x11

    invoke-virtual {p0, v6, v8}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p2, v8, :cond_5

    .line 254
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_network_mode"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 257
    .local v4, settingsNetworkMode:I
    iget-object v6, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v4           #settingsNetworkMode:I
    :cond_5
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p2, v8, :cond_6

    .line 263
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_network_mode"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 266
    .restart local v4       #settingsNetworkMode:I
    iget-object v6, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v4           #settingsNetworkMode:I
    :cond_6
    iget-boolean v8, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_c

    .line 272
    const-string v8, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v8}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 277
    sget-boolean v8, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v8, :cond_7

    sget-boolean v8, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v8, :cond_9

    :cond_7
    sget-boolean v8, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    if-eqz v8, :cond_9

    .line 279
    iget-object v6, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_8

    .line 280
    iget-object v6, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 282
    :cond_8
    iget-object v6, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->reEnableDataRoamingGuardDialog()V

    goto/16 :goto_0

    .line 289
    :cond_9
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 291
    iput-boolean v6, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 292
    iput-boolean v7, p0, Lcom/android/phone/Settings;->mDialogShowing:Z

    .line 293
    const v3, 0x7f0e02df

    .line 294
    .local v3, roaming_string_res:I
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v8, 0x2

    if-ne v6, v8, :cond_a

    .line 295
    const v3, 0x7f0e00a1

    .line 298
    :cond_a
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v8, 0x1040014

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v8, 0x1080027

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v8, 0x1040013

    invoke-virtual {v6, v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v8, 0x1040009

    invoke-virtual {v6, v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 308
    .end local v3           #roaming_string_res:I
    :cond_b
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 309
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 310
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 311
    .local v1, netRoaming:Z
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v8, :cond_0

    if-eqz v1, :cond_0

    .line 313
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 314
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->requestGetSmartDataRoamingStatus(Z)V

    .line 315
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->clearSDRNotfication()V

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 317
    .local v2, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v6, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 325
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #netRoaming:Z
    .end local v2           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    iget-boolean v8, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    if-eq p2, v8, :cond_0

    .line 379
    :cond_d
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    if-ne p2, v8, :cond_e

    .line 382
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v9, 0x7f0e0093

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 384
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 386
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 388
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->requestGetSmartDataRoamingStatus(Z)V

    goto/16 :goto_0

    .line 390
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_e
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_10

    .line 392
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "roaming_sound_on"

    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_f

    move v6, v7

    :cond_f
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 399
    :cond_10
    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/HtcWorldPhoneOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v8

    if-ne v8, v7, :cond_11

    .line 400
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_0

    .line 406
    :cond_11
    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    invoke-virtual {v8, p2}, Lcom/android/phone/HtcCdmaGloableRoamingOption;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v8

    if-ne v8, v7, :cond_12

    .line 407
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_0

    :cond_12
    move v7, v6

    .line 421
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const v11, 0x7f0e0095

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 783
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 784
    iput-boolean v8, p0, Lcom/android/phone/Settings;->mForeground:Z

    .line 788
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 800
    iget-boolean v5, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-eqz v5, :cond_10

    .line 802
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_e

    .line 803
    iget-object v5, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v5, v10}, Lcom/android/phone/NationalRoamingList;->setValueIndex(I)V

    .line 804
    iget-object v5, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v6, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v6}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V

    .line 835
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    const-string v6, "preferred_network_mode_key"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    const-string v6, "preferred_gsm_umts_network_mode_key"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 838
    :cond_1
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v6, v9}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 851
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/Settings;->updateOperatorInfo()V

    .line 854
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_3

    .line 855
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/Settings;->getRoamingSoundEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 867
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 868
    .local v3, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v10, :cond_4

    .line 869
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 873
    :cond_4
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v5, :cond_15

    .line 874
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 875
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 876
    .local v2, netRoaming:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 877
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getSmartDataRoamingState()I

    move-result v5

    iput v5, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    .line 878
    const-string v5, "NetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resume mSmartDataRoamingMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getDataOnRoamingEnabled()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getDataOnRoamingEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getDataOnRoamingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    if-eq v5, v10, :cond_5

    iget v5, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    .line 880
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 881
    iget v5, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_12

    .line 882
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 883
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 884
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0e0093

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 907
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getNetworkManualModeEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v2, :cond_7

    .line 909
    :cond_6
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 910
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v11}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 912
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 919
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #netRoaming:Z
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v5}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 923
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v5, v8, :cond_9

    .line 924
    iget-object v5, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v5}, Lcom/android/phone/HtcWorldPhoneOptions;->resume()V

    .line 926
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    if-ne v5, v8, :cond_9

    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v8, :cond_9

    .line 928
    const-string v5, "NetworkSettings"

    const-string v6, "Not a GSM phone"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v5, :cond_8

    .line 930
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 932
    :cond_8
    iget-object v5, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    if-eqz v5, :cond_9

    .line 933
    iget-object v5, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 939
    :cond_9
    iget-object v5, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v5, :cond_a

    .line 940
    iget-object v5, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v5}, Lcom/android/phone/CdmaOptions;->resume()V

    .line 946
    :cond_a
    iget-object v5, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v5, :cond_b

    .line 947
    iget-object v5, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v5}, Lcom/android/phone/HtcCdmaRoamingOptions;->resume()V

    .line 952
    :cond_b
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_OPTIONS:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    if-eqz v5, :cond_c

    .line 953
    iget-object v5, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    invoke-virtual {v5}, Lcom/android/phone/HtcCdmaGloableRoamingOption;->resume()V

    .line 956
    :cond_c
    iget-object v5, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    if-eqz v5, :cond_d

    .line 957
    iget-object v5, p0, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    invoke-virtual {v5}, Lcom/android/phone/HtcGsmRoamingPref;->resume()V

    .line 960
    :cond_d
    return-void

    .line 806
    .end local v3           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_e
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "national_roaming_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_f

    .line 807
    iget-object v5, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v5, v8}, Lcom/android/phone/NationalRoamingList;->setValueIndex(I)V

    .line 808
    iget-object v5, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v6, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v6}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 810
    :cond_f
    iget-object v5, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v5, v9}, Lcom/android/phone/NationalRoamingList;->setValueIndex(I)V

    .line 811
    iget-object v5, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v6, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v6}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 815
    :cond_10
    iget-boolean v5, p0, Lcom/android/phone/Settings;->mDialogShowing:Z

    if-eqz v5, :cond_11

    .line 816
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    .line 817
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 820
    :cond_11
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    .line 821
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 823
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v10, :cond_0

    .line 824
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 826
    .local v1, cm:Landroid/net/ConnectivityManager;
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 886
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v2       #netRoaming:Z
    .restart local v3       #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    :cond_12
    iget v5, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_13

    .line 887
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 888
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 890
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0e009c

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 892
    :cond_13
    iget v5, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    if-ne v5, v8, :cond_14

    .line 893
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 894
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 896
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v11}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 897
    :cond_14
    iget v5, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    .line 898
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 899
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 901
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0e009b

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 915
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #netRoaming:Z
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_15
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 773
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onWindowFocusChanged(Z)V

    .line 774
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 775
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 779
    :cond_0
    return-void
.end method
