.class public Lcom/htc/htcsettingwidgets/GPSWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "GPSWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;,
        Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;,
        Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ETRX_CHECKGPSONE_ONBOOT:Ljava/lang/String; = "GPSONE"

.field private static final GPSONE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.GPSONE_MODE_CHANGED"

.field private static final INDEX_SHOW_DISCLAIMER_KEY:I = 0x0

.field private static final INTENT_TO_CHECK_GPSONE_OBSERVER:Ljava/lang/String; = "htc.android.intent.action.CHECK_GPSONE_OBSERVER"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final M10_FILE_PATH:Ljava/lang/String; = "Port/GPSWidget.m10"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final URI:Landroid/net/Uri; = null

.field public static final VALUE_GPSONE_CONFIRM:Ljava/lang/String; = "DoubleConfirm"

.field private static final mbLOGV:Z = false

.field private static final sUIMSG_BASE:I = 0x270f

.field private static final sUIMSG_SHOW_DIALOG:I = 0x2710


# instance fields
.field private mSettingOn:Z

.field private mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

.field private mUiHandler:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

.field private m_ButtonClickListener:Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;

.field private m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mstrItemIdentifier:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    const-class v0, Lcom/htc/htcsettingwidgets/GPSWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsettingwidgets/GPSWidget;->$assertionsDisabled:Z

    .line 34
    const-class v0, Lcom/htc/htcsettingwidgets/GPSWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/GPSWidget;->LOG_TAG:Ljava/lang/String;

    .line 49
    const-string v0, "content://com.android.settings.provider.cdmasettings/user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/GPSWidget;->URI:Landroid/net/Uri;

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "show_disclaimer_key_usc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/htcsettingwidgets/GPSWidget;->PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 37
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 39
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    .line 40
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.settings_section"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mstrItemIdentifier:[Ljava/lang/String;

    .line 211
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/htcsettingwidgets/GPSWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/htcsettingwidgets/GPSWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htcsettingwidgets/GPSWidget;)Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/htcsettingwidgets/GPSWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/GPSWidget;->setGPSOn(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/GPSWidget;->displayState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/GPSWidget;->notifyGPSStatusBar(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private displayState(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    const/4 v2, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    .line 195
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    .line 196
    .local v0, iCurrentState:I
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 198
    :cond_2
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    .line 114
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    :cond_0
    return-void
.end method

.method private isShowEULADialog()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 243
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcsettingwidgets/GPSWidget;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/htcsettingwidgets/GPSWidget;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    .line 249
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 246
    goto :goto_0

    :cond_1
    move v0, v7

    .line 249
    goto :goto_0
.end method

.method private notifyGPSStatusBar(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GPSONE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 203
    const-string v1, "MtGpsSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    return-void

    .line 205
    :cond_0
    const-string v1, "MtGpsSetting"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setGPSOn(Z)V
    .locals 5
    .parameter "bEnabled"

    .prologue
    .line 164
    move v0, p1

    .line 165
    .local v0, enabled:Z
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->initData()V

    .line 167
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_0

    .line 168
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->isShowEULADialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.HtcCdmaGPSLocationSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v3, "GPSONE"

    const-string v4, "DoubleConfirm"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "htc.android.intent.action.CHECK_GPSONE_OBSERVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, intentCheck:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.HtcCdmaFeatureReceiver"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/htcsettingwidgets/GPSWidget$1;

    invoke-direct {v4, p0, v0}, Lcom/htc/htcsettingwidgets/GPSWidget$1;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "saved"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v2, "Port/GPSWidget.m10"

    invoke-virtual {p0, v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->setContent(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 67
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mstrItemIdentifier:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 68
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v0, v4

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 69
    sget-boolean v2, Lcom/htc/htcsettingwidgets/GPSWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    .line 71
    iget-boolean v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 77
    :goto_0
    new-instance v2, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;

    invoke-direct {v2, p0, v6}, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget;Lcom/htc/htcsettingwidgets/GPSWidget$1;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;

    .line 78
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;

    if-nez v2, :cond_1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 91
    aget-object v2, v0, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 92
    sget-boolean v2, Lcom/htc/htcsettingwidgets/GPSWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    if-nez v2, :cond_4

    .line 95
    new-instance v2, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    invoke-direct {v2, p0, v6}, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget;Lcom/htc/htcsettingwidgets/GPSWidget$1;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    .line 96
    :cond_4
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->initData()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingsObserver:Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 106
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;

    .line 107
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 108
    return-void
.end method
