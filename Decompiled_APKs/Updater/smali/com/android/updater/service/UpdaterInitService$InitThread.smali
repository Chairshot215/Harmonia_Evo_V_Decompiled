.class Lcom/android/updater/service/UpdaterInitService$InitThread;
.super Ljava/lang/Thread;
.source "UpdaterInitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/service/UpdaterInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitThread"
.end annotation


# instance fields
.field isCustomizeChange:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/updater/service/UpdaterInitService;


# direct methods
.method public constructor <init>(Lcom/android/updater/service/UpdaterInitService;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "customizeChange"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    .line 194
    iput-boolean p3, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->isCustomizeChange:Z

    .line 195
    return-void
.end method

.method private checkInstall()V
    .locals 49

    .prologue
    .line 223
    new-instance v37, Ljava/io/File;

    const-string v3, "/data/data/recovery/HTCFOTA/update_result.log"

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v37, updateLog:Ljava/io/File;
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    const-string v4, "update_record"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v39

    .line 229
    .local v39, updateRecordIn:Ljava/io/FileInputStream;
    if-eqz v39, :cond_2

    .line 230
    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    .local v16, din:Ljava/io/DataInputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v45

    .line 232
    .local v45, updateTime:J
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v45, v3

    if-nez v3, :cond_1

    .line 233
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 476
    .end local v16           #din:Ljava/io/DataInputStream;
    .end local v39           #updateRecordIn:Ljava/io/FileInputStream;
    .end local v45           #updateTime:J
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v16       #din:Ljava/io/DataInputStream;
    .restart local v39       #updateRecordIn:Ljava/io/FileInputStream;
    .restart local v45       #updateTime:J
    :cond_1
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v16           #din:Ljava/io/DataInputStream;
    .end local v39           #updateRecordIn:Ljava/io/FileInputStream;
    .end local v45           #updateTime:J
    :cond_2
    :goto_1
    new-instance v35, Landroid/os/Bundle;

    invoke-direct/range {v35 .. v35}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v35, updateBundle:Landroid/os/Bundle;
    :try_start_1
    new-instance v29, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    move-object/from16 v0, v37

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    .local v29, reader:Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v26

    .line 249
    .local v26, log:Ljava/lang/String;
    if-nez v26, :cond_8

    .line 267
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 275
    .end local v26           #log:Ljava/lang/String;
    .end local v29           #reader:Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    const-string v4, "update_record"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v40

    .line 276
    .local v40, updateRecordOut:Ljava/io/FileOutputStream;
    if-eqz v40, :cond_4

    .line 277
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 278
    .local v17, dout:Ljava/io/DataOutputStream;
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 279
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 287
    .end local v17           #dout:Ljava/io/DataOutputStream;
    .end local v40           #updateRecordOut:Ljava/io/FileOutputStream;
    :cond_4
    :goto_4
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->delete()Z

    .line 291
    const-wide/16 v31, 0x0

    .line 293
    .local v31, timestamp:J
    :try_start_5
    const-string v3, "GMT+0"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v31

    .line 297
    :goto_5
    const-string v3, "time_stamp"

    move-object/from16 v0, v35

    move-wide/from16 v1, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 300
    new-instance v21, Landroid/content/Intent;

    const-string v3, "android.server.checkin.FOTA_INSTALL_COMPLETE"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v21, fotaComplete:Landroid/content/Intent;
    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    const-string v44, "NA"

    .line 308
    .local v44, updateStatus:Ljava/lang/String;
    :try_start_6
    const-string v3, "update_result"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 309
    .local v42, updateResultError:Ljava/lang/String;
    if-eqz v42, :cond_5

    const-string v3, "0"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 310
    const-string v3, "update_status"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 311
    const-string v3, "update_status"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v44

    .line 318
    .end local v42           #updateResultError:Ljava/lang/String;
    :cond_5
    :goto_6
    const-string v3, "update_status"

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    const-string v3, "update_result"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 325
    .local v41, updateResult:Ljava/lang/String;
    if-eqz v41, :cond_0

    const-string v3, "1"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    const-string v3, "file_path"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 328
    .local v38, updatePath:Ljava/lang/String;
    if-eqz v38, :cond_7

    .line 331
    const-string v3, "/"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 332
    .local v43, updateSplit:[Ljava/lang/String;
    if-eqz v43, :cond_6

    move-object/from16 v0, v43

    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    .line 334
    const/4 v3, 0x2

    aget-object v3, v43, v3

    const-string v4, "FUMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v43, v3

    const-string v4, "fumo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    :cond_6
    const-string v3, ":"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 342
    .local v34, update:[Ljava/lang/String;
    if-eqz v34, :cond_7

    move-object/from16 v0, v34

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_7

    .line 343
    const/4 v3, 0x1

    aget-object v3, v34, v3

    const-string v4, "FUMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v34, v3

    const-string v4, "fumo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    const/4 v3, 0x0

    aget-object v3, v34, v3

    const-string v4, "SDCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 349
    new-instance v36, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v34, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v36, updateFile:Ljava/io/File;
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 351
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z

    .line 359
    .end local v34           #update:[Ljava/lang/String;
    .end local v36           #updateFile:Ljava/io/File;
    .end local v43           #updateSplit:[Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/updater/service/UpdaterInitService$InitThread;->removeUpdateRecord()V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v9, alertIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/updater/ui/InstallSuccessActivity;

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 366
    const/high16 v3, 0x1000

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 238
    .end local v9           #alertIntent:Landroid/content/Intent;
    .end local v21           #fotaComplete:Landroid/content/Intent;
    .end local v31           #timestamp:J
    .end local v35           #updateBundle:Landroid/os/Bundle;
    .end local v38           #updatePath:Ljava/lang/String;
    .end local v41           #updateResult:Ljava/lang/String;
    .end local v44           #updateStatus:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 239
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterInitService"

    const-string v4, "fail to read update record"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 253
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v26       #log:Ljava/lang/String;
    .restart local v29       #reader:Ljava/io/BufferedReader;
    .restart local v35       #updateBundle:Landroid/os/Bundle;
    :cond_8
    :try_start_7
    const-string v3, "="

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 254
    .local v27, logArray:[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 255
    const/4 v3, 0x0

    aget-object v3, v27, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 256
    .local v28, name:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v11, builder:Ljava/lang/StringBuilder;
    const/16 v23, 0x1

    .local v23, i:I
    :goto_7
    move-object/from16 v0, v27

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_9

    .line 258
    aget-object v3, v27, v23

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 260
    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v47

    .line 261
    .local v47, value:Ljava/lang/String;
    if-eqz v28, :cond_3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 262
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 267
    .end local v11           #builder:Ljava/lang/StringBuilder;
    .end local v23           #i:I
    .end local v26           #log:Ljava/lang/String;
    .end local v27           #logArray:[Ljava/lang/String;
    .end local v28           #name:Ljava/lang/String;
    .end local v47           #value:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_8
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 269
    .end local v29           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v20

    .line 270
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterInitService"

    const-string v4, "checkInstallComplete exception"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 281
    .end local v20           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v20

    .line 282
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterInitService"

    const-string v4, "fail to read update record"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 294
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v31       #timestamp:J
    :catch_3
    move-exception v20

    .line 295
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterInitService"

    const-string v4, "timestamp exception "

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 314
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v21       #fotaComplete:Landroid/content/Intent;
    .restart local v44       #updateStatus:Ljava/lang/String;
    :catch_4
    move-exception v20

    .line 315
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterInitService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBundle getstring (update_result) error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 375
    .end local v20           #e:Ljava/lang/Exception;
    .end local v21           #fotaComplete:Landroid/content/Intent;
    .end local v31           #timestamp:J
    .end local v35           #updateBundle:Landroid/os/Bundle;
    .end local v44           #updateStatus:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 376
    .local v13, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v13, v3, v4}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 378
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v18, downloadIntent:Landroid/content/Intent;
    const-string v3, "name"

    const-string v4, "android.server.HTCcheckin.CHECKIN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "backup_action_string"

    const-string v6, "android.server.checkin.FOTA_UPDATE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "backup_uri_string"

    const/16 v6, 0xd

    invoke-static {v13, v6}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "download_sdcard"

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-static {v13, v6, v7}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "promptVersion"

    const/16 v6, 0x8

    invoke-static {v13, v6}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "promptFeature"

    const/16 v6, 0x9

    invoke-static {v13, v6}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "promptSize"

    const/16 v6, 0xa

    invoke-static {v13, v6}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "force_update"

    const/16 v6, 0xc

    invoke-static {v13, v6}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "optional"

    const/16 v6, 0x14

    invoke-static {v13, v6}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 396
    .end local v18           #downloadIntent:Landroid/content/Intent;
    :cond_b
    const/16 v22, 0x0

    .line 397
    .local v22, haveACURecord:Z
    const/16 v19, -0x270f

    .line 398
    .local v19, downloadStatus:I
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v5, v3

    .line 399
    .local v5, queryProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    invoke-virtual {v3}, Lcom/android/updater/service/UpdaterInitService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/updater/db/FOTADetail;->getAllApkUrl(Landroid/content/ContentResolver;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 400
    .local v10, apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 402
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 403
    .local v30, tempString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    invoke-virtual {v3}, Lcom/android/updater/service/UpdaterInitService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "entity=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 405
    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 406
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result v19

    .line 407
    const/16 v22, 0x1

    .line 415
    .end local v30           #tempString:Ljava/lang/String;
    :cond_d
    if-eqz v14, :cond_e

    .line 416
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 422
    .end local v24           #i$:Ljava/util/Iterator;
    :cond_e
    :goto_8
    if-eqz v22, :cond_10

    invoke-static/range {v19 .. v19}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    invoke-virtual {v3}, Lcom/android/updater/service/UpdaterInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    .line 431
    :goto_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v13, v3, v4}, Lcom/android/updater/db/COTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 433
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.server.HTCCOTA.COTA_UPDATE"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v12, cotaDownloadIntent:Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-static {v13, v3}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "zipFileSize"

    const/4 v6, 0x3

    invoke-static {v13, v6}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "unZipFileSize"

    const/4 v6, 0x4

    invoke-static {v13, v6}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "description"

    const/4 v6, 0x5

    invoke-static {v13, v6}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 411
    .end local v12           #cotaDownloadIntent:Landroid/content/Intent;
    :catch_5
    move-exception v20

    .line 412
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v3, "UpdaterAPK | UpdaterInitService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor get apk url error! "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 415
    if-eqz v14, :cond_e

    .line 416
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 415
    .end local v20           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v14, :cond_f

    .line 416
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3

    .line 427
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    invoke-virtual {v3}, Lcom/android/updater/service/UpdaterInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    goto :goto_9

    .line 445
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v33

    .line 446
    .local v33, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v15

    .line 448
    .local v15, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-eqz v15, :cond_13

    iget v3, v15, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v3}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 449
    iget-object v3, v15, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 450
    .local v25, isCacheFile:Z
    new-instance v3, Ljava/io/File;

    iget-object v4, v15, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    if-eqz v25, :cond_13

    .line 454
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-static {v3, v0, v15, v1}, Lcom/android/updater/util/UpdaterUtil;->verifyExistFOTAPackage(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;Lcom/android/updater/util/UpdaterUtil$DownloadInfo;Z)V

    .line 463
    .end local v25           #isCacheFile:Z
    :cond_13
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v13, v3, v4}, Lcom/android/updater/db/COTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/cwtemp/cwpkg.zip"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/cwtemp/cw.prop"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/cwtemp/cw.crc"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    new-instance v48, Lcom/android/updater/util/CotaVerifier;

    invoke-direct/range {v48 .. v48}, Lcom/android/updater/util/CotaVerifier;-><init>()V

    .line 468
    .local v48, verifier:Lcom/android/updater/util/CotaVerifier;
    invoke-virtual/range {v48 .. v48}, Lcom/android/updater/util/CotaVerifier;->isChecksumSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.server.HTCCOTA.CONFIRM_INSTALL"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/updater/service/UpdaterInitService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private removeUpdateRecord()V
    .locals 5

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/htcCheckin$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | UpdaterInitService"

    const-string v2, "Could not remove update record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v3, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setup_wizard_has_run"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 200
    .local v0, oobeComplete:Z
    :goto_0
    iget-object v3, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4, v2}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v1

    .line 204
    .local v1, settingExist:Z
    iget-boolean v2, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->isCustomizeChange:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    if-eqz v1, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/android/updater/service/UpdaterInitService$InitThread;->checkInstall()V

    .line 209
    iget-object v2, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    invoke-virtual {v2}, Lcom/android/updater/service/UpdaterInitService;->stopSelf()V

    .line 216
    :cond_1
    :goto_1
    return-void

    .end local v0           #oobeComplete:Z
    .end local v1           #settingExist:Z
    :cond_2
    move v0, v2

    .line 198
    goto :goto_0

    .line 212
    .restart local v0       #oobeComplete:Z
    .restart local v1       #settingExist:Z
    :cond_3
    new-instance v2, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;

    iget-object v3, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    iget-object v4, p0, Lcom/android/updater/service/UpdaterInitService$InitThread;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;-><init>(Lcom/android/updater/service/UpdaterInitService;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->start()V

    goto :goto_1
.end method
