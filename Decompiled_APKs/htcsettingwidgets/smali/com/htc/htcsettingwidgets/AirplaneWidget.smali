.class public Lcom/htc/htcsettingwidgets/AirplaneWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "AirplaneWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x1

.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final M10_FILE_PATH:Ljava/lang/String; = "Port/AirplaneWidget.m10"

.field private static final REQUEST_CODE:I = 0x1

.field private static final RESULT_OK:I = -0x1

.field private static final mbLOGV:Z


# instance fields
.field private mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSettingOn:Z

.field private mStateHandler:Landroid/os/Handler;

.field private m_ButtonClickListener:Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;

.field private m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mstrItemIdentifier:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/htc/htcsettingwidgets/AirplaneWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->$assertionsDisabled:Z

    .line 27
    const-class v0, Lcom/htc/htcsettingwidgets/AirplaneWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 32
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.settings_section"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mstrItemIdentifier:[Ljava/lang/String;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcsettingwidgets/AirplaneWidget;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/htcsettingwidgets/AirplaneWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/htcsettingwidgets/AirplaneWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/htcsettingwidgets/AirplaneWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/htcsettingwidgets/AirplaneWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/htcsettingwidgets/AirplaneWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->onAirplaneModeChanged()V

    return-void
.end method

.method private createStateHandler()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/htc/htcsettingwidgets/AirplaneWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget$1;-><init>(Lcom/htc/htcsettingwidgets/AirplaneWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mStateHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method private displayState(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    const/4 v2, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    .line 186
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    .line 188
    .local v0, iCurrentState:I
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 192
    :cond_2
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mStateHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 96
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 97
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 99
    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 143
    iget-object v6, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v6, :cond_2

    .line 144
    iget-object v6, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 145
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    move v2, v4

    .line 146
    .local v2, isPhoneOff:Z
    :goto_0
    iget-object v6, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 148
    .local v1, isAirplaneOn:Z
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 149
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->displayState(Z)V

    .line 158
    .end local v1           #isAirplaneOn:Z
    .end local v2           #isPhoneOff:Z
    .end local v3           #serviceState:Landroid/telephony/ServiceState;
    :cond_2
    :goto_2
    return-void

    .restart local v3       #serviceState:Landroid/telephony/ServiceState;
    :cond_3
    move v2, v5

    .line 145
    goto :goto_0

    .restart local v2       #isPhoneOff:Z
    :cond_4
    move v1, v5

    .line 146
    goto :goto_1

    .line 152
    .restart local v1       #isAirplaneOn:Z
    :cond_5
    sget-object v4, Lcom/htc/htcsettingwidgets/AirplaneWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected service state. isPhoneOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isAirplaneOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 154
    .local v0, airplaneModeOn:Z
    sget-object v4, Lcom/htc/htcsettingwidgets/AirplaneWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "airplane mode in setting : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->displayState(Z)V

    goto :goto_2
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .parameter "bEnabled"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    return-void

    .line 119
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 162
    if-ne p1, v3, :cond_0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    if-nez p3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v5, "exit_ecm_result"

    invoke-virtual {p3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 169
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->setAirplaneModeOn(Z)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v5, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 176
    .local v2, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    move v1, v3

    .line 178
    .local v1, isPhoneOff:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0

    .end local v1           #isPhoneOff:Z
    :cond_3
    move v1, v4

    .line 176
    goto :goto_1

    .restart local v1       #isPhoneOff:Z
    :cond_4
    move v3, v4

    .line 178
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "saved"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v2, "Port/AirplaneWidget.m10"

    invoke-virtual {p0, v2}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->setContent(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 48
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mstrItemIdentifier:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 49
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v0, v3

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 51
    sget-boolean v2, Lcom/htc/htcsettingwidgets/AirplaneWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    .line 53
    iget-boolean v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 59
    :goto_0
    new-instance v2, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/AirplaneWidget;Lcom/htc/htcsettingwidgets/AirplaneWidget$1;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;

    .line 60
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;

    if-nez v2, :cond_1

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 67
    aget-object v2, v0, v4

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 68
    sget-boolean v2, Lcom/htc/htcsettingwidgets/AirplaneWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mStateHandler:Landroid/os/Handler;

    if-nez v2, :cond_4

    .line 72
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->createStateHandler()V

    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->initData()V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 82
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mPStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 85
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->mStateHandler:Landroid/os/Handler;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 88
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;

    .line 89
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 90
    return-void
.end method
