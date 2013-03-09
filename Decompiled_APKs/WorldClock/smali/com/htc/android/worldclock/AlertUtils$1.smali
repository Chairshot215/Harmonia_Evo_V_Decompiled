.class final Lcom/htc/android/worldclock/AlertUtils$1;
.super Ljava/lang/Object;
.source "AlertUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/worldclock/AlertUtils$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/htc/android/worldclock/AlertUtils$1;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 55
    iget-object v2, p0, Lcom/htc/android/worldclock/AlertUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getAlarm(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const-string v2, "Alarm flash setting is false"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/htc/android/worldclock/AlertUtils;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 60
    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/AlertUtils;->access$100()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/android/worldclock/AlertUtils$1;->val$id:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 61
    const-string v2, "Alarm closed"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 62
    monitor-exit v3

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 64
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/htc/android/worldclock/AlertUtils;->access$200()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/android/worldclock/AlertUtils$1;->val$id:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 65
    const-string v2, "Alarm closed"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 66
    monitor-exit v3

    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 70
    .local v1, notification:Landroid/app/Notification;
    sget-boolean v2, Lcom/htc/android/worldclock/Global;->JOGBALL_DEVICE:Z

    if-eqz v2, :cond_3

    .line 71
    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 72
    const/4 v2, 0x3

    iput v2, v1, Landroid/app/Notification;->jogMode:I

    .line 77
    :goto_1
    iget-object v2, p0, Lcom/htc/android/worldclock/AlertUtils$1;->val$context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 79
    .local v0, nm:Landroid/app/NotificationManager;
    iget v2, p0, Lcom/htc/android/worldclock/AlertUtils$1;->val$id:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 80
    monitor-exit v3

    goto :goto_0

    .line 74
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_3
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
