.class final Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;
.super Ljava/lang/Object;
.source "PendingNotificationsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->rescheduleMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;->val$account:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 247
    sget-object v6, Lcom/google/android/finsky/config/G;->vendingAlarmExpirationTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 250
    .local v0, expirationTimeout:J
    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;->val$account:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmTimeout(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 251
    .local v2, interval:J
    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    .line 255
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 269
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v6, Lcom/google/android/finsky/config/G;->vendingAlarmMaxTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 263
    .local v4, maxInterval:J
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 266
    sget-object v6, Lcom/google/android/finsky/config/G;->vendingAlarmMinTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 268
    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;->val$account:Ljava/lang/String;

    invoke-static {v6, v7, v2, v3}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method
