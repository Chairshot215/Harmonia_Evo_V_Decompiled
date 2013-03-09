.class public Lcom/android/settings/ToggleSwitch;
.super Lcom/htc/widget/HtcToggleButton;
.source "ToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 34
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/settings/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 21
    return-void
.end method
