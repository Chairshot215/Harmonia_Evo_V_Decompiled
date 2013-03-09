.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;
.super Ljava/lang/Object;
.source "PersonIndicatorRequest.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 41
    .parameter "result"

    .prologue
    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getStatusInfo()Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    move-result-object v29

    .line 257
    .local v29, info:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " status_update_data_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v4, v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, selection:Ljava/lang/String;
    const-string v13, "status_ts DESC"

    .line 261
    .local v13, order:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 262
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 263
    const-wide/16 v3, 0x0

    move-object/from16 v0, v29

    iput-wide v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 264
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 265
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 267
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMimetype:Ljava/lang/String;

    .line 268
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusData1:Ljava/lang/String;

    .line 269
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPostID:Ljava/lang/String;

    .line 270
    const-wide/16 v3, -0x1

    move-object/from16 v0, v29

    iput-wide v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusDataID:J

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status_update_data_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v4, v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 279
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "contactId"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v31

    .line 282
    .local v31, lContactId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v14, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    .local v14, arr$:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    array-length v0, v14

    move/from16 v34, v0

    .local v34, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_7

    aget-object v36, v14, v17

    .line 287
    .local v36, sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 289
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 290
    .local v7, idArray:[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v20, idList:Ljava/lang/StringBuilder;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 292
    .local v30, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .line 293
    .local v28, index:I
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 295
    .local v19, id:Ljava/lang/String;
    aput-object v19, v7, v28

    .line 296
    add-int/lit8 v28, v28, 0x1

    .line 297
    goto :goto_1

    .line 299
    .end local v19           #id:Ljava/lang/String;
    :cond_1
    const/16 v37, 0x0

    .line 301
    .local v37, snsCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    .line 310
    :goto_2
    if-eqz v37, :cond_6

    .line 312
    :try_start_1
    const-string v3, "uid"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 313
    .local v27, idxUid:I
    const-string v3, "message_id"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 314
    .local v24, idxMid:I
    const-string v3, "message"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 315
    .local v23, idxMessage:I
    const-string v3, "timestamp"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 316
    .local v26, idxTimestamp:I
    const-string v3, "package_name"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 317
    .local v25, idxPackageName:I
    const-string v3, "label_id"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 318
    .local v22, idxLabelRes:I
    const-string v3, "icon_id"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 320
    .local v21, idxIconRes:I
    :cond_2
    :goto_3
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 321
    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 322
    .local v40, timeStr:Ljava/lang/String;
    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 323
    .local v38, time:J
    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 324
    .local v35, packageName:Ljava/lang/String;
    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 325
    .local v33, labelRes:I
    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 326
    .local v18, iconRes:I
    if-eqz v40, :cond_3

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_3

    .line 327
    const-wide/16 v3, 0x3e8

    mul-long v38, v38, v3

    .line 334
    :cond_3
    move-object/from16 v0, v37

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 338
    move-object/from16 v0, v29

    iget-wide v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    cmp-long v3, v38, v3

    if-lez v3, :cond_2

    .line 340
    move-object/from16 v0, v37

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 341
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 342
    move-wide/from16 v0, v38

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 343
    move/from16 v0, v33

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 344
    move/from16 v0, v18

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 345
    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusData1:Ljava/lang/String;

    .line 346
    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPostID:Ljava/lang/String;

    .line 347
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->mimetype:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMimetype:Ljava/lang/String;

    .line 348
    const-wide/16 v3, -0x1

    move-object/from16 v0, v29

    iput-wide v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusDataID:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 356
    .end local v18           #iconRes:I
    .end local v21           #idxIconRes:I
    .end local v22           #idxLabelRes:I
    .end local v23           #idxMessage:I
    .end local v24           #idxMid:I
    .end local v25           #idxPackageName:I
    .end local v26           #idxTimestamp:I
    .end local v27           #idxUid:I
    .end local v33           #labelRes:I
    .end local v35           #packageName:Ljava/lang/String;
    .end local v38           #time:J
    .end local v40           #timeStr:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    throw v3

    .line 303
    :catch_0
    move-exception v16

    .line 304
    .local v16, e:Ljava/lang/Exception;
    const-string v3, "PersonIndicatorRequest"

    const-string v4, "Query Status Update failed in PersonIndicatorRequest"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v37, :cond_4

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 306
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_4
    const/16 v37, 0x0

    goto/16 :goto_2

    .line 356
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v21       #idxIconRes:I
    .restart local v22       #idxLabelRes:I
    .restart local v23       #idxMessage:I
    .restart local v24       #idxMid:I
    .restart local v25       #idxPackageName:I
    .restart local v26       #idxTimestamp:I
    .restart local v27       #idxUid:I
    :cond_5
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v7           #idArray:[Ljava/lang/String;
    .end local v20           #idList:Ljava/lang/StringBuilder;
    .end local v21           #idxIconRes:I
    .end local v22           #idxLabelRes:I
    .end local v23           #idxMessage:I
    .end local v24           #idxMid:I
    .end local v25           #idxPackageName:I
    .end local v26           #idxTimestamp:I
    .end local v27           #idxUid:I
    .end local v28           #index:I
    .end local v30           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v37           #snsCursor:Landroid/database/Cursor;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 366
    .end local v36           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_7
    const/4 v15, 0x0

    .line 369
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v8, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x6

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "status_ts"

    aput-object v4, v10, v3

    const/4 v3, 0x2

    const-string v4, "status_res_package"

    aput-object v4, v10, v3

    const/4 v3, 0x3

    const-string v4, "status_label"

    aput-object v4, v10, v3

    const/4 v3, 0x4

    const-string v4, "status_icon"

    aput-object v4, v10, v3

    const/4 v3, 0x5

    const-string v4, "presence_data_id"

    aput-object v4, v10, v3

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 385
    :goto_4
    if-eqz v15, :cond_a

    .line 390
    :try_start_3
    const-string v3, "status_ts"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 391
    .restart local v26       #idxTimestamp:I
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 392
    move/from16 v0, v26

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 393
    .restart local v40       #timeStr:Ljava/lang/String;
    move/from16 v0, v26

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 394
    .restart local v38       #time:J
    if-eqz v40, :cond_8

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_8

    .line 395
    const-wide/16 v3, 0x3e8

    mul-long v38, v38, v3

    .line 403
    :cond_8
    move-object/from16 v0, v29

    iget-wide v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    cmp-long v3, v38, v3

    if-lez v3, :cond_9

    .line 404
    const-string v3, "status"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 405
    const-string v3, "status_res_package"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 406
    move-wide/from16 v0, v38

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 407
    const-string v3, "status_label"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 408
    const-string v3, "status_icon"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 409
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusData1:Ljava/lang/String;

    .line 410
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPostID:Ljava/lang/String;

    .line 411
    const-string v3, ""

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMimetype:Ljava/lang/String;

    .line 412
    const-string v3, "presence_data_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, v29

    iput-wide v3, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusDataID:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 425
    .end local v38           #time:J
    .end local v40           #timeStr:Ljava/lang/String;
    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 428
    .end local v26           #idxTimestamp:I
    :cond_a
    return-object p1

    .line 378
    :catch_1
    move-exception v16

    .line 379
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "PersonIndicatorRequest"

    const-string v4, "Query Status Update part2 failed in PersonIndicatorRequest"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v15, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 381
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 425
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method
