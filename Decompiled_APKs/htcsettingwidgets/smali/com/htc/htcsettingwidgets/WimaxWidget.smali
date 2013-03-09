.class public Lcom/htc/htcsettingwidgets/WimaxWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WimaxWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final M10_FILE_PATH:Ljava/lang/String; = "Port/WimaxWidget.m10"

.field private static final mbLOGV:Z


# instance fields
.field private mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

.field private mSettingOn:Z

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;

.field private mWimaxStateFilter:Landroid/content/IntentFilter;

.field private mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

.field private m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;

.field private m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mstrItemIdentifier:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/htcsettingwidgets/WimaxWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsettingwidgets/WimaxWidget;->$assertionsDisabled:Z

    .line 30
    const-class v0, Lcom/htc/htcsettingwidgets/WimaxWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/WimaxWidget;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 35
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.settings_section"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mstrItemIdentifier:[Ljava/lang/String;

    .line 234
    new-instance v0, Lcom/htc/htcsettingwidgets/WimaxWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/WimaxWidget$1;-><init>(Lcom/htc/htcsettingwidgets/WimaxWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcsettingwidgets/WimaxWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/htcsettingwidgets/WimaxWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/WimaxWidget;->setWimaxOn(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/htcsettingwidgets/WimaxWidget;)Lcom/htc/net/wimax/WimaxController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/htcsettingwidgets/WimaxWidget;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/htcsettingwidgets/WimaxWidget;->handleWimaxStateChanged(II)V

    return-void
.end method

.method private displayState(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    const/4 v2, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    .line 229
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    .line 230
    .local v0, iCurrentState:I
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 232
    :cond_2
    return-void
.end method

.method private static getHumanReadableWimaxState(I)Ljava/lang/String;
    .locals 1
    .parameter "iWimaxState"

    .prologue
    .line 211
    packed-switch p0, :pswitch_data_0

    .line 223
    const-string v0, "Some other state!"

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    const-string v0, "Disabled"

    goto :goto_0

    .line 215
    :pswitch_1
    const-string v0, "Disabling"

    goto :goto_0

    .line 217
    :pswitch_2
    const-string v0, "Enabled"

    goto :goto_0

    .line 219
    :pswitch_3
    const-string v0, "Enabling"

    goto :goto_0

    .line 221
    :pswitch_4
    const-string v0, "Unknown"

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private handleWimaxStateChanged(II)V
    .locals 3
    .parameter "iWimaxState"
    .parameter "iPreviousWimaxState"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 185
    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_4

    .line 186
    :cond_0
    if-ne p1, v0, :cond_1

    .line 193
    :cond_1
    if-ne p1, v2, :cond_3

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->displayState(Z)V

    .line 201
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 193
    goto :goto_0

    .line 194
    :cond_4
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 196
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 198
    invoke-direct {p0, v1}, Lcom/htc/htcsettingwidgets/WimaxWidget;->displayState(Z)V

    goto :goto_1
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateFilter:Landroid/content/IntentFilter;

    .line 113
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    :cond_1
    return-void
.end method

.method private setPersistWimaxEnabled(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wimax_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWimaxEnabled(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0

    .line 165
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1, p1}, Lcom/htc/net/wimax/WimaxController;->setWimaxEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/WimaxWidget;->setPersistWimaxEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private setWimaxOn(Z)V
    .locals 2
    .parameter "bEnabled"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->isWimaxEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    .line 142
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/WimaxWidget;->setWimaxEnabled(Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "saved"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v3, "Port/WimaxWidget.m10"

    invoke-virtual {p0, v3}, Lcom/htc/htcsettingwidgets/WimaxWidget;->setContent(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 48
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mstrItemIdentifier:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 49
    .local v1, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v3, v1, v5

    check-cast v3, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 51
    sget-boolean v3, Lcom/htc/htcsettingwidgets/WimaxWidget;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wimax"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/net/wimax/WimaxController;

    iput-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    .line 53
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxController;->isWimaxEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fourG_wimax"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/net/wimax/HTCWimax4GManager;

    iput-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, bAvailableSIM:Z
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-eqz v3, :cond_2

    .line 62
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v3}, Lcom/htc/net/wimax/HTCWimax4GManager;->isAvailable()Z

    move-result v0

    .line 69
    :cond_2
    iget-boolean v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 70
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 75
    :goto_0
    new-instance v3, Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/WimaxWidget;Lcom/htc/htcsettingwidgets/WimaxWidget$1;)V

    iput-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;

    .line 76
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;

    if-nez v3, :cond_3

    .line 79
    :cond_3
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v4, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 89
    aget-object v3, v1, v6

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 90
    sget-boolean v3, Lcom/htc/htcsettingwidgets/WimaxWidget;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 73
    :cond_4
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 91
    :cond_5
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->initData()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    :cond_0
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    .line 102
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxStateFilter:Landroid/content/IntentFilter;

    .line 103
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 104
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 105
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WimaxWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;

    .line 106
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 107
    return-void
.end method
