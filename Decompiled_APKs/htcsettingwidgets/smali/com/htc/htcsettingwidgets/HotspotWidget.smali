.class public Lcom/htc/htcsettingwidgets/HotspotWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "HotspotWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;,
        Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field private static final KEY_IS_DIALOG:Ljava/lang/String; = "is_dialog_code"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final M10_FILE_PATH:Ljava/lang/String; = "Port/WiFiRouterWidget.m10"

.field private static final ML_SP_STATUS_KEY:Ljava/lang/String; = "init.svc.modem"

.field private static final ML_SP_STATUS_OFF_VALUE:Ljava/lang/String; = "stopped"

.field private static final ML_SP_STATUS_ON_VALUE:Ljava/lang/String; = "running"

.field private static final SET_HOTSPOT_STATE:I = 0x22b9

.field private static final iMSG_BASE:I = 0x22b8

.field private static final mbLOGV:Z


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mDontRemind:Landroid/widget/CheckBox;

.field private mEnableMhs:Z

.field private mHotspotStateFilter:Landroid/content/IntentFilter;

.field private mHotspotStateReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mMhsIntentFilter:Landroid/content/IntentFilter;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private mSettingOn:Z

.field private mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private m_ButtonClickListener:Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;

.field private m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mstrItemIdentifier:[Ljava/lang/String;

.field private remindDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsettingwidgets/HotspotWidget;->$assertionsDisabled:Z

    .line 37
    const-class v0, Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/HotspotWidget;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 40
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 42
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.settings_section"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mstrItemIdentifier:[Ljava/lang/String;

    .line 494
    new-instance v0, Lcom/htc/htcsettingwidgets/HotspotWidget$7;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/HotspotWidget$7;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/htc/htcsettingwidgets/HotspotWidget$8;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/HotspotWidget$8;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/htcsettingwidgets/HotspotWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->handleHotspotStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/htcsettingwidgets/HotspotWidget;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htcsettingwidgets/HotspotWidget;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/htcsettingwidgets/HotspotWidget;)Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/htcsettingwidgets/HotspotWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->remindDialog:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->showRemindDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotState()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->doShowRemindDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/htcsettingwidgets/HotspotWidget;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mDontRemind:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/htcsettingwidgets/HotspotWidget;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotOn()V

    return-void
.end method

.method private checkMHSStatus()V
    .locals 3

    .prologue
    .line 401
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v0

    .line 402
    .local v0, status:I
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 404
    .local v1, wifiApState:I
    iput v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsStatus:I

    .line 408
    invoke-direct {p0, v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->handleHotspotStateChanged(I)V

    .line 409
    return-void
.end method

.method private displayState(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    const/4 v2, 0x1

    .line 325
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    .line 326
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    .line 327
    .local v0, iCurrentState:I
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 329
    :cond_2
    return-void
.end method

.method private doShowRemindDialog()V
    .locals 7

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 275
    .local v1, ct:Landroid/content/Context;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070015

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c013d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/htcsettingwidgets/HotspotWidget$5;

    invoke-direct {v5, p0}, Lcom/htc/htcsettingwidgets/HotspotWidget$5;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c013c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/htcsettingwidgets/HotspotWidget$4;

    invoke-direct {v5, p0, v1}, Lcom/htc/htcsettingwidgets/HotspotWidget$4;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 299
    .local v2, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mLayoutFactory:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 300
    .local v0, contentView:Landroid/widget/LinearLayout;
    const v3, 0x7f080001

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mDontRemind:Landroid/widget/CheckBox;

    .line 301
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 302
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    new-instance v4, Lcom/htc/htcsettingwidgets/HotspotWidget$6;

    invoke-direct {v4, p0}, Lcom/htc/htcsettingwidgets/HotspotWidget$6;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 306
    return-void
.end method

.method private enableMHS()Z
    .locals 2

    .prologue
    .line 465
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleHotspotStateChanged(I)V
    .locals 1
    .parameter "hotspotState"

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 341
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->displayState(Z)V

    goto :goto_0

    .line 349
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->displayState(Z)V

    .line 352
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 353
    iget v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsStatus:I

    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->updateMhsUI(I)V

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleMhs(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 427
    if-eqz p1, :cond_3

    .line 429
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 430
    .local v0, wifiState:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 432
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->showTurnoffWifiDialog()V

    .line 459
    .end local v0           #wifiState:I
    :goto_0
    return v1

    .line 437
    .restart local v0       #wifiState:I
    :cond_1
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 438
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 440
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 446
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_saved_state"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    .end local v0           #wifiState:I
    :cond_3
    move v1, v2

    .line 459
    goto :goto_0

    .line 447
    .restart local v0       #wifiState:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    new-instance v0, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;Lcom/htc/htcsettingwidgets/HotspotWidget$1;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    .line 123
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->enableMHS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mEnableMhs:Z

    .line 124
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mCm:Landroid/net/ConnectivityManager;

    .line 125
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiRegexs:[Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->enableMHS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mEnableMhs:Z

    .line 132
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mEnableMhs:Z

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsIntentFilter:Landroid/content/IntentFilter;

    .line 134
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->checkMHSStatus()V

    .line 135
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    :cond_1
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateFilter:Landroid/content/IntentFilter;

    .line 146
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 142
    :cond_2
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsIntentFilter:Landroid/content/IntentFilter;

    goto :goto_1
.end method

.method private isMLEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 388
    const-string v2, "init.svc.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v1

    .line 393
    :cond_1
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isShowVzWDialog()Z
    .locals 2

    .prologue
    .line 534
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHotspotEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 309
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 314
    if-eqz p1, :cond_0

    .line 315
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.usbtethering.warning_acg"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    const-string v1, "is_dialog_code"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setHotspotOn()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 170
    .local v3, iState:I
    const/16 v9, 0xd

    if-ne v3, v9, :cond_1

    .line 171
    iput-boolean v7, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    .line 177
    :goto_0
    iget-boolean v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mEnableMhs:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-nez v9, :cond_3

    .line 179
    iget-boolean v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-nez v9, :cond_2

    :goto_1
    invoke-direct {p0, v7}, Lcom/htc/htcsettingwidgets/HotspotWidget;->handleMhs(Z)Z

    move-result v6

    .line 242
    :cond_0
    :goto_2
    return-void

    .line 174
    :cond_1
    iput-boolean v8, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    goto :goto_0

    :cond_2
    move v7, v8

    .line 179
    goto :goto_1

    .line 184
    :cond_3
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->isShowVzWDialog()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hotspot_remind_dialog"

    invoke-static {v9, v10}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->remindDialog:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_3
    iget-boolean v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->isMLEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    .local v1, ct:Landroid/content/Context;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f070015

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f070016

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x20c013c

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/htc/htcsettingwidgets/HotspotWidget$2;

    invoke-direct {v11, p0}, Lcom/htc/htcsettingwidgets/HotspotWidget$2;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x20c013d

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/htc/htcsettingwidgets/HotspotWidget$1;

    invoke-direct {v11, p0}, Lcom/htc/htcsettingwidgets/HotspotWidget$1;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 213
    .local v5, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 229
    .end local v1           #ct:Landroid/content/Context;
    .end local v5           #mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :goto_4
    iget-boolean v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-eqz v9, :cond_0

    .line 230
    const/4 v4, 0x0

    .line 232
    .local v4, iWifiSavedState:I
    :try_start_1
    const-string v9, "wifi_saved_state"

    invoke-static {v0, v9}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 237
    :goto_5
    if-ne v4, v7, :cond_0

    .line 238
    iget-object v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 239
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 187
    .end local v4           #iWifiSavedState:I
    :catch_0
    move-exception v2

    .line 188
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    iput v8, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->remindDialog:I

    goto :goto_3

    .line 214
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    iget-boolean v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-nez v9, :cond_5

    iget v9, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->remindDialog:I

    if-nez v9, :cond_5

    .line 216
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->showRemindDialog()V

    goto :goto_4

    .line 219
    :cond_5
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotState()V

    goto :goto_4

    .line 223
    :cond_6
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotState()V

    goto :goto_4

    .line 233
    .restart local v4       #iWifiSavedState:I
    :catch_1
    move-exception v2

    .line 234
    .restart local v2       #e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_5
.end method

.method private setHotspotState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 249
    .local v0, iWifiState:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 251
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    :cond_1
    iget-boolean v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-nez v3, :cond_2

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotEnabled(Z)V

    .line 254
    return-void

    :cond_2
    move v1, v2

    .line 253
    goto :goto_0
.end method

.method private showRemindDialog()V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/htc/htcsettingwidgets/HotspotWidget$3;

    invoke-direct {v1, p0}, Lcom/htc/htcsettingwidgets/HotspotWidget$3;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.hotspot.TurnOffWifi"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 478
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateMhsUI(I)V
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 412
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 414
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->displayState(Z)V

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    if-ne p1, v1, :cond_1

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->displayState(Z)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, bWifiTethered:Z
    const/4 v2, 0x0

    .line 366
    .local v2, bWifiErrored:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v8, v0, v5

    .local v8, o:Ljava/lang/Object;
    move-object v10, v8

    .line 367
    check-cast v10, Ljava/lang/String;

    .line 368
    .local v10, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v9, v1, v4

    .line 369
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v3, 0x1

    .line 368
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 366
    .end local v9           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 372
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #o:Ljava/lang/Object;
    .end local v10           #s:Ljava/lang/String;
    :cond_2
    move-object v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v8, v0, v5

    .restart local v8       #o:Ljava/lang/Object;
    move-object v10, v8

    .line 373
    check-cast v10, Ljava/lang/String;

    .line 374
    .restart local v10       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v7, :cond_4

    aget-object v9, v1, v4

    .line 375
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v2, 0x1

    .line 374
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 372
    .end local v9           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_2

    .line 379
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #o:Ljava/lang/Object;
    .end local v10           #s:Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_7

    .line 380
    iget-object v11, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 384
    :cond_6
    :goto_4
    return-void

    .line 381
    :cond_7
    if-eqz v2, :cond_6

    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "saved"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v2, "Port/WiFiRouterWidget.m10"

    invoke-virtual {p0, v2}, Lcom/htc/htcsettingwidgets/HotspotWidget;->setContent(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 75
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mstrItemIdentifier:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 76
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v0, v4

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 77
    sget-boolean v2, Lcom/htc/htcsettingwidgets/HotspotWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 79
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 80
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    .line 81
    iget-boolean v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mSettingOn:Z

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 87
    :goto_0
    new-instance v2, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;Lcom/htc/htcsettingwidgets/HotspotWidget$1;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;

    .line 88
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;

    if-nez v2, :cond_1

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 101
    aget-object v2, v0, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 102
    sget-boolean v2, Lcom/htc/htcsettingwidgets/HotspotWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->initData()V

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_0
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 115
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->mHotspotStateFilter:Landroid/content/IntentFilter;

    .line 116
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 117
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;

    .line 118
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 119
    return-void
.end method
