.class public Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;
.super Lcom/htc/preference/HtcSeekBarDialogPreference;
.source "StrokeSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;
    }
.end annotation


# instance fields
.field private mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarMax:I

.field private mSeekBarProgress:I

.field private mTmpSeekBarProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarMax:I

    .line 34
    iput v1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarProgress:I

    .line 35
    iput v1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mTmpSeekBarProgress:I

    .line 40
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarProgress:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 46
    invoke-static {p1}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 47
    iget-object v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 51
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mTmpSeekBarProgress:I

    iput v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarProgress:I

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;

    iget v1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarProgress:I

    invoke-interface {v0, p0, v1}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;->onProgressSubmitted(Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;I)V

    .line 76
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 55
    iput p2, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mTmpSeekBarProgress:I

    .line 57
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 60
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 64
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 79
    iput p1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarMax:I

    .line 80
    return-void
.end method

.method public setOnProgressSubmittedListener(Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;

    .line 108
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 87
    iput p1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mSeekBarProgress:I

    iput p1, p0, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->mTmpSeekBarProgress:I

    .line 88
    return-void
.end method
