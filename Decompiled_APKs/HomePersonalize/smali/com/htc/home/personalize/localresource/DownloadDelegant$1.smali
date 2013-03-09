.class Lcom/htc/home/personalize/localresource/DownloadDelegant$1;
.super Ljava/lang/Object;
.source "DownloadDelegant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/localresource/DownloadDelegant;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/localresource/DownloadDelegant;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/localresource/DownloadDelegant;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->this$0:Lcom/htc/home/personalize/localresource/DownloadDelegant;

    iput-object p2, p0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, act:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v19

    .line 48
    .local v19, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/home/personalize/localresource/LocalResourceList;->reload2()V

    .line 176
    .end local v19           #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v26

    .line 60
    .local v26, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$intent:Landroid/content/Intent;

    const-string v3, "notificationextras"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 61
    .local v23, saveAs:Ljava/lang/String;
    const/4 v15, 0x0

    .line 62
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 63
    .local v9, bis:Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 64
    .local v11, bos:Ljava/io/BufferedOutputStream;
    const/4 v14, 0x0

    .line 65
    .local v14, count:I
    const/16 v22, 0x0

    .line 67
    .local v22, result:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "notificationextras"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 72
    if-eqz v15, :cond_11

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 73
    const-string v2, "status"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v22

    .line 74
    const-string v2, "_data"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, buffer:Ljava/lang/String;
    const-string v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    const-string v2, "notificationextras"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 80
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v25, v0

    .line 81
    .local v25, type:[I
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResource;->getGuidByPath(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v17

    .line 82
    .local v17, guid:Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->this$0:Lcom/htc/home/personalize/localresource/DownloadDelegant;

    const/4 v3, 0x0

    aget v3, v25, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v17

    #calls: Lcom/htc/home/personalize/localresource/DownloadDelegant;->startPicker(ILandroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v0}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->access$000(Lcom/htc/home/personalize/localresource/DownloadDelegant;ILandroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 126
    :cond_3
    if-eqz v11, :cond_4

    .line 128
    :try_start_1
    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 131
    :goto_1
    const/4 v11, 0x0

    .line 133
    :cond_4
    if-eqz v9, :cond_5

    .line 135
    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 138
    :goto_2
    const/4 v9, 0x0

    .line 140
    :cond_5
    if-eqz v15, :cond_1

    .line 141
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 89
    .end local v17           #guid:Ljava/lang/String;
    .end local v25           #type:[I
    :cond_7
    if-eqz v22, :cond_11

    .line 94
    const/16 v20, 0x0

    .line 95
    .local v20, relName:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 100
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    const/16 v20, 0x0

    .line 104
    :cond_8
    if-eqz v20, :cond_f

    .line 105
    new-instance v12, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .local v12, bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .line 109
    .end local v12           #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    :goto_3
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 112
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .local v10, bis:Ljava/io/BufferedInputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->read()I

    move-result v18

    .local v18, i:I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_10

    .line 113
    add-int/lit8 v14, v14, 0x1

    .line 114
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 121
    .end local v18           #i:I
    :catch_0
    move-exception v16

    move-object v9, v10

    .line 123
    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #buffer:Ljava/lang/String;
    .end local v20           #relName:Ljava/lang/String;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    .local v16, e:Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    if-eqz v11, :cond_9

    .line 128
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 131
    :goto_6
    const/4 v11, 0x0

    .line 133
    :cond_9
    if-eqz v9, :cond_a

    .line 135
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 138
    :goto_7
    const/4 v9, 0x0

    .line 140
    :cond_a
    if-eqz v15, :cond_c

    .line 141
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 142
    .end local v16           #e:Ljava/io/IOException;
    :cond_b
    :goto_8
    const/4 v15, 0x0

    .line 150
    :cond_c
    if-nez v22, :cond_d

    if-eqz v23, :cond_d

    .line 151
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v24, tmp:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_d

    .line 153
    invoke-static {}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: fail to delete tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v24           #tmp:Ljava/io/File;
    :cond_d
    if-eqz v23, :cond_e

    .line 163
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v25, v0

    .line 164
    .restart local v25       #type:[I
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResource;->getGuidByPath(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v17

    .line 165
    .restart local v17       #guid:Ljava/lang/String;
    const/4 v2, 0x0

    aget v2, v25, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v19

    .line 168
    .restart local v19       #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v19, :cond_18

    const/16 v21, 0x0

    .line 170
    .local v21, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_9
    if-eqz v21, :cond_e

    .line 171
    invoke-virtual/range {v21 .. v22}, Lcom/htc/home/personalize/localresource/LocalResource;->updateDownloadStatus(Z)V

    .line 175
    .end local v17           #guid:Ljava/lang/String;
    .end local v19           #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    .end local v21           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    .end local v25           #type:[I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->cancelOrRemove(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 107
    .restart local v13       #buffer:Ljava/lang/String;
    .restart local v20       #relName:Ljava/lang/String;
    :cond_f
    :try_start_8
    new-instance v12, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .restart local v12       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12           #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    goto/16 :goto_3

    .line 116
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    .restart local v18       #i:I
    :cond_10
    const/16 v22, 0x1

    move-object v9, v10

    .line 126
    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #buffer:Ljava/lang/String;
    .end local v18           #i:I
    .end local v20           #relName:Ljava/lang/String;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    :cond_11
    if-eqz v11, :cond_12

    .line 128
    :try_start_9
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 131
    :goto_a
    const/4 v11, 0x0

    .line 133
    :cond_12
    if-eqz v9, :cond_13

    .line 135
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 138
    :goto_b
    const/4 v9, 0x0

    .line 140
    :cond_13
    if-eqz v15, :cond_c

    .line 141
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 126
    :catchall_0
    move-exception v2

    :goto_c
    if-eqz v11, :cond_14

    .line 128
    :try_start_b
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 131
    :goto_d
    const/4 v11, 0x0

    .line 133
    :cond_14
    if-eqz v9, :cond_15

    .line 135
    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 138
    :goto_e
    const/4 v9, 0x0

    .line 140
    :cond_15
    if-eqz v15, :cond_17

    .line 141
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_16
    const/4 v15, 0x0

    .line 126
    :cond_17
    throw v2

    .line 168
    .restart local v17       #guid:Ljava/lang/String;
    .restart local v19       #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    .restart local v25       #type:[I
    :cond_18
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v21

    goto :goto_9

    .line 129
    .end local v17           #guid:Ljava/lang/String;
    .end local v19           #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    .end local v25           #type:[I
    :catch_1
    move-exception v3

    goto :goto_d

    .line 136
    :catch_2
    move-exception v3

    goto :goto_e

    .line 129
    .restart local v16       #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto/16 :goto_6

    .line 136
    :catch_4
    move-exception v2

    goto/16 :goto_7

    .line 129
    .end local v16           #e:Ljava/io/IOException;
    .restart local v13       #buffer:Ljava/lang/String;
    .restart local v17       #guid:Ljava/lang/String;
    .restart local v25       #type:[I
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .line 136
    :catch_6
    move-exception v2

    goto/16 :goto_2

    .line 129
    .end local v13           #buffer:Ljava/lang/String;
    .end local v17           #guid:Ljava/lang/String;
    .end local v25           #type:[I
    :catch_7
    move-exception v2

    goto :goto_a

    .line 136
    :catch_8
    move-exception v2

    goto :goto_b

    .line 126
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    .restart local v13       #buffer:Ljava/lang/String;
    .restart local v20       #relName:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto :goto_c

    .line 121
    .end local v13           #buffer:Ljava/lang/String;
    .end local v20           #relName:Ljava/lang/String;
    :catch_9
    move-exception v16

    goto/16 :goto_5
.end method
