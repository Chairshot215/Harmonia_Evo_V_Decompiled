.class public Lcom/android/settings/PointerSpeedPreference;
.super Lcom/htc/preference/HtcSeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PointerSpeedPreference$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_SPEED:I = 0x7

.field private static final MIN_SPEED:I = -0x7


# instance fields
.field private mOldSpeed:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Lcom/android/settings/PointerSpeedPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PointerSpeedPreference$1;-><init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PointerSpeedPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->onSpeedChanged()V

    return-void
.end method

.method private getSpeed(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 98
    move v0, p1

    .line 100
    .local v0, speed:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onSpeedChanged()V
    .locals 3

    .prologue
    .line 108
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/PointerSpeedPreference;->getSpeed(I)I

    move-result v0

    .line 109
    .local v0, speed:I
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    return-void
.end method

.method private restoreOldState()V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v0, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->setSpeed(I)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    goto :goto_0
.end method

.method private setSpeed(I)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 137
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 139
    .local v0, wm:Landroid/view/IWindowManager;
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 75
    invoke-static {p1}, Lcom/android/settings/PointerSpeedPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 76
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->getSpeed(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    .line 78
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 80
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 119
    const-string v1, "pointer_speed"

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    return-void

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    .line 84
    add-int/lit8 v0, p2, -0x7

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->setSpeed(I)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/PointerSpeedPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 174
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 169
    check-cast v0, Lcom/android/settings/PointerSpeedPreference$SavedState;

    .line 170
    .local v0, myState:Lcom/android/settings/PointerSpeedPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/PointerSpeedPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 171
    iget v1, v0, Lcom/android/settings/PointerSpeedPreference$SavedState;->oldSpeed:I

    iput v1, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    .line 172
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/android/settings/PointerSpeedPreference$SavedState;->progress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 173
    iget v1, v0, Lcom/android/settings/PointerSpeedPreference$SavedState;->progress:I

    add-int/lit8 v1, v1, -0x7

    invoke-direct {p0, v1}, Lcom/android/settings/PointerSpeedPreference;->setSpeed(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 149
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 158
    :goto_0
    return-object v0

    .line 152
    :cond_1
    new-instance v0, Lcom/android/settings/PointerSpeedPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 153
    .local v0, myState:Lcom/android/settings/PointerSpeedPreference$SavedState;
    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings/PointerSpeedPreference$SavedState;->progress:I

    .line 154
    iget v2, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    iput v2, v0, Lcom/android/settings/PointerSpeedPreference$SavedState;->oldSpeed:I

    .line 157
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    .line 90
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    .line 94
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->setSpeed(I)V

    .line 95
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    .line 69
    return-void
.end method
