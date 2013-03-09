.class public Lcom/android/systemui/statusbar/preference/VibrationMode;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "VibrationMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VibrationModeStatusBarPreference"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/systemui/statusbar/preference/VibrationMode$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/VibrationMode$1;-><init>(Lcom/android/systemui/statusbar/preference/VibrationMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/VibrationMode$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/VibrationMode$2;-><init>(Lcom/android/systemui/statusbar/preference/VibrationMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/VibrationMode;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/VibrationMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/VibrationMode;->handleVibrationModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/VibrationMode;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private handleVibrationModeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02021a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02021b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02021b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/VibrationMode;->handleVibrationModeChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 4

    new-instance v2, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/VibrationMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02021a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
