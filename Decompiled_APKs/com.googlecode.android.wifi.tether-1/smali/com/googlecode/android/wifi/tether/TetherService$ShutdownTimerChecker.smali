.class Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;
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
    name = "ShutdownTimerChecker"
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
    .line 1227
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendShutdownBroadcast()V
    .locals 3

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    .line 1262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    const-string v1, "state"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v1, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1266
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1231
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v6

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v7, "shutdowntimerlimitpref"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v4, v6

    .line 1232
    .local v4, timerMilliseconds:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v6, v4

    .line 1234
    .local v2, endTimer:J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1255
    return-void

    .line 1236
    :cond_0
    new-array v0, v10, [J

    .line 1238
    .local v0, countdowntimer:[J
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v2, v7

    aput-wide v7, v0, v6

    .line 1241
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v6, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendTimerBroadcast([J)V

    .line 1243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_1

    .line 1244
    const-string v6, "TetherService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Automatic Shutdown: Timer expired at..."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v9, "shutdowntimerlimitpref"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minute(s)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v6

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "autoshutdowntimer"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1246
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v6

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1247
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;->sendShutdownBroadcast()V

    .line 1250
    :cond_1
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v1

    .line 1252
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
