.class public Lcom/htc/htcsettingwidgets/MobileNetworkWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "MobileNetworkWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsettingwidgets/MobileNetworkWidget$3;,
        Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;,
        Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTION_MODEMLINK_DISABLED:Ljava/lang/String; = "com.htc.is.disabled"

.field private static final ACTION_MODEMLINK_ENABLED:Ljava/lang/String; = "com.htc.is.enabled"

.field private static final INTENT_ACTION_MOBILEDATA_MODE_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final M10_FILE_PATH:Ljava/lang/String; = "Port/MobileNetworkWidget.m10"

.field private static final ML_SP_STATUS_KEY:Ljava/lang/String; = "init.svc.modem"

.field private static final ML_SP_STATUS_OFF_VALUE:Ljava/lang/String; = "stopped"

.field private static final ML_SP_STATUS_ON_VALUE:Ljava/lang/String; = "running"

.field private static final PHONE_ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final mbLOGV:Z = true


# instance fields
.field private mMobileDataInService:Z

.field private mMobileFilter:Landroid/content/IntentFilter;

.field private final mMobileReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceivehandler:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;

.field private mSettingOn:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_ButtonClickListener:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

.field private m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mstrItemIdentifier:[Ljava/lang/String;

.field private final strSender:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->$assertionsDisabled:Z

    .line 35
    const-class v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 38
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 40
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mSettingOn:Z

    .line 42
    const-string v0, "MobileNetworkWidget"

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->strSender:Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.settings_section"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mstrItemIdentifier:[Ljava/lang/String;

    .line 325
    new-instance v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$2;-><init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    return-void
.end method

.method static synthetic access$1000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileDataInService:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->updateState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPhoneService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mSettingOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->setMobileNetworkOn(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mReceivehandler:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;

    return-object v0
.end method

.method private checkStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 452
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPhoneService()Z

    move-result v0

    .line 443
    .local v0, bInService:Z
    sget-object v2, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bInService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPersistedMobileDataEnabled()Z

    move-result v1

    .line 445
    .local v1, bPersistedMobileEnabled:Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 446
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method

.method private displayState(Z)V
    .locals 5
    .parameter "bEnabled"

    .prologue
    const/4 v4, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mSettingOn:Z

    .line 216
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    .line 218
    .local v0, iCurrentState:I
    sget-object v1, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayState, mSettingOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mSettingOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iCurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mSettingOn:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mSettingOn:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_2

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 228
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 230
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone$DataState;

    .line 232
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;-><init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mReceivehandler:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;

    .line 105
    new-instance v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;-><init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileFilter:Landroid/content/IntentFilter;

    .line 118
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mMobileFilter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.is.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.is.disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 132
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->registerReceiver()V

    .line 133
    return-void
.end method

.method private isDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

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

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private isMLEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 313
    const-string v2, "init.svc.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, s:Ljava/lang/String;
    sget-object v2, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ML value = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz v0, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 237
    sget-object v1, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTelephonyManager.getDataState()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable(I)Z
    .locals 4
    .parameter "networkType"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, CM:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #CM:Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 298
    .restart local v0       #CM:Landroid/net/ConnectivityManager;
    :cond_0
    if-nez v0, :cond_2

    .line 299
    sget-object v2, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 301
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 302
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 304
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPersistedMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private isPhoneService()Z
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x1

    .line 268
    .local v0, bInService:Z
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    .local v1, iCurrentState:I
    if-nez v1, :cond_1

    .line 272
    const/4 v0, 0x1

    .line 281
    .end local v1           #iCurrentState:I
    :cond_0
    :goto_0
    return v0

    .line 275
    .restart local v1       #iCurrentState:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    .end local v1           #iCurrentState:I
    :catch_0
    move-exception v2

    .line 278
    .local v2, re:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 455
    sget-object v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 459
    :cond_0
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6
    .parameter "bEnabled"

    .prologue
    .line 162
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 164
    if-eqz p1, :cond_2

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, bDataConnResult:Z
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->setPersistMobileDataSettingEnabled(Z)V

    .line 167
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v0

    .line 168
    sget-object v3, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPhoneService.enableDataConnectivity():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isNetworkAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    sget-object v3, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "enable Mobile data connection but wifi is connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V

    .line 190
    .end local v0           #bDataConnResult:Z
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const-string v3, "sender"

    const-string v4, "MobileNetworkWidget"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    .end local v2           #intent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 174
    .restart local v0       #bDataConnResult:Z
    :cond_0
    if-nez v0, :cond_1

    .line 175
    sget-object v3, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "enable Mobile data connection fail."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v0           #bDataConnResult:Z
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileDataEnabled:exception>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 177
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bDataConnResult:Z
    :cond_1
    :try_start_1
    sget-object v3, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "enable Mobile data connection successed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0           #bDataConnResult:Z
    :cond_2
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v3

    if-nez v3, :cond_3

    .line 184
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V

    .line 187
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->setPersistMobileDataSettingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setMobileNetworkOn(Z)V
    .locals 4
    .parameter "bEnabled"

    .prologue
    .line 149
    sget-object v1, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, isMobileDataEnabled():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, bPersistedMobileDataEnabled:Z
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPersistedMobileDataEnabled()Z

    move-result v0

    .line 153
    sget-object v1, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, bPersistedMobileDataEnabled>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->setMobileDataEnabled(Z)V

    .line 158
    .end local v0           #bPersistedMobileDataEnabled:Z
    :goto_1
    return-void

    .line 154
    .restart local v0       #bPersistedMobileDataEnabled:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    .end local v0           #bPersistedMobileDataEnabled:Z
    :cond_1
    sget-object v1, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "this control is disabled, please wait state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setPersistMobileDataSettingEnabled(Z)V
    .locals 2
    .parameter "bEnabled"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 243
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 462
    sget-object v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 465
    :cond_0
    return-void
.end method

.method private updateServiceState(I)V
    .locals 3
    .parameter "iCurrentStatus"

    .prologue
    const/4 v2, 0x0

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 258
    sget-object v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mMobileDataInService = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileDataInService:Z

    .line 260
    invoke-direct {p0, v2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V

    .line 264
    :goto_0
    return-void

    .line 253
    :pswitch_0
    sget-object v0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mMobileDataInService = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileDataInService:Z

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 203
    sget-object v3, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Update state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    invoke-direct {p0, v2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPhoneService()Z

    move-result v0

    .line 209
    .local v0, bInService:Z
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPersistedMobileDataEnabled()Z

    move-result v1

    .line 210
    .local v1, bPersistedMobileEnabled:Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "saved"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v2, "Port/MobileNetworkWidget.m10"

    invoke-virtual {p0, v2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->setContent(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 65
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mstrItemIdentifier:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 66
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 67
    sget-boolean v2, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 69
    :cond_0
    new-instance v2, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

    .line 70
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

    if-nez v2, :cond_1

    .line 71
    sget-object v2, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_ButtonClickListener>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 76
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 77
    sget-boolean v2, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->initData()V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->unregisterReceiver()V

    .line 92
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileFilter:Landroid/content/IntentFilter;

    .line 93
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 94
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 95
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileDataInService:Z

    .line 97
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 98
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;

    .line 99
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->checkStatus()V

    .line 87
    return-void
.end method
