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
    .line 222
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 49
    .parameter "result"

    .prologue
    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getStatusInfo()Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    move-result-object v38

    .line 226
    .local v38, info:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getStatuses()Ljava/util/ArrayList;

    move-result-object v46

    .line 227
    .local v46, statuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;>;"
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status_update_data_id IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v4, v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, selection:Ljava/lang/String;
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v8, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    .line 230
    const-string v2, ""

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 231
    const-string v2, ""

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 232
    const-wide/16 v6, 0x0

    move-object/from16 v0, v38

    iput-wide v6, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 234
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 240
    :goto_0
    const-string v2, "sn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add status selection: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v3, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    .line 246
    .local v3, statusUpdateUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v2, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v2, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "status"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "status_ts"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "status_res_package"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "status_label"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "status_icon"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "presence_data_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "status_ts DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 256
    .local v27, cursor:Landroid/database/Cursor;
    if-eqz v27, :cond_2

    .line 258
    :try_start_0
    const-string v2, "status_ts"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 259
    .local v35, idxTimestamp:I
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 261
    .local v47, timeStr:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 262
    .local v13, time:J
    if-eqz v47, :cond_0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-gt v2, v4, :cond_0

    .line 263
    const-wide/16 v6, 0x3e8

    mul-long/2addr v13, v6

    .line 265
    :cond_0
    const-string v2, "status"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 266
    const-string v2, "status_res_package"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 267
    move-object/from16 v0, v38

    iput-wide v13, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 268
    const-string v2, "status_label"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v38

    iput v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 269
    const-string v2, "status_icon"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v38

    iput v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 270
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-boolean v4, v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIncludeExtraStatuses:Z

    if-ne v2, v4, :cond_1

    .line 271
    const-string v2, "sn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add status from StatusUpdates.CONTENT_URI - mStatusId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v6, v6, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", status: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v45, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;

    invoke-direct/range {v45 .. v45}, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;-><init>()V

    .line 273
    .local v45, status:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    const/4 v2, 0x0

    move-object/from16 v0, v45

    iput-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->uid:Ljava/lang/String;

    .line 274
    const-string v2, "presence_data_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v0, v45

    iput-wide v6, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->dataId:J

    .line 275
    new-instance v6, Lcom/android/htccontacts/util/DataStatus;

    const/4 v7, -0x1

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-wide v9, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    move-object/from16 v0, v38

    iget v12, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    move-object/from16 v0, v38

    iget v13, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .end local v13           #time:J
    invoke-direct/range {v6 .. v13}, Lcom/android/htccontacts/util/DataStatus;-><init>(ILjava/lang/String;JLjava/lang/String;II)V

    move-object/from16 v0, v45

    iput-object v6, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    .line 277
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v35           #idxTimestamp:I
    .end local v45           #status:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    .end local v47           #timeStr:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    move-object/from16 v26, v0

    .local v26, arr$:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v41, v0

    .local v41, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    move/from16 v29, v28

    .end local v28           #i$:I
    .local v29, i$:I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v41

    if-ge v0, v1, :cond_d

    aget-object v43, v26, v29

    .line 290
    .local v43, sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    move-object/from16 v0, v43

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 291
    move-object/from16 v0, v43

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 292
    .local v10, idArray:[Ljava/lang/String;
    move-object/from16 v0, v43

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .line 293
    .local v40, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v37, 0x0

    .line 294
    .local v37, index:I
    :goto_3
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 296
    .local v30, id:Ljava/lang/String;
    aput-object v30, v10, v37

    .line 297
    add-int/lit8 v37, v37, 0x1

    .line 298
    goto :goto_3

    .line 238
    .end local v3           #statusUpdateUri:Landroid/net/Uri;
    .end local v10           #idArray:[Ljava/lang/String;
    .end local v26           #arr$:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    .end local v27           #cursor:Landroid/database/Cursor;
    .end local v29           #i$:I
    .end local v30           #id:Ljava/lang/String;
    .end local v37           #index:I
    .end local v40           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v41           #len$:I
    .end local v43           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status_update_data_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v6, v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 286
    .restart local v3       #statusUpdateUri:Landroid/net/Uri;
    .restart local v27       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v2

    .line 299
    .restart local v10       #idArray:[Ljava/lang/String;
    .restart local v26       #arr$:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    .restart local v29       #i$:I
    .restart local v37       #index:I
    .restart local v40       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v41       #len$:I
    .restart local v43       #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v6, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->uri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v44

    .line 301
    .local v44, snsCursor:Landroid/database/Cursor;
    if-eqz v44, :cond_b

    .line 303
    :try_start_1
    const-string v2, "uid"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 304
    .local v36, idxUid:I
    const-string v2, "message"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 305
    .local v33, idxMessage:I
    const-string v2, "timestamp"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 306
    .restart local v35       #idxTimestamp:I
    const-string v2, "package_name"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 307
    .local v34, idxPackageName:I
    const-string v2, "label_id"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 308
    .local v32, idxLabelRes:I
    const-string v2, "icon_id"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 309
    .end local v29           #i$:I
    .local v31, idxIconRes:I
    :cond_5
    :goto_4
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 310
    move-object/from16 v0, v44

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 311
    .restart local v47       #timeStr:Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 312
    .restart local v13       #time:J
    move-object/from16 v0, v44

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 313
    .local v15, packageName:Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 314
    .local v17, labelRes:I
    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 315
    .local v16, iconRes:I
    if-eqz v47, :cond_6

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-gt v2, v4, :cond_6

    .line 316
    const-wide/16 v6, 0x3e8

    mul-long/2addr v13, v6

    .line 319
    :cond_6
    move-object/from16 v0, v38

    iget-wide v6, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    cmp-long v2, v13, v6

    if-lez v2, :cond_7

    .line 321
    move-object/from16 v0, v44

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 322
    move-object/from16 v0, v38

    iput-wide v13, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 323
    move-object/from16 v0, v38

    iput-object v15, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 324
    move/from16 v0, v17

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 325
    move/from16 v0, v16

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 327
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-boolean v4, v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIncludeExtraStatuses:Z

    if-ne v2, v4, :cond_5

    .line 328
    move-object/from16 v0, v44

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 330
    .local v48, uid:Ljava/lang/String;
    const/16 v39, 0x0

    .line 331
    .local v39, isFound:Z
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;

    .line 332
    .restart local v45       #status:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->uid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 335
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->uid:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 338
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    invoke-virtual {v2}, Lcom/android/htccontacts/util/DataStatus;->getTimestamp()J

    move-result-wide v6

    cmp-long v2, v13, v6

    if-lez v2, :cond_9

    .line 341
    move-object/from16 v0, v45

    iget-object v11, v0, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    move-object/from16 v0, v44

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v11 .. v17}, Lcom/android/htccontacts/util/DataStatus;->possibleUpdate(Ljava/lang/String;JLjava/lang/String;II)V

    .line 348
    :cond_9
    const/16 v39, 0x1

    .line 352
    .end local v45           #status:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    :cond_a
    if-nez v39, :cond_5

    .line 355
    new-instance v42, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;

    invoke-direct/range {v42 .. v42}, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;-><init>()V

    .line 356
    .local v42, newStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    move-object/from16 v0, v48

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->uid:Ljava/lang/String;

    .line 357
    new-instance v18, Lcom/android/htccontacts/util/DataStatus;

    const/16 v19, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v21, v13

    move-object/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    invoke-direct/range {v18 .. v25}, Lcom/android/htccontacts/util/DataStatus;-><init>(ILjava/lang/String;JLjava/lang/String;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;->status:Lcom/android/htccontacts/util/DataStatus;

    .line 360
    move-object/from16 v0, v46

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    .line 366
    .end local v13           #time:J
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #iconRes:I
    .end local v17           #labelRes:I
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #idxIconRes:I
    .end local v32           #idxLabelRes:I
    .end local v33           #idxMessage:I
    .end local v34           #idxPackageName:I
    .end local v35           #idxTimestamp:I
    .end local v36           #idxUid:I
    .end local v39           #isFound:Z
    .end local v42           #newStatus:Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
    .end local v47           #timeStr:Ljava/lang/String;
    .end local v48           #uid:Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    throw v2

    .line 370
    .restart local v29       #i$:I
    :cond_b
    const-string v2, "PersonIndicatorRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget-object v6, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' update cursor null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v10           #idArray:[Ljava/lang/String;
    .end local v29           #i$:I
    .end local v37           #index:I
    .end local v40           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v44           #snsCursor:Landroid/database/Cursor;
    :cond_c
    :goto_5
    add-int/lit8 v28, v29, 0x1

    .local v28, i$:I
    move/from16 v29, v28

    .end local v28           #i$:I
    .restart local v29       #i$:I
    goto/16 :goto_2

    .line 375
    .end local v43           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_d
    return-object p1

    .line 366
    .end local v29           #i$:I
    .restart local v10       #idArray:[Ljava/lang/String;
    .restart local v31       #idxIconRes:I
    .restart local v32       #idxLabelRes:I
    .restart local v33       #idxMessage:I
    .restart local v34       #idxPackageName:I
    .restart local v35       #idxTimestamp:I
    .restart local v36       #idxUid:I
    .restart local v37       #index:I
    .restart local v40       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v43       #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    .restart local v44       #snsCursor:Landroid/database/Cursor;
    :cond_e
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 281
    .end local v10           #idArray:[Ljava/lang/String;
    .end local v26           #arr$:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    .end local v31           #idxIconRes:I
    .end local v32           #idxLabelRes:I
    .end local v33           #idxMessage:I
    .end local v34           #idxPackageName:I
    .end local v35           #idxTimestamp:I
    .end local v36           #idxUid:I
    .end local v37           #index:I
    .end local v40           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v41           #len$:I
    .end local v43           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    .end local v44           #snsCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method
