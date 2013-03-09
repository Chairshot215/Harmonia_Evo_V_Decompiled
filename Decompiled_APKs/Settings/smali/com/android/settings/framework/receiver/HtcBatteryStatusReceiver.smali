.class public final Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbstractReceiver;
.source "HtcBatteryStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;,
        Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;,
        Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;,
        Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;,
        Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;
    }
.end annotation


# instance fields
.field private mOnBatteryStatusChangedListener:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;-><init>(Landroid/content/Context;)V

    .line 248
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    iget-object v4, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->mOnBatteryStatusChangedListener:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;

    if-nez v4, :cond_0

    .line 296
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;-><init>(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;)V

    .line 271
    .local v1, params:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;
    const-string v4, "icon-small"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->iconSmall:I

    .line 272
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->scale:I

    .line 273
    const-string v4, "present"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->present:Z

    .line 274
    const-string v4, "technology"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->technology:Ljava/lang/String;

    .line 275
    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->level:I

    .line 276
    const-string v4, "voltage"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->voltage:I

    .line 278
    const-string v4, "status"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 279
    .local v3, status:I
    invoke-static {v3}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->getBatteryStatus(I)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->status:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    .line 281
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 282
    .local v2, plugged:I
    invoke-static {v2}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->getBatteryPlugged(I)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->plugged:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    .line 284
    const-string v4, "health"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 285
    .local v0, health:I
    invoke-static {v0}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->getBatteryHealth(I)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->health:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 287
    const-string v4, "temperature"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->temperature:I

    .line 289
    iget v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->scale:I

    if-nez v4, :cond_1

    .line 290
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->percentage:F

    .line 295
    :goto_1
    iget-object v4, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->mOnBatteryStatusChangedListener:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;

    invoke-interface {v4, v1}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;->onBatteryStatusChanged(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;)V

    goto :goto_0

    .line 292
    :cond_1
    iget v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->level:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->scale:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->percentage:F

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 252
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setOnBatteryStatusChangedListener(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;->mOnBatteryStatusChangedListener:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$OnBatteryStatusChangedListener;

    .line 307
    return-void
.end method
