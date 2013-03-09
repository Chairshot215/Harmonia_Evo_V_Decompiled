.class Lcom/android/updater/VerifyReceiver$VerifierRunner;
.super Ljava/lang/Thread;
.source "VerifyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/VerifyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerifierRunner"
.end annotation


# static fields
.field private static jobRunning:Z

.field private static final lockObj:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mUpdate:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->lockObj:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->jobRunning:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "update"

    .prologue
    .line 77
    const-string v0, "VerifierRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mIntent:Landroid/content/Intent;

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mUpdate:Ljava/io/File;

    .line 81
    return-void
.end method

.method private hasClearUserdataInfo(Ljava/io/File;)Z
    .locals 7
    .parameter "zipfile"

    .prologue
    .line 88
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 89
    .local v4, zip:Ljava/util/zip/ZipFile;
    if-eqz v4, :cond_1

    .line 90
    const-string v5, "META-INF/com/google/android/updater-script"

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 91
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 92
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    .local v0, bf:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 95
    .local v3, s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 97
    const-string v5, "^format\\(.*userdata\".*\\);"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const-string v5, "UpdaterAPK | VerifyReceiver"

    const-string v6, "Image upgrade will clean userdata."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v5, 0x1

    .line 108
    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :goto_0
    return v5

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "UpdaterAPK | VerifyReceiver"

    const-string v6, "Error reading zip file."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 113
    sget-object v18, Lcom/android/updater/VerifyReceiver$VerifierRunner;->lockObj:Ljava/lang/Object;

    monitor-enter v18

    .line 114
    :try_start_0
    sget-boolean v17, Lcom/android/updater/VerifyReceiver$VerifierRunner;->jobRunning:Z

    if-eqz v17, :cond_0

    .line 115
    const-string v17, "UpdaterAPK | VerifyReceiver"

    const-string v19, "Warning! Verification is running in progress."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v18

    .line 215
    :goto_0
    return-void

    .line 119
    :cond_0
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/updater/VerifyReceiver$VerifierRunner;->jobRunning:Z

    .line 120
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 125
    .local v10, pm:Landroid/os/PowerManager;
    const/16 v17, 0x1

    const-string v18, "UpdateVerifier"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    .line 126
    .local v16, wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 129
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mUpdate:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/updater/VerifyReceiver$VerifierRunner;->hasClearUserdataInfo(Ljava/io/File;)Z

    move-result v3

    .line 131
    .local v3, cleanUserdata:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "enable_verify"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/updater/VerifyReceiver;->access$000()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mUpdate:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/updater/util/UpdateVerifier;->verifyPackage(Ljava/io/File;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/updater/VerifyReceiver;->access$000()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 143
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "enable_verify"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 146
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .local v14, verifyBundle:Landroid/os/Bundle;
    const-wide/16 v11, 0x0

    .line 149
    .local v11, timestamp:J
    :try_start_2
    const-string v17, "GMT+0"

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v11

    .line 153
    :goto_2
    :try_start_3
    const-string v17, "status"

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v17, "time_stamp"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.server.checkin.FOTA_VERIFY_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v15, verifyComplete:Landroid/content/Intent;
    invoke-virtual {v15, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    const-string v17, "UpdaterAPK | VerifyReceiver"

    const-string v18, "Send verify complete intent, successful case"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.server.checkin.FOTA_READY"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v8, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 169
    const-string v17, "cleanUserdata"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    :cond_1
    const-string v17, "_ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "_ID"

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v17, "updateFile"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mUpdate:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v17, "updateLength"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mUpdate:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    const-string v17, "firstPrompt"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    const-string v17, "UpdaterAPK | VerifyReceiver"

    const-string v18, "Verify OK. Ready to install"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 210
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 211
    sget-object v18, Lcom/android/updater/VerifyReceiver$VerifierRunner;->lockObj:Ljava/lang/Object;

    monitor-enter v18

    .line 212
    const/16 v17, 0x0

    :try_start_4
    sput-boolean v17, Lcom/android/updater/VerifyReceiver$VerifierRunner;->jobRunning:Z

    .line 213
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .line 120
    .end local v3           #cleanUserdata:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #pm:Landroid/os/PowerManager;
    .end local v11           #timestamp:J
    .end local v14           #verifyBundle:Landroid/os/Bundle;
    .end local v15           #verifyComplete:Landroid/content/Intent;
    .end local v16           #wakelock:Landroid/os/PowerManager$WakeLock;
    :catchall_1
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v17

    .line 140
    .restart local v3       #cleanUserdata:Z
    .restart local v10       #pm:Landroid/os/PowerManager;
    .restart local v16       #wakelock:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :try_start_6
    const-string v17, "UpdaterAPK | VerifyReceiver"

    const-string v18, "Skip verify, just send pester intent"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 178
    .end local v3           #cleanUserdata:Z
    :catch_0
    move-exception v5

    .line 179
    .local v5, e:Ljava/lang/Exception;
    :try_start_7
    const-string v17, "UpdaterAPK | VerifyReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Verification for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mUpdate:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/htcCheckin$Events$Tag;->FOTA_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/htcCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mUpdate:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 185
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 186
    .restart local v14       #verifyBundle:Landroid/os/Bundle;
    const-wide/16 v11, 0x0

    .line 188
    .restart local v11       #timestamp:J
    :try_start_8
    const-string v17, "GMT+0"

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-wide v11

    .line 192
    :goto_3
    :try_start_9
    const-string v17, "status"

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v17, "time_stamp"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    const-string v17, "error_code"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.server.checkin.FOTA_VERIFY_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v15       #verifyComplete:Landroid/content/Intent;
    invoke-virtual {v15, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    const-string v17, "UpdaterAPK | VerifyReceiver"

    const-string v18, "Send verify complete intent, failure case"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v4, 0x7

    .line 202
    .local v4, code:I
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, msg:Ljava/lang/String;
    const-string v13, "manual"

    .line 205
    .local v13, trigger:Ljava/lang/String;
    const-string v17, "UpdaterAPK | VerifyReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Broadcast Checkin Event ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", trigger by "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.server.checkin.FOTA_EVENT"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v7, evIntent:Landroid/content/Intent;
    const-string v17, "errno"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const-string v18, "trigger"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/VerifyReceiver$VerifierRunner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 210
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 211
    sget-object v18, Lcom/android/updater/VerifyReceiver$VerifierRunner;->lockObj:Ljava/lang/Object;

    monitor-enter v18

    .line 212
    const/16 v17, 0x0

    :try_start_a
    sput-boolean v17, Lcom/android/updater/VerifyReceiver$VerifierRunner;->jobRunning:Z

    .line 213
    monitor-exit v18

    goto/16 :goto_0

    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v17

    .line 150
    .end local v4           #code:I
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #evIntent:Landroid/content/Intent;
    .end local v9           #msg:Ljava/lang/String;
    .end local v13           #trigger:Ljava/lang/String;
    .end local v15           #verifyComplete:Landroid/content/Intent;
    .restart local v3       #cleanUserdata:Z
    :catch_1
    move-exception v5

    .line 151
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v17, "UpdaterAPK | VerifyReceiver"

    const-string v18, "timestamp exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 210
    .end local v3           #cleanUserdata:Z
    .end local v5           #e:Ljava/lang/Exception;
    .end local v11           #timestamp:J
    .end local v14           #verifyBundle:Landroid/os/Bundle;
    :catchall_3
    move-exception v17

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 211
    sget-object v18, Lcom/android/updater/VerifyReceiver$VerifierRunner;->lockObj:Ljava/lang/Object;

    monitor-enter v18

    .line 212
    const/16 v19, 0x0

    :try_start_c
    sput-boolean v19, Lcom/android/updater/VerifyReceiver$VerifierRunner;->jobRunning:Z

    .line 213
    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 210
    throw v17

    .line 189
    .restart local v5       #e:Ljava/lang/Exception;
    .restart local v11       #timestamp:J
    .restart local v14       #verifyBundle:Landroid/os/Bundle;
    :catch_2
    move-exception v6

    .line 190
    .local v6, et:Ljava/lang/Exception;
    :try_start_d
    const-string v17, "UpdaterAPK | VerifyReceiver"

    const-string v18, "timestamp exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_3

    .line 213
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #et:Ljava/lang/Exception;
    .end local v11           #timestamp:J
    .end local v14           #verifyBundle:Landroid/os/Bundle;
    :catchall_4
    move-exception v17

    :try_start_e
    monitor-exit v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v17
.end method
