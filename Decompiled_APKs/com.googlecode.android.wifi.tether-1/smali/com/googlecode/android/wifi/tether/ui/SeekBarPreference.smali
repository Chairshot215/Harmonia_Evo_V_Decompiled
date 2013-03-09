.class public Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mDialogMessage:Ljava/lang/String;

.field private mMax:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSplashText:Landroid/widget/TextView;

.field private mSuffix:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v4, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    .line 26
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "dialogMessage"

    invoke-interface {p2, v1, v2, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mContext:Landroid/content/Context;

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "text"

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 30
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mDefault:I

    .line 31
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    const/16 v2, 0x64

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mMax:I

    .line 32
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 68
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x6

    .line 36
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 40
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    .line 41
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 46
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const/high16 v3, 0x4200

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 54
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 55
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->getPersistedInt(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mMax:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 61
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 62
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seek"
    .parameter "value"
    .parameter "fromTouch"

    .prologue
    .line 82
    if-gtz p2, :cond_0

    .line 83
    const/4 p2, 0x1

    .line 84
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, t:Ljava/lang/String;
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v2, :cond_2

    .end local v0           #t:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0, p2}, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->persistInt(I)Z

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 89
    return-void

    .line 85
    .restart local v0       #t:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restore"
    .parameter "defaultValue"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    .line 78
    .end local p2
    :goto_1
    return-void

    .line 75
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 90
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 91
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 93
    iput p1, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mMax:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 97
    iput p1, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mValue:I

    .line 98
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/ui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    :cond_0
    return-void
.end method
