.class Lcom/htc/android/worldclock/AlarmAlert$6;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->StopAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$6;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$6;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mKlaxonLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1800(Lcom/htc/android/worldclock/AlarmAlert;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$6;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1900(Lcom/htc/android/worldclock/AlarmAlert;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$6;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1900(Lcom/htc/android/worldclock/AlarmAlert;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$6;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$6;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mSnoozed:Z
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmAlert;->access$1300(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/worldclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 345
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$6;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v2, 0x0

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0, v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1902(Lcom/htc/android/worldclock/AlarmAlert;Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 347
    :cond_0
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
