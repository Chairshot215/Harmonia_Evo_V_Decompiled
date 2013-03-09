.class public Lcom/htc/preference/HtcVolumePreference;
.super Lcom/htc/preference/HtcSeekBarDialogPreference;
.source "HtcVolumePreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcVolumePreference$1;,
        Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;,
        Lcom/htc/preference/HtcVolumePreference$SavedState;,
        Lcom/htc/preference/HtcVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

.field private mStreamType:I

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/preference/HtcVolumePreference;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcVolumePreference;->mStreamType:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcVolumePreference;->mVoiceCapable:Z

    .line 85
    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/htc/preference/HtcVolumePreference;->LOGD:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/preference/HtcVolumePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference;->mVoiceCapable:Z

    return v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceManager;->unregisterOnActivityStopListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;)V

    .line 156
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 158
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10202d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 165
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stop()V

    .line 166
    iput-object v4, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    .line 169
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference;->cleanup()V

    .line 146
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 94
    const v1, 0x10202d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 95
    .local v0, seekBar:Landroid/widget/SeekBar;
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;-><init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->registerOnActivityStopListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;)V

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 105
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 106
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 136
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference;->cleanup()V

    .line 141
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 112
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 129
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_2
    move v0, v2

    .line 111
    goto :goto_1

    .line 114
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 115
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 119
    :sswitch_1
    if-eqz v0, :cond_0

    .line 120
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 124
    :sswitch_2
    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 199
    sget-boolean v1, Lcom/htc/preference/HtcVolumePreference;->LOGD:Z

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "VolumePreference"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcVolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 204
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 215
    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v0, p1

    .line 208
    check-cast v0, Lcom/htc/preference/HtcVolumePreference$SavedState;

    .line 209
    .local v0, myState:Lcom/htc/preference/HtcVolumePreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/htc/preference/HtcVolumePreference$SavedState;->getVolumeStore()Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 175
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 179
    sget-boolean v2, Lcom/htc/preference/HtcVolumePreference;->LOGD:Z

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "VolumePreference"

    const-string v3, "onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 183
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 188
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_1
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 190
    .local v0, myState:Lcom/htc/preference/HtcVolumePreference$SavedState;
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference;->mSeekBarVolumizer:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/htc/preference/HtcVolumePreference$SavedState;->getVolumeStore()Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V

    :cond_2
    move-object v1, v0

    .line 194
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/preference/HtcVolumePreference;->mStreamType:I

    .line 89
    return-void
.end method
