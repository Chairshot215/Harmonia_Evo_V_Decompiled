.class public Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;
.super Ljava/lang/Object;
.source "HtcBeatsSwitchEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

.field private mBtState:I

.field mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHeadState:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSummary:Landroid/widget/TextView;

.field private mSwitch:Lcom/htc/widget/HtcToggleButton;

.field private mSwitchHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "switchHeader"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->TAG:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mHeadState:I

    .line 33
    iput v1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mBtState:I

    .line 36
    iput-object p1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-direct {v0, p1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 40
    instance-of v0, p2, Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 41
    check-cast p2, Lcom/htc/widget/HtcToggleButton;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 46
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 48
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.BEATS_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler$1;-><init>(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    return-void

    .line 43
    .restart local p2
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mHeadState:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mBtState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->updateEnabledState()V

    return-void
.end method

.method private updateEnabledState()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-virtual {v1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->getBeatsState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 83
    iget v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mHeadState:I

    if-ne v0, v2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSummary:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mBtState:I

    if-ne v0, v2, :cond_3

    .line 90
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-static {v0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->isBeatsHeadsetBT(Landroid/media/AudioManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSummary:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c0097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 2
    .parameter "toggleButton"
    .parameter "isChecked"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    const-string v1, "Settings"

    invoke-virtual {v0, p2, v1}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->setBeatsState(ZLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->updateEnabledState()V

    .line 133
    return-void
.end method

.method public setSwitch(Landroid/view/View;)V
    .locals 2
    .parameter "switchHeader"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcToggleButton;

    iput-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 117
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSwitchHeader:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mSummary:Landroid/widget/TextView;

    .line 126
    invoke-direct {p0}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->updateEnabledState()V

    goto :goto_0
.end method
