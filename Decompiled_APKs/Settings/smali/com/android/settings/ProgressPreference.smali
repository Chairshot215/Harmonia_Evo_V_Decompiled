.class public Lcom/android/settings/ProgressPreference;
.super Lcom/htc/preference/HtcPreference;
.source "ProgressPreference.java"


# static fields
.field private static mProgress:I


# instance fields
.field private mColorData:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ProgressPreference;->mColorData:I

    .line 35
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressPreference;->setLayoutResource(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 64
    const v2, 0x7f080124

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BatteryBar;

    .line 66
    .local v0, target:Lcom/android/settings/BatteryBar;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, title:Landroid/view/View;
    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/TextView;

    .end local v1           #title:Landroid/view/View;
    const v2, 0x7f0c0a33

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_0
    if-eqz v0, :cond_2

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/BatteryBar;->setVisibility(I)V

    .line 72
    iget v2, p0, Lcom/android/settings/ProgressPreference;->mColorData:I

    if-eqz v2, :cond_1

    .line 73
    iget v2, p0, Lcom/android/settings/ProgressPreference;->mColorData:I

    invoke-virtual {v0, v2}, Lcom/android/settings/BatteryBar;->setFixedDrawable(I)Z

    .line 74
    :cond_1
    sget v2, Lcom/android/settings/ProgressPreference;->mProgress:I

    invoke-virtual {v0, v2}, Lcom/android/settings/BatteryBar;->setProgress(I)V

    .line 76
    :cond_2
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, target:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 58
    return-object v0
.end method

.method public setFixedColorType(I)V
    .locals 0
    .parameter "colorData"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings/ProgressPreference;->mColorData:I

    .line 80
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-lt v0, p1, :cond_0

    .line 84
    sput p1, Lcom/android/settings/ProgressPreference;->mProgress:I

    .line 86
    :cond_0
    return-void
.end method
