.class Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownIdleChecker"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 0
    .parameter

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendShutdownBroadcast()V
    .locals 3

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    .line 1219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    const-string v1, "state"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1222
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v1, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1223
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1190
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v4}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v5, "shutdownidlepref"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 1191
    .local v2, idleMilliseconds:J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1212
    return-void

    .line 1193
    :cond_0
    new-array v0, v9, [J

    .line 1195
    .local v0, countdown:[J
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-wide v5, v5, Lcom/googlecode/android/wifi/tether/TetherService;->timestampCounterUpdate:J

    add-long/2addr v5, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    aput-wide v5, v0, v4

    .line 1198
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v4, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendCountdownBroadcast([J)V

    .line 1200
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-wide v4, v4, Lcom/googlecode/android/wifi/tether/TetherService;->timestampCounterUpdate:J

    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1201
    const-string v4, "TetherService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Automatic Shutdown: Idle time reached..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v6

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v7, "shutdownidlepref"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minute(s)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v4}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "autoshutdownidle"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1203
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v4}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1204
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;->sendShutdownBroadcast()V

    .line 1207
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1208
    :catch_0
    move-exception v1

    .line 1209
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
