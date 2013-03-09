.class public abstract Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractBatteryStatusPreference.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;


# instance fields
.field mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

.field mEventParams:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 38
    const v0, 0x101008d

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-object v1, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mEventParams:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->initialize()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mEventParams:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->initialize()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mEventParams:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->initialize()V

    .line 51
    return-void
.end method


# virtual methods
.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected initialize()V
    .locals 4

    .prologue
    .line 55
    new-instance v2, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    .line 57
    iget-object v2, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v2, p0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->setOnBatteryStatusChangedListener(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->setSelectable(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->setKey(Ljava/lang/String;)V

    .line 75
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->updateSummary()V

    .line 90
    return-void
.end method

.method public registerReceiver()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->registerReceiver()V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mEventParams:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mEventParams:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "The battery info resource has released."

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/preference/battery/HtcAbstractBatteryStatusPreference;->mBatteryStatusReceiver:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->unregisterReceiver()V

    .line 128
    return-void
.end method

.method public abstract updateSummary()V
.end method
