.class Lcom/android/providers/htcCheckin/UpdateReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/UpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkPreviousDownloads(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 16
    .parameter "context"
    .parameter "intent"
    .parameter "url"

    .prologue
    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 291
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 294
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$700()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "entity=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    :goto_0
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 298
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 299
    .local v14, status:I
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 300
    .local v15, update:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 301
    .local v10, modified:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 303
    .local v12, now:J
    invoke-static {v14}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 304
    cmp-long v3, v12, v10

    if-ltz v3, :cond_0

    sub-long v3, v12, v10

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 305
    :cond_0
    const-string v3, "htcCheckinService"

    const-string v4, "Restarting expired download."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v10           #modified:J
    .end local v12           #now:J
    .end local v14           #status:I
    .end local v15           #update:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 328
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "htcCheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when query download provider. error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    if-eqz v8, :cond_1

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v8, 0x0

    .line 335
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    return v3

    .line 308
    .restart local v10       #modified:J
    .restart local v12       #now:J
    .restart local v14       #status:I
    .restart local v15       #update:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v3, "htcCheckinService"

    const-string v4, "Update is already being downloaded."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 309
    const/4 v3, 0x1

    .line 330
    if-eqz v8, :cond_2

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v8, 0x0

    goto :goto_2

    .line 311
    :cond_4
    :try_start_3
    invoke-static {v14}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 312
    const-string v3, "htcCheckinService"

    const-string v4, "Previous update download failed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 330
    .end local v10           #modified:J
    .end local v12           #now:J
    .end local v14           #status:I
    .end local v15           #update:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_5

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v8, 0x0

    :cond_5
    throw v3

    .line 314
    .restart local v10       #modified:J
    .restart local v12       #now:J
    .restart local v14       #status:I
    .restart local v15       #update:Ljava/lang/String;
    :cond_6
    if-nez v15, :cond_7

    .line 315
    :try_start_4
    const-string v3, "htcCheckinService"

    const-string v4, "Previous update download missing."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    :cond_7
    const-string v3, "checkFile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 318
    const-string v3, "htcCheckinService"

    const-string v4, "Previous update download loss."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_8
    const-string v3, "htcCheckinService"

    const-string v4, "Start verify since previous download is ready"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v3, "_ID"

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v15}, Lcom/android/providers/htcCheckin/UpdateReceiver;->startVerify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    const/4 v3, 0x1

    .line 330
    if-eqz v8, :cond_2

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v8, 0x0

    goto :goto_2

    .line 330
    .end local v10           #modified:J
    .end local v12           #now:J
    .end local v14           #status:I
    .end local v15           #update:Ljava/lang/String;
    :cond_9
    if-eqz v8, :cond_1

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getDownloadLocation()I
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/android/providers/htcCheckin/UpdateReceiver;->isSavetoExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 181
    iget-object v7, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->IsHtcCheckin(Landroid/content/Intent;)Z
    invoke-static {v7, p2}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$000(Lcom/android/providers/htcCheckin/UpdateReceiver;Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 182
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent is not from HTC checkin server "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v7, "message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, strNotifyCaption:Ljava/lang/String;
    const-string v7, "message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 189
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUpdateReceiver() : received msg = \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, updateUrl:Ljava/lang/String;
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received update intent to download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 198
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update is not HTTP(S): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 202
    :cond_2
    invoke-static {}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$100()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 203
    const-wide/32 v7, -0x2932e00

    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$202(J)J

    .line 205
    :cond_3
    invoke-static {p2}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$102(Landroid/content/Intent;)Landroid/content/Intent;

    .line 207
    invoke-direct {p0, p1, p2, v5}, Lcom/android/providers/htcCheckin/UpdateReceiver$1;->checkPreviousDownloads(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 213
    iget-object v7, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    #getter for: Lcom/android/providers/htcCheckin/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$300(Lcom/android/providers/htcCheckin/UpdateReceiver;)Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->removeAllDownloads(Landroid/content/Context;)V
    invoke-static {v7}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$400(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 217
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/Checkin$Events$Tag;->FOTA_BEGIN:Landroid/provider/Checkin$Events$Tag;

    invoke-static {v1, v7, v5}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 220
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "wifiOnly"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 222
    .local v3, isWifiOnly:Z
    if-eqz v3, :cond_4

    .line 224
    const-string v7, "htcCheckinService"

    const-string v8, "User selected to download image by WIFI only."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v7, "restriction"

    const/16 v8, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    :goto_1
    const-string v7, "otaupdate"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    const-string v7, "uri"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v7, "entity"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v7, "notificationextras"

    const-string v8, "skipcheckmimetype"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v7, "destination"

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/UpdateReceiver$1;->getDownloadLocation()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v7, "visibility"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v7, "title"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v7, "hint"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v7, "no_integrity"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 251
    const-string v7, "notificationpackage"

    const-string v8, "com.android.providers.htcCheckin"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v7, "notificationclass"

    invoke-static {}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$500()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    #getter for: Lcom/android/providers/htcCheckin/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$300(Lcom/android/providers/htcCheckin/UpdateReceiver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.updater"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 263
    .local v0, OtherUid:I
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Insert Download task: OTHER_UID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v7, "otheruid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v0           #OtherUid:I
    :goto_2
    :try_start_1
    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_5

    .line 272
    new-instance v7, Landroid/database/SQLException;

    const-string v8, "Could not insert update download"

    invoke-direct {v7, v8}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "htcCheckinService"

    const-string v8, "Could not start update download"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    sget-object v7, Landroid/provider/Checkin$Events$Tag;->FOTA_FAILURE:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 279
    .end local v2           #e:Ljava/lang/Exception;
    :goto_3
    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->saveUpdateInfo(Landroid/content/ContentResolver;Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$600(Landroid/content/ContentResolver;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 231
    :cond_4
    const-string v7, "htcCheckinService"

    const-string v8, "Set Restriction: NO ROAMING"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v7, "restriction"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 265
    :catch_1
    move-exception v2

    .line 267
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Insert Download task: OTHER_UID = Could not find the updater package. e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 274
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :try_start_2
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Started a new update download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
