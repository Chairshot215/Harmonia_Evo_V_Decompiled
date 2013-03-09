.class public Lcom/android/settings/framework/widget/HtcToggleButton;
.super Lcom/htc/widget/HtcToggleButton;
.source "HtcToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;,
        Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;
    }
.end annotation


# instance fields
.field private mOnEnabledChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;

.field private mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnEnabledChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnEnabledChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;->onEnabledChange(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setOnEnabledChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnEnabledChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;

    .line 96
    return-void
.end method

.method public setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;

    .line 86
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;

    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;->onToggleChange(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :goto_1
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    invoke-super {p0}, Lcom/htc/widget/HtcToggleButton;->toggle()V

    goto :goto_1
.end method
