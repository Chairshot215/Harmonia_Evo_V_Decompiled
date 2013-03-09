.class Lcom/htc/android/worldclock/AlarmAlert$7;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->muteAlarm()V
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
    .line 354
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$7;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$7;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$7;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1900(Lcom/htc/android/worldclock/AlarmAlert;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$7;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1900(Lcom/htc/android/worldclock/AlarmAlert;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$7;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v0, v2}, Lcom/htc/android/worldclock/AlarmKlaxon;->mute(Landroid/content/Context;)V

    .line 361
    :cond_0
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
