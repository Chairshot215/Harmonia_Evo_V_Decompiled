.class final Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;
.super Ljava/lang/Object;
.source "HtcAppUsageStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HtcAppDeathRecipient"
.end annotation


# instance fields
.field final observer:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/htc/server/HtcAppUsageStatsService;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAppUsageStatsService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;->observer:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    #getter for: Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/server/HtcAppUsageStatsService;->access$000(Lcom/htc/server/HtcAppUsageStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    #getter for: Lcom/htc/server/HtcAppUsageStatsService;->mObserverMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/server/HtcAppUsageStatsService;->access$100(Lcom/htc/server/HtcAppUsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;->observer:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    #getter for: Lcom/htc/server/HtcAppUsageStatsService;->mRecipientMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/server/HtcAppUsageStatsService;->access$200(Lcom/htc/server/HtcAppUsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;->observer:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
