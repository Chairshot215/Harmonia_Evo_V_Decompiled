.class public Lcom/android/systemui/statusbar/policy/VolumeController;
.super Ljava/lang/Object;
.source "VolumeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# static fields
.field private static final STREAM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "StatusBar.VolumeController"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mMute:Z

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 3

    const/4 v2, 0x5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mMute:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mVolume:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mVolume:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mMute:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-virtual {v1, v2, p4, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2
.end method
