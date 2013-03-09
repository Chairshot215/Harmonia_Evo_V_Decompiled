.class public Lcom/android/phone/HtcAdvancedSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;,
        Lcom/android/phone/HtcAdvancedSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final CANCEL_NOTIFICATION:I = 0x0

.field private static final CLASS_PROXY_SETTINGS:Ljava/lang/String; = "com.android.browser.htc.ui.HTCBrowserProxySettings"

.field public static final CPA_DISABLED:I = 0x0

.field public static final CPA_ENABLED:I = 0x1

.field public static final CPA_ENABLED_PREF_KEY:Ljava/lang/String; = "cpa_enabled_pref_key"

.field public static final CPA_NAI_ID_KEY:Ljava/lang/String; = "cpa_nai_id_key"

.field public static final CPA_UNKNOWN:I = -0x1

.field private static final DBG:Z = false

.field private static final DIALOG_ID_PWD_SETTINGS:I = 0x1

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_GET_ACTIVE_NAI_INDEX:I = 0x3e9

.field private static final EVENT_GET_MANUAL_NAI_ID:I = 0x3f0

.field private static final EVENT_GET_MANUAL_NAI_PWD:I = 0x3f1

.field private static final EVENT_GET_SPC_CODE:I = 0x3ed

.field private static final EVENT_SET_ACTIVE_NAI_INDEX:I = 0x3ea

.field private static final EVENT_SET_MANUAL_NAI_ID:I = 0x3eb

.field private static final EVENT_SET_MANUAL_NAI_PWD:I = 0x3ec

.field private static final EVENT_UPDATE_ENABLE_BUTTON:I = 0x3ee

.field private static final EVENT_UPDATE_NOTIFICATION_CPA_SERVICE:I = 0x3ef

.field private static final LOG_TAG:Ljava/lang/String; = "HtcAdvancedSettings"

.field public static final NOTIFICATION_ID_CPA_CONNECTED:I = 0x7f0200ba

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field private static final PACKAGE_PROXY_SETTINGS:Ljava/lang/String; = "com.android.browser"

.field private static final SHOW_NOTIFICATION:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I


# instance fields
.field private final BUTTON_ENABLE_SETTING_KEY:Ljava/lang/String;

.field private final BUTTON_PROXY_SETTINGS_KEY:Ljava/lang/String;

.field private final BUTTON_SETUP_NAI_KEY:Ljava/lang/String;

.field private final CMD_GET_SPC_CODE:Ljava/lang/String;

.field private final CMD_READ_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

.field private final CMD_READ_MANUAL_NAI_ID:Ljava/lang/String;

.field private final CMD_READ_MANUAL_NAI_PWD:Ljava/lang/String;

.field private final CMD_WRITE_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

.field private final CMD_WRITE_MANUAL_NAI_ID:Ljava/lang/String;

.field private final CMD_WRITE_MANUAL_NAI_PWD:Ljava/lang/String;

.field private final INDEX_NAI_LENGTH_END:I

.field private final INDEX_NAI_LENGTH_START:I

.field private final INDEX_NAI_PAYLOAD_START:I

.field private final TYPE_SETUP_ID:I

.field private final TYPE_SETUP_PWD:I

.field key:Ljava/lang/String;

.field private mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonProxySettings:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

.field private mHandler:Landroid/os/Handler;

.field private mNaiId:Ljava/lang/String;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mUserName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 50
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;

    .line 97
    const-string v0, "C8267C1F00"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_READ_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

    .line 98
    const-string v0, "C8277C1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_WRITE_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

    .line 99
    const-string v0, "C8277D1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_WRITE_MANUAL_NAI_ID:Ljava/lang/String;

    .line 101
    const-string v0, "C8277E1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_WRITE_MANUAL_NAI_PWD:Ljava/lang/String;

    .line 104
    const-string v0, "C8267D1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_READ_MANUAL_NAI_ID:Ljava/lang/String;

    .line 105
    const-string v0, "C8267E1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_READ_MANUAL_NAI_PWD:Ljava/lang/String;

    .line 107
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings;->INDEX_NAI_LENGTH_START:I

    .line 108
    iput v1, p0, Lcom/android/phone/HtcAdvancedSettings;->INDEX_NAI_LENGTH_END:I

    .line 109
    iput v1, p0, Lcom/android/phone/HtcAdvancedSettings;->INDEX_NAI_PAYLOAD_START:I

    .line 111
    const-string v0, "AT+HTC_RMSL=0"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_GET_SPC_CODE:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    .line 534
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings;->TYPE_SETUP_ID:I

    .line 535
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings;->TYPE_SETUP_PWD:I

    .line 570
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 571
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 572
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    .line 573
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonProxySettings:Lcom/htc/preference/HtcPreferenceScreen;

    .line 575
    const-string v0, "button_enable_settings_key"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->BUTTON_ENABLE_SETTING_KEY:Ljava/lang/String;

    .line 576
    const-string v0, "manual_nai_setup_key"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->BUTTON_SETUP_NAI_KEY:Ljava/lang/String;

    .line 577
    const-string v0, "proxy_settings_key"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->BUTTON_PROXY_SETTINGS_KEY:Ljava/lang/String;

    .line 741
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcAdvancedSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/HtcAdvancedSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/HtcAdvancedSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/HtcAdvancedSettings;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/HtcAdvancedSettings;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    return-object p1
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 412
    .local v2, len:I
    const-string v3, ""

    .line 413
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 414
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 415
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 419
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v0           #c:I
    .end local v4           #tmp:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 432
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 433
    .local v2, j:I
    const-string v4, ""

    .line 435
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 436
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 438
    move v1, v2

    .line 439
    add-int/lit8 v2, v2, 0x2

    .line 440
    goto :goto_0

    .line 441
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 442
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private getSpcCode()V
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 514
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "AT+HTC_RMSL=0"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 516
    return-void
.end method

.method private getWhichNaiInUse()V
    .locals 3

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 491
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "C8267C1F00"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 493
    return-void
.end method

.method private initNaiId()V
    .locals 4

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 499
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "cpa_nai_id_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;

    .line 500
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "C8267D1F"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 507
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private setManualIdPwd(Ljava/lang/String;I)V
    .locals 8
    .parameter "value"
    .parameter "type"

    .prologue
    const/16 v7, 0x10

    .line 542
    const/4 v3, 0x0

    .line 543
    .local v3, msg:Landroid/os/Message;
    const/4 v2, 0x0

    .line 544
    .local v2, length:I
    const-string v0, ""

    .line 545
    .local v0, actionCmd:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 546
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 548
    const-string v0, "C8277D1F"

    .line 555
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    const-string v4, "00"

    .line 557
    .local v4, stringLength:Ljava/lang/String;
    if-ge v2, v7, :cond_2

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/phone/HtcAdvancedSettings;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, cmd:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v3}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 568
    return-void

    .line 549
    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #stringLength:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 550
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 552
    const-string v0, "C8277E1F"

    goto :goto_0

    .line 560
    .restart local v4       #stringLength:Ljava/lang/String;
    :cond_2
    invoke-static {v2, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private setWhichNaiInUse(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 519
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 520
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C8277C1F"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne p1, v4, :cond_1

    const-string v3, "01"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, cmd:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 525
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "cpa_enabled_pref_key"

    if-eqz p1, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 527
    if-nez p1, :cond_0

    .line 528
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ef

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    :cond_0
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 532
    return-void

    .line 521
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "00"

    goto :goto_0

    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_2
    move v3, v5

    .line 525
    goto :goto_1
.end method

.method private static validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 450
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 452
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 453
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    const/4 v2, 0x0

    .line 455
    const-string v0, ""

    .line 481
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 482
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    return v2

    .line 456
    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    const/4 v2, 0x1

    .line 458
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 459
    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 460
    const/4 v2, 0x1

    .line 461
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 462
    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 463
    const/4 v2, 0x1

    .line 464
    const-string v0, "memory is full"

    goto :goto_0

    .line 465
    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 466
    const/4 v2, 0x1

    .line 467
    const-string v0, "command is fail"

    goto :goto_0

    .line 468
    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 469
    const/4 v2, 0x2

    .line 470
    const-string v0, "not support this command"

    goto :goto_0

    .line 471
    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 472
    const/4 v2, 0x2

    .line 473
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 474
    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 475
    const/4 v2, 0x1

    .line 476
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 478
    :cond_8
    const/4 v2, 0x1

    .line 479
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 705
    packed-switch p2, :pswitch_data_0

    .line 732
    :goto_0
    return-void

    .line 708
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 710
    :cond_0
    const-string v1, "HtcAdvancedSettings"

    const-string v2, "OoO Cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/HtcAdvancedSettings;->setManualIdPwd(Ljava/lang/String;I)V

    .line 715
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/HtcAdvancedSettings;->setManualIdPwd(Ljava/lang/String;I)V

    .line 717
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 718
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    .line 719
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 720
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 728
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_1
    const-string v1, "HtcAdvancedSettings"

    const-string v2, "OoO Cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 583
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 585
    iput-object p0, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    .line 586
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings;->addPreferencesFromResource(I)V

    .line 588
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 592
    :cond_0
    new-instance v1, Lcom/android/phone/HtcAdvancedSettings$MyHandler;

    invoke-direct {v1, p0}, Lcom/android/phone/HtcAdvancedSettings$MyHandler;-><init>(Lcom/android/phone/HtcAdvancedSettings;)V

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    .line 595
    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 597
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v1, "button_enable_settings_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 598
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 599
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 601
    const-string v1, "manual_nai_setup_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    .line 602
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 605
    const-string v1, "proxy_settings_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonProxySettings:Lcom/htc/preference/HtcPreferenceScreen;

    .line 606
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonProxySettings:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 610
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 614
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;-><init>(Lcom/android/phone/HtcAdvancedSettings;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mDialog:Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

    .line 616
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mDialog:Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

    .line 618
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 694
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 695
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 628
    const/4 v0, 0x1

    .line 630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 635
    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 636
    const-string v4, "HtcAdvancedSettings"

    const-string v7, "OoO mButtonEnableSetting"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    .line 639
    .local v1, enabled:Z
    invoke-direct {p0, v1}, Lcom/android/phone/HtcAdvancedSettings;->setWhichNaiInUse(Z)V

    .line 641
    iget-object v7, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 642
    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonProxySettings:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 669
    .end local v1           #enabled:Z
    :goto_1
    return v5

    .restart local v1       #enabled:Z
    :cond_1
    move v4, v6

    .line 641
    goto :goto_0

    .line 645
    .end local v1           #enabled:Z
    :cond_2
    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p1, v4, :cond_3

    .line 646
    const-string v4, "HtcAdvancedSettings"

    const-string v6, "OoO mButtonSetupNai"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0, v5}, Lcom/android/phone/HtcAdvancedSettings;->showDialog(I)V

    goto :goto_1

    .line 652
    :cond_3
    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonProxySettings:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p1, v4, :cond_5

    .line 653
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v2, it:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v4, "com.android.browser"

    const-string v7, "com.android.browser.htc.ui.HTCBrowserProxySettings"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const/high16 v4, 0x1084

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 659
    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 660
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 661
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 662
    iget-object v4, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 665
    :cond_4
    const-string v4, "HtcAdvancedSettings"

    const-string v5, "no such activity!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_5
    move v5, v6

    .line 669
    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 675
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 678
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 679
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "cpa_enabled_pref_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 680
    .local v0, cpaEnabledState:I
    if-eq v0, v5, :cond_3

    .line 681
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v0, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 682
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    if-eq v0, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 683
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonProxySettings:Lcom/htc/preference/HtcPreferenceScreen;

    if-eq v0, v3, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 688
    :goto_3
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings;->initNaiId()V

    .line 690
    return-void

    :cond_0
    move v2, v4

    .line 681
    goto :goto_0

    :cond_1
    move v2, v4

    .line 682
    goto :goto_1

    :cond_2
    move v3, v4

    .line 683
    goto :goto_2

    .line 685
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings;->getWhichNaiInUse()V

    goto :goto_3
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 699
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 700
    return-void
.end method
