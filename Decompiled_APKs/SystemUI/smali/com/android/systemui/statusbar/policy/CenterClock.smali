.class public Lcom/android/systemui/statusbar/policy/CenterClock;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "CenterClock.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CenterClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CenterClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->observe()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CenterClock;->updateSettings()V

    return-void
.end method


# virtual methods
.method protected updateSettings()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_clock_style"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/CenterClock;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/CenterClock;->setVisibility(I)V

    goto :goto_1
.end method
