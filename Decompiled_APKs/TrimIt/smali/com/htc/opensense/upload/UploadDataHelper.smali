.class public Lcom/htc/opensense/upload/UploadDataHelper;
.super Ljava/lang/Object;
.source "UploadDataHelper.java"


# static fields
.field public static final DELAY_MILLIS:I = 0x1388

.field private static final INSERT_LIMIT:I = 0xa

.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "UploadDataHelper"

    sput-object v0, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized batchUpload(Landroid/content/Context;Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 30
    .parameter "context"
    .parameter "batch"
    .parameter "name"
    .parameter "serviceTitle"
    .parameter "intent"
    .parameter "privacy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    const-class v27, Lcom/htc/opensense/upload/UploadDataHelper;

    monitor-enter v27

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 46
    .local v7, cr:Landroid/content/ContentResolver;
    const-wide/16 v5, -0x1

    .line 47
    .local v5, batchId:J
    sget-object v26, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    const-string v28, "batch upload start insert"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v21, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/htc/opensense/upload/UploadDataHelper;->getBatchIdByCategory(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 53
    .local v3, batchCategoryId:J
    const-wide/16 v28, -0x1

    cmp-long v26, v3, v28

    if-nez v26, :cond_1

    .line 54
    sget-object v26, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-static/range {p1 .. p3}, Lcom/htc/opensense/upload/Uploads$BatchColumns;->getInsertValues(Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/htc/opensense/upload/UploadDataHelper;->getMediaInsertValues(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 66
    .local v20, mediaValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 67
    .local v19, length:I
    move/from16 v0, v19

    new-array v12, v0, [J

    .line 68
    .local v12, dataIds:[J
    const/4 v8, 0x0

    .line 69
    .local v8, currentIdx:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v14, v0, :cond_6

    .line 70
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ContentValues;

    move-object/from16 v0, v26

    invoke-static {v0, v5, v6}, Lcom/htc/opensense/upload/UploadDataHelper;->getInsertItemOperation(Landroid/content/ContentValues;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    rem-int/lit8 v26, v14, 0xa
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v28, 0x9

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_3

    .line 74
    :cond_0
    :try_start_1
    sget-object v26, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    const-string v28, "apply batch"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v26, "com.htc.providers.uploads"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    .line 77
    .local v22, results:[Landroid/content/ContentProviderResult;
    if-eqz v22, :cond_5

    .line 78
    const/16 v18, 0x0

    .local v18, j:I
    move v9, v8

    .end local v8           #currentIdx:I
    .local v9, currentIdx:I
    :goto_2
    :try_start_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 79
    const-wide/16 v28, -0x1

    cmp-long v26, v5, v28

    if-nez v26, :cond_2

    .line 80
    aget-object v26, v22, v18

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 81
    sget-object v26, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "batch id = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_4

    move v8, v9

    .line 78
    .end local v9           #currentIdx:I
    .restart local v8       #currentIdx:I
    :goto_3
    add-int/lit8 v18, v18, 0x1

    move v9, v8

    .end local v8           #currentIdx:I
    .restart local v9       #currentIdx:I
    goto :goto_2

    .line 59
    .end local v9           #currentIdx:I
    .end local v12           #dataIds:[J
    .end local v14           #i:I
    .end local v18           #j:I
    .end local v19           #length:I
    .end local v20           #mediaValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v22           #results:[Landroid/content/ContentProviderResult;
    :cond_1
    :try_start_3
    sget-object v26, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Category exists:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", batch id:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    move-wide v5, v3

    goto/16 :goto_0

    .line 84
    .restart local v9       #currentIdx:I
    .restart local v12       #dataIds:[J
    .restart local v14       #i:I
    .restart local v18       #j:I
    .restart local v19       #length:I
    .restart local v20       #mediaValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v22       #results:[Landroid/content/ContentProviderResult;
    :cond_2
    :try_start_4
    aget-object v26, v22, v18

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v16

    .line 85
    .local v16, id:J
    add-int/lit8 v8, v9, 0x1

    .end local v9           #currentIdx:I
    .restart local v8       #currentIdx:I
    :try_start_5
    aput-wide v16, v12, v9

    .line 86
    sget-object v26, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "id = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 91
    .end local v16           #id:J
    .end local v18           #j:I
    .end local v22           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v13

    .line 93
    .local v13, e:Landroid/os/RemoteException;
    :goto_4
    :try_start_6
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_3
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .end local v8           #currentIdx:I
    .restart local v9       #currentIdx:I
    .restart local v18       #j:I
    .restart local v22       #results:[Landroid/content/ContentProviderResult;
    :cond_4
    move v8, v9

    .line 90
    .end local v9           #currentIdx:I
    .end local v18           #j:I
    .restart local v8       #currentIdx:I
    :cond_5
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 94
    .end local v22           #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v13

    .line 96
    .local v13, e:Landroid/content/OperationApplicationException;
    :goto_6
    :try_start_8
    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 45
    .end local v3           #batchCategoryId:J
    .end local v5           #batchId:J
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v8           #currentIdx:I
    .end local v12           #dataIds:[J
    .end local v13           #e:Landroid/content/OperationApplicationException;
    .end local v14           #i:I
    .end local v19           #length:I
    .end local v20           #mediaValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v26

    monitor-exit v27

    throw v26

    .line 103
    .restart local v3       #batchCategoryId:J
    .restart local v5       #batchId:J
    .restart local v7       #cr:Landroid/content/ContentResolver;
    .restart local v8       #currentIdx:I
    .restart local v12       #dataIds:[J
    .restart local v14       #i:I
    .restart local v19       #length:I
    .restart local v20       #mediaValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v21       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    :try_start_9
    const-string v26, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 105
    .local v24, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v24, :cond_8

    .line 106
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    .line 107
    .local v23, tag:Landroid/os/Bundle;
    const-string v26, "com.htc.opensense.upload.REFERENCE"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    aget-wide v10, v12, v26

    .line 108
    .local v10, dataId:J
    sget-object v26, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "dataId = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static/range {v23 .. v23}, Lcom/htc/opensense/upload/Uploads$TagColumns;->getInsertValues(Landroid/os/Bundle;)Landroid/content/ContentValues;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v10, v11}, Lcom/htc/opensense/upload/UploadDataHelper;->getInsertTagOperation(Landroid/content/ContentValues;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 113
    .end local v10           #dataId:J
    .end local v23           #tag:Landroid/os/Bundle;
    :cond_7
    :try_start_a
    sget-object v26, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    const-string v28, "apply tags batch"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v26, "com.htc.providers.uploads"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 115
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_a .. :try_end_a} :catch_3

    .line 124
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    :try_start_b
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v25, uploadService:Landroid/content/Intent;
    new-instance v26, Landroid/content/ComponentName;

    const-string v28, "com.htc.providers.uploads"

    const-string v29, "com.htc.providers.uploads.UploadService"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 129
    long-to-int v0, v5

    move/from16 v26, v0

    monitor-exit v27

    return v26

    .line 116
    .end local v25           #uploadService:Landroid/content/Intent;
    .restart local v15       #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v13

    .line 118
    .local v13, e:Landroid/os/RemoteException;
    :try_start_c
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 119
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v13

    .line 121
    .local v13, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    .line 94
    .end local v8           #currentIdx:I
    .end local v13           #e:Landroid/content/OperationApplicationException;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v24           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v9       #currentIdx:I
    .restart local v18       #j:I
    .restart local v22       #results:[Landroid/content/ContentProviderResult;
    :catch_4
    move-exception v13

    move v8, v9

    .end local v9           #currentIdx:I
    .restart local v8       #currentIdx:I
    goto/16 :goto_6

    .line 91
    .end local v8           #currentIdx:I
    .restart local v9       #currentIdx:I
    :catch_5
    move-exception v13

    move v8, v9

    .end local v9           #currentIdx:I
    .restart local v8       #currentIdx:I
    goto/16 :goto_4
.end method

.method public static getBatchIdByCategory(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "category"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 237
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-wide v8

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 244
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 245
    .local v7, count:I
    if-le v7, v10, :cond_2

    .line 246
    sget-object v0, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There should not over than one row with the same category, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    .line 250
    .local v8, id:J
    sget-object v0, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Batch id by category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v8           #id:J
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #count:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getBatchInfo(Landroid/content/Context;I)Lcom/htc/opensense/upload/BatchData;
    .locals 8
    .parameter "context"
    .parameter "batchId"

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 222
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 224
    :try_start_0
    new-instance v6, Lcom/htc/opensense/upload/BatchData;

    invoke-direct {v6, p1}, Lcom/htc/opensense/upload/BatchData;-><init>(I)V

    .line 225
    .local v6, batch:Lcom/htc/opensense/upload/BatchData;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {v7}, Lcom/htc/opensense/upload/Uploads$BatchColumns;->getBatchData(Landroid/database/Cursor;)Lcom/htc/opensense/upload/BatchData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 230
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v6           #batch:Lcom/htc/opensense/upload/BatchData;
    :goto_0
    return-object v6

    .line 230
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v6       #batch:Lcom/htc/opensense/upload/BatchData;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6           #batch:Lcom/htc/opensense/upload/BatchData;
    :cond_1
    move-object v6, v2

    .line 233
    goto :goto_0
.end method

.method public static getData(Landroid/content/Context;I)Lcom/htc/opensense/upload/PhotoMetaData;
    .locals 7
    .parameter "context"
    .parameter "itemId"

    .prologue
    const/4 v4, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/opensense/upload/Uploads$UploadColumns$MetaDataColumns;->METADATA_PROJECTIONS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 282
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 284
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {v6}, Lcom/htc/opensense/upload/Uploads$UploadColumns$MetaDataColumns;->getMetaData(Landroid/database/Cursor;)Lcom/htc/opensense/upload/PhotoMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 287
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_1
    return-object v4

    .line 287
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInsertItemOperation(Landroid/content/ContentValues;J)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "values"
    .parameter "batchId"

    .prologue
    .line 181
    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 183
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 184
    const-string v1, "batch_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    const-string v1, "batch_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public static getInsertTagOperation(Landroid/content/ContentValues;J)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "values"
    .parameter "dataId"

    .prologue
    .line 193
    sget-object v1, Lcom/htc/opensense/upload/Uploads$TagColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 195
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "dataId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 196
    return-object v0
.end method

.method private static getMediaInsertValues(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "privacy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    .local v0, contentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    const-string v9, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 138
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 139
    .local v1, data:Landroid/os/Bundle;
    invoke-static {p0, v1, p2}, Lcom/htc/opensense/upload/Uploads$UploadColumns;->getInsertValues(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 143
    .local v2, extra:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 146
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 148
    .local v8, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v8, :cond_2

    .line 149
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 150
    .local v4, image:Landroid/net/Uri;
    invoke-static {p0, v4, p2, v7}, Lcom/htc/opensense/upload/Uploads$UploadColumns;->getInsertValues(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #image:Landroid/net/Uri;
    .end local v8           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 156
    .restart local v4       #image:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 157
    const-string v9, "Link_Url"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, mLinkUrl:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 159
    sget-object v9, Lcom/htc/opensense/upload/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lnik url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0, v4, p2, v7, v6}, Lcom/htc/opensense/upload/Uploads$UploadColumns;->getInsertValues(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2           #extra:Landroid/os/Bundle;
    .end local v4           #image:Landroid/net/Uri;
    .end local v6           #mLinkUrl:Ljava/lang/String;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v0

    .line 164
    .restart local v2       #extra:Landroid/os/Bundle;
    .restart local v4       #image:Landroid/net/Uri;
    .restart local v6       #mLinkUrl:Ljava/lang/String;
    .restart local v7       #mimeType:Ljava/lang/String;
    :cond_3
    invoke-static {p0, v4, p2, v7}, Lcom/htc/opensense/upload/Uploads$UploadColumns;->getInsertValues(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static getMediaSize(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public static getTagData(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "dataId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/social/data/FaceTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$TagColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 297
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 299
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 300
    .local v7, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/FaceTag;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-static {v6}, Lcom/htc/opensense/upload/Uploads$TagColumns;->getTag(Landroid/database/Cursor;)Lcom/htc/opensense/social/data/FaceTag;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    .end local v7           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/FaceTag;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move-object v7, v2

    .line 308
    :goto_1
    return-object v7

    .line 305
    .restart local v7       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/FaceTag;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static isBatchComplete(Landroid/content/Context;I)Z
    .locals 7
    .parameter "context"
    .parameter "batchId"

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status< 200 AND batch_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 267
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 271
    if-eqz v6, :cond_1

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_1
    :goto_0
    return v0

    .line 271
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateBatchInfo(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "batchId"
    .parameter "aid"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 213
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "create_album_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public static updateProgress(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "itemId"
    .parameter "status"
    .parameter "currentByte"
    .parameter "errorMessage"

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v2, "current_bytes"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    if-eqz p4, :cond_0

    .line 206
    const-string v2, "resp_status"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    return-void
.end method
