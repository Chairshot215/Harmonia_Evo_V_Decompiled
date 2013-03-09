.class public Lcom/android/mms/util/ContactNameCache;
.super Ljava/lang/Object;
.source "ContactNameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ContactNameCache$Fdn;,
        Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;,
        Lcom/android/mms/util/ContactNameCache$FilterHandler;,
        Lcom/android/mms/util/ContactNameCache$PhotoCache;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static LOCAL_LOGV:Z = false

.field private static final MSG_FILTER_CONTACT_NAME:I = 0x0

.field private static final MSG_FILTER_CONTACT_NAME_FAST:I = 0x6

.field private static final MSG_FILTER_INIT_OBSERVER:I = 0x3

.field private static final MSG_FILTER_INVALIDATE:I = 0x1

.field private static final MSG_FILTER_UPDATE_MEPHOTO:I = 0x2

.field private static final MSG_FILTER_UPDATE_THREADS_NAME:I = 0x7

.field private static final MSG_UPDATE_PHOTO_TO_CACHE:I = 0x5

.field public static final ONLINE_ALBUM_NUMBER:Ljava/lang/String; = "4444"

.field private static final TAG:Ljava/lang/String; = "ContactNameCache"

.field private static b_Invalid:Z

.field private static final mCachedNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCachedPersonalId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

.field private static final mCachedSearchName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCachedisFromSIM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mContactsObserver:Landroid/database/ContentObserver;

.field private static mContext:Landroid/content/Context;

.field private static mDefaultPhoto:Landroid/graphics/Bitmap;

.field private static mGroupPhoto:Landroid/graphics/Bitmap;

.field private static mMePhoto:Landroid/graphics/Bitmap;

.field private static mPhonesObserver:Landroid/database/ContentObserver;

.field private static m_bScrolling:Z

.field private static m_bSupportDelayLoading:Z

.field private static sInstance:Lcom/android/mms/util/ContactNameCache;

.field private static s_bInit:Z

.field private static s_bUpdateThreadsFlag:Z


# instance fields
.field private mFilterHandler:Landroid/os/Handler;

.field private mFilterThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    sput-boolean v3, Lcom/android/mms/util/ContactNameCache;->LOCAL_LOGV:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    .line 101
    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedSearchName:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    .line 120
    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mContactsObserver:Landroid/database/ContentObserver;

    .line 135
    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    .line 138
    sput-boolean v2, Lcom/android/mms/util/ContactNameCache;->s_bInit:Z

    .line 140
    sput-boolean v2, Lcom/android/mms/util/ContactNameCache;->b_Invalid:Z

    .line 142
    sput-boolean v3, Lcom/android/mms/util/ContactNameCache;->s_bUpdateThreadsFlag:Z

    .line 149
    sput-boolean v3, Lcom/android/mms/util/ContactNameCache;->m_bSupportDelayLoading:Z

    .line 150
    sput-boolean v2, Lcom/android/mms/util/ContactNameCache;->m_bScrolling:Z

    .line 753
    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    .line 755
    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 758
    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mGroupPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctxt"

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    .line 132
    iput-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    .line 160
    sput-object p1, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    .line 163
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lcom/android/mms/util/ContactNameCache$PhotoCache;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/util/ContactNameCache$PhotoCache;-><init>(Lcom/android/mms/util/ContactNameCache;Lcom/android/mms/util/ContactNameCache$1;)V

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FilterThreadCNC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    .line 172
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;

    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/ContactNameCache$FilterHandler;-><init>(Landroid/os/Looper;Lcom/android/mms/util/ContactNameCache;)V

    iput-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    .line 176
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    :cond_0
    return-void

    .line 166
    :cond_1
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    invoke-virtual {v0}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->clear()V

    goto :goto_0
.end method

.method private UpdateThreadsTableNameFiled()V
    .locals 36

    .prologue
    .line 1368
    :try_start_0
    sget-boolean v2, Lcom/android/mms/util/ContactNameCache;->s_bUpdateThreadsFlag:Z

    if-nez v2, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "recipient_address"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    const-string v6, "name"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "recipient_ids"

    aput-object v6, v5, v2

    .line 1378
    .local v5, PROJECTION:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1379
    .local v13, COLUMN_ID:I
    const/4 v12, 0x1

    .line 1380
    .local v12, COLUMN_ADDRESS:I
    const/4 v14, 0x2

    .line 1381
    .local v14, COLUMN_NAME:I
    const/4 v15, 0x3

    .line 1389
    .local v15, COLUMN_RECIPINET_IDS:I
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 1390
    .local v19, builder:Landroid/net/Uri$Builder;
    const-string v2, "FromThreadTable"

    const-string v6, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1391
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1392
    .local v4, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1393
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 1402
    .local v20, cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_0

    .line 1405
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 1407
    .local v31, nCount:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 1410
    sget-boolean v2, Lcom/android/mms/util/ContactNameCache;->s_bUpdateThreadsFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_3

    .line 1472
    :cond_2
    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1474
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #PROJECTION:[Ljava/lang/String;
    .end local v12           #COLUMN_ADDRESS:I
    .end local v13           #COLUMN_ID:I
    .end local v14           #COLUMN_NAME:I
    .end local v15           #COLUMN_RECIPINET_IDS:I
    .end local v19           #builder:Landroid/net/Uri$Builder;
    .end local v20           #cursor:Landroid/database/Cursor;
    .end local v26           #i:I
    .end local v31           #nCount:I
    :catch_0
    move-exception v25

    .line 1475
    .local v25, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "ContactNameCache"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1476
    .end local v25           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 1412
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v5       #PROJECTION:[Ljava/lang/String;
    .restart local v12       #COLUMN_ADDRESS:I
    .restart local v13       #COLUMN_ID:I
    .restart local v14       #COLUMN_NAME:I
    .restart local v15       #COLUMN_RECIPINET_IDS:I
    .restart local v19       #builder:Landroid/net/Uri$Builder;
    .restart local v20       #cursor:Landroid/database/Cursor;
    .restart local v26       #i:I
    .restart local v31       #nCount:I
    :cond_3
    :try_start_4
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_6

    .line 1413
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1414
    .local v21, cursorAddress:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1415
    .local v24, cursorName:Ljava/lang/String;
    const/16 v34, 0x0

    .line 1418
    .local v34, updateName:Ljava/lang/String;
    const-string v2, ";"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1419
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1, v6, v7}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v33

    .line 1422
    .local v33, tCachedName:Ljava/lang/String;
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1423
    :cond_4
    move-object/from16 v34, v33

    .line 1451
    .end local v33           #tCachedName:Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v34, :cond_6

    .line 1452
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1453
    .local v22, cursorID:J
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1454
    .local v32, recipient_ids:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    .line 1455
    .local v35, updateUri:Landroid/net/Uri;
    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 1456
    const-string v2, "update"

    const-string v6, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1458
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "recipient_ids"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " =\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1464
    .local v10, where:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1465
    .local v9, values:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v34

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const/4 v11, 0x0

    move-object v7, v3

    invoke-static/range {v6 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1407
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/String;
    .end local v21           #cursorAddress:Ljava/lang/String;
    .end local v22           #cursorID:J
    .end local v24           #cursorName:Ljava/lang/String;
    .end local v32           #recipient_ids:Ljava/lang/String;
    .end local v34           #updateName:Ljava/lang/String;
    .end local v35           #updateUri:Landroid/net/Uri;
    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 1427
    .restart local v21       #cursorAddress:Ljava/lang/String;
    .restart local v24       #cursorName:Ljava/lang/String;
    .restart local v34       #updateName:Ljava/lang/String;
    :cond_7
    const-string v2, ";"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1429
    .local v17, addressList:[Ljava/lang/String;
    const/16 v30, 0x0

    .line 1430
    .local v30, multipleNameSb:Ljava/lang/StringBuilder;
    const/16 v29, 0x0

    .line 1431
    .local v29, multipleName:Ljava/lang/String;
    move-object/from16 v18, v17

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v28, v0

    .local v28, len$:I
    const/16 v27, 0x0

    .local v27, i$:I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    aget-object v16, v18, v27

    .line 1432
    .local v16, addr:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1, v6, v7}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v33

    .line 1434
    .restart local v33       #tCachedName:Ljava/lang/String;
    if-nez v30, :cond_8

    .line 1435
    new-instance v30, Ljava/lang/StringBuilder;

    .end local v30           #multipleNameSb:Ljava/lang/StringBuilder;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1431
    .restart local v30       #multipleNameSb:Ljava/lang/StringBuilder;
    :goto_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 1438
    :cond_8
    const-string v2, ";"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 1472
    .end local v16           #addr:Ljava/lang/String;
    .end local v17           #addressList:[Ljava/lang/String;
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v21           #cursorAddress:Ljava/lang/String;
    .end local v24           #cursorName:Ljava/lang/String;
    .end local v26           #i:I
    .end local v27           #i$:I
    .end local v28           #len$:I
    .end local v29           #multipleName:Ljava/lang/String;
    .end local v30           #multipleNameSb:Ljava/lang/StringBuilder;
    .end local v31           #nCount:I
    .end local v33           #tCachedName:Ljava/lang/String;
    .end local v34           #updateName:Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1443
    .restart local v17       #addressList:[Ljava/lang/String;
    .restart local v18       #arr$:[Ljava/lang/String;
    .restart local v21       #cursorAddress:Ljava/lang/String;
    .restart local v24       #cursorName:Ljava/lang/String;
    .restart local v26       #i:I
    .restart local v27       #i$:I
    .restart local v28       #len$:I
    .restart local v29       #multipleName:Ljava/lang/String;
    .restart local v30       #multipleNameSb:Ljava/lang/StringBuilder;
    .restart local v31       #nCount:I
    .restart local v34       #updateName:Ljava/lang/String;
    :cond_9
    if-eqz v30, :cond_a

    .line 1444
    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1447
    :cond_a
    if-eqz v24, :cond_b

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    .line 1448
    :cond_b
    move-object/from16 v34, v29

    goto/16 :goto_2
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/mms/util/ContactNameCache;->LOCAL_LOGV:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/util/ContactNameCache;->setThreadMePhoto(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400()Lcom/android/mms/util/ContactNameCache$PhotoCache;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/util/ContactNameCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/util/ContactNameCache;->UpdateThreadsTableNameFiled()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/util/ContactNameCache;->initObserver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/mms/util/ContactNameCache;->b_Invalid:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/mms/util/ContactNameCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/util/ContactNameCache;->processInvalid()V

    return-void
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/mms/util/ContactNameCache;->m_bScrolling:Z

    return v0
.end method

.method static synthetic access$900()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$902(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-object p0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static close(Landroid/content/Context;)V
    .locals 3
    .parameter "ctxt"

    .prologue
    const/4 v2, 0x0

    .line 321
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 323
    sput-object v2, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    .line 325
    :cond_0
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    invoke-virtual {v0}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->clear()V

    .line 327
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 328
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 330
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedSearchName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 332
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mPhonesObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mPhonesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 334
    :cond_1
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mContactsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 346
    :cond_2
    sput-object v2, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    .line 349
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 350
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    sput-object v2, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 355
    :cond_3
    sput-object v2, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    .line 356
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/util/ContactNameCache;->s_bInit:Z

    .line 357
    return-void
.end method

.method private static getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "address"

    .prologue
    .line 1290
    if-nez p1, :cond_1

    .line 1291
    const-string v2, ""

    .line 1322
    :cond_0
    :goto_0
    return-object v2

    .line 1294
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, localNumber:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1296
    .local v3, values:[Ljava/lang/String;
    const-string v2, ""

    .line 1297
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 1298
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1306
    aget-object v4, v3, v0

    invoke-static {v4, v1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x104011e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1297
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1310
    :cond_3
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-static {p0, v5}, Lcom/android/mms/util/ContactNameCache;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1313
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-static {p0, v5}, Lcom/android/internal/telephony/CallerInfo;->getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1318
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1320
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private static getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "email"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1335
    sget-object v0, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1336
    .local v9, match:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1361
    :goto_0
    return-object v10

    .line 1341
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1347
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1349
    :try_start_0
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1351
    .local v7, columnIndex:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1353
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v7           #columnIndex:I
    :cond_3
    move-object v10, p1

    .line 1361
    goto :goto_0

    .line 1358
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayString"

    .prologue
    .line 1326
    sget-object v1, Landroid/provider/Telephony$Mms;->QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1327
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1331
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/android/mms/util/ContactNameCache;
    .locals 2

    .prologue
    .line 375
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    if-nez v0, :cond_1

    .line 376
    const-class v1, Lcom/android/mms/util/ContactNameCache;

    monitor-enter v1

    .line 377
    :try_start_0
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->init(Landroid/content/Context;)V

    .line 380
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_1
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mms/util/ContactNameCache;->b_Invalid:Z

    if-ne v0, v1, :cond_2

    .line 388
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    invoke-direct {v0}, Lcom/android/mms/util/ContactNameCache;->processInvalid()V

    .line 392
    :cond_2
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getNamePhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;
    .locals 13
    .parameter "context"
    .parameter "address"
    .parameter "view"
    .parameter "queryContactsProvider"

    .prologue
    .line 1484
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    .line 1485
    new-instance v11, Landroid/provider/Telephony$namephoto;

    invoke-direct {v11}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1486
    .local v11, mdata:Landroid/provider/Telephony$namephoto;
    const/4 v0, 0x0

    iput-boolean v0, v11, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 1487
    const-wide/16 v2, -0x1

    iput-wide v2, v11, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1488
    const/4 v0, 0x0

    iput-object v0, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 1490
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1491
    sget-object v0, Lcom/android/mms/util/QueryURI;->GET_CONTACT_INFO_V2_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1492
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1493
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1494
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1496
    .local v6, contactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1497
    .local v8, contactName:Ljava/lang/String;
    iput-wide v6, v11, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1498
    iput-object v8, v11, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 1500
    .end local v6           #contactId:J
    .end local v8           #contactName:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1504
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-wide v2, v11, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 1506
    :try_start_0
    iget-wide v2, v11, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 1509
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x32

    if-gt v0, v2, :cond_6

    .line 1510
    iget-object v0, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/mms/util/ContactNameCache;->quickSaveThumbnailBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :cond_2
    :goto_0
    iget-object v0, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 1522
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1523
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200f3

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 1524
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactNameCache;->isQuickThumbnailBitmapExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1525
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactNameCache;->quickRemoveThumbnailBitmap(Landroid/content/Context;Ljava/lang/String;)V

    .line 1526
    :cond_4
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    iput-object v0, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    :cond_5
    move-object v12, v11

    .line 1542
    .end local v11           #mdata:Landroid/provider/Telephony$namephoto;
    .local v12, mdata:Ljava/lang/Object;
    :goto_1
    return-object v12

    .line 1512
    .end local v12           #mdata:Ljava/lang/Object;
    .restart local v11       #mdata:Landroid/provider/Telephony$namephoto;
    :cond_6
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactNameCache;->isQuickThumbnailBitmapExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1513
    iget-object v0, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/mms/util/ContactNameCache;->quickSaveThumbnailBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v10

    .line 1518
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 1515
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :cond_7
    :try_start_2
    const-string v0, "ContactNameCache"

    const-string v2, "mContactCache size Over 50, no Save!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1532
    .end local v11           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_8
    const/4 v11, 0x0

    .line 1534
    .restart local v11       #mdata:Landroid/provider/Telephony$namephoto;
    const v0, 0x7f0200f3

    const/4 v2, 0x0

    :try_start_3
    invoke-static {p0, p1, v0, v2}, Landroid/provider/Telephony$Sms;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Landroid/provider/Telephony$namephoto;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v11

    :goto_2
    move-object v12, v11

    .line 1542
    .restart local v12       #mdata:Ljava/lang/Object;
    goto :goto_1

    .line 1535
    .end local v12           #mdata:Ljava/lang/Object;
    :catch_1
    move-exception v10

    .line 1536
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1537
    new-instance v11, Landroid/provider/Telephony$namephoto;

    .end local v11           #mdata:Landroid/provider/Telephony$namephoto;
    invoke-direct {v11}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1538
    .restart local v11       #mdata:Landroid/provider/Telephony$namephoto;
    const/4 v0, 0x0

    iput-boolean v0, v11, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 1539
    const-wide/16 v2, -0x1

    iput-wide v2, v11, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1540
    const/4 v0, 0x0

    iput-object v0, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public static getNamePhoto2(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;
    .locals 14
    .parameter "context"
    .parameter "address"
    .parameter "view"
    .parameter "bNoNeedGetDefaultPhoto"

    .prologue
    .line 1547
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1548
    new-instance v12, Landroid/provider/Telephony$namephoto;

    invoke-direct {v12}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1549
    .local v12, mdata:Landroid/provider/Telephony$namephoto;
    const/4 v0, 0x0

    iput-boolean v0, v12, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 1550
    const-wide/16 v2, -0x1

    iput-wide v2, v12, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1551
    const/4 v0, 0x0

    iput-object v0, v12, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 1553
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1554
    sget-object v0, Lcom/android/mms/util/QueryURI;->GET_CONTACT_INFO_V2_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1555
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1556
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1557
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1559
    .local v6, contactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1560
    .local v8, contactName:Ljava/lang/String;
    iput-wide v6, v12, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1561
    iput-object v8, v12, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 1563
    .end local v6           #contactId:J
    .end local v8           #contactName:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1567
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-wide v2, v12, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 1573
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v12, Landroid/provider/Telephony$namephoto;->mPersonId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1574
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v11

    .line 1575
    .local v11, is:Ljava/io/InputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v12, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 1576
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x32

    if-gt v0, v2, :cond_6

    .line 1577
    iget-object v0, v12, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/mms/util/ContactNameCache;->quickSaveThumbnailBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    .end local v1           #uri:Landroid/net/Uri;
    .end local v11           #is:Ljava/io/InputStream;
    :cond_2
    :goto_0
    if-nez p3, :cond_5

    iget-object v0, v12, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 1589
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1590
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200f3

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 1591
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactNameCache;->isQuickThumbnailBitmapExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1592
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactNameCache;->quickRemoveThumbnailBitmap(Landroid/content/Context;Ljava/lang/String;)V

    .line 1593
    :cond_4
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    iput-object v0, v12, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    :cond_5
    move-object v13, v12

    .line 1609
    .end local v12           #mdata:Landroid/provider/Telephony$namephoto;
    .local v13, mdata:Ljava/lang/Object;
    :goto_1
    return-object v13

    .line 1579
    .end local v13           #mdata:Ljava/lang/Object;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v12       #mdata:Landroid/provider/Telephony$namephoto;
    :cond_6
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactNameCache;->isQuickThumbnailBitmapExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1580
    iget-object v0, v12, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/mms/util/ContactNameCache;->quickSaveThumbnailBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1584
    .end local v1           #uri:Landroid/net/Uri;
    .end local v11           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v10

    .line 1585
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 1582
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v11       #is:Ljava/io/InputStream;
    :cond_7
    :try_start_2
    const-string v0, "ContactNameCache"

    const-string v2, "mContactCache size Over 50, no Save!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1599
    .end local v1           #uri:Landroid/net/Uri;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_8
    const/4 v12, 0x0

    .line 1601
    .restart local v12       #mdata:Landroid/provider/Telephony$namephoto;
    const v0, 0x7f0200f3

    const/4 v2, 0x0

    :try_start_3
    invoke-static {p0, p1, v0, v2}, Landroid/provider/Telephony$Sms;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Landroid/provider/Telephony$namephoto;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v12

    :goto_2
    move-object v13, v12

    .line 1609
    .restart local v13       #mdata:Ljava/lang/Object;
    goto :goto_1

    .line 1602
    .end local v13           #mdata:Ljava/lang/Object;
    :catch_1
    move-exception v10

    .line 1603
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1604
    new-instance v12, Landroid/provider/Telephony$namephoto;

    .end local v12           #mdata:Landroid/provider/Telephony$namephoto;
    invoke-direct {v12}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1605
    .restart local v12       #mdata:Landroid/provider/Telephony$namephoto;
    const/4 v0, 0x0

    iput-boolean v0, v12, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 1606
    const-wide/16 v2, -0x1

    iput-wide v2, v12, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1607
    const/4 v0, 0x0

    iput-object v0, v12, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "ctxt"

    .prologue
    .line 311
    const-class v1, Lcom/android/mms/util/ContactNameCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/mms/util/ContactNameCache;->s_bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 313
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/android/mms/util/ContactNameCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/ContactNameCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->sInstance:Lcom/android/mms/util/ContactNameCache;

    .line 316
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/ContactNameCache;->s_bInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "ctxt"

    .prologue
    const/4 v4, 0x1

    .line 214
    new-instance v1, Lcom/android/mms/util/ContactNameCache$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/util/ContactNameCache$1;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mPhonesObserver:Landroid/database/ContentObserver;

    .line 243
    new-instance v1, Lcom/android/mms/util/ContactNameCache$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/util/ContactNameCache$2;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/mms/util/ContactNameCache;->mContactsObserver:Landroid/database/ContentObserver;

    .line 259
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "content://mms-sms-v2/get-ContactInfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 261
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mPhonesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    const-string v1, "content://mms-sms-v2/updateThreadsName"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/ContactNameCache;->mPhonesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "address"

    .prologue
    .line 402
    const v0, 0x7f090021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFromMe(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "address"

    .prologue
    .line 407
    const v0, 0x7f090022

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isQuickThumbnailBitmapExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 1673
    if-eqz p1, :cond_0

    .line 1674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, mSrc:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1677
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1679
    .end local v0           #file:Ljava/io/File;
    .end local v1           #mSrc:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processInvalid()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    const-string v0, "ContactNameCache"

    const-string v1, "Contactname cache Process invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    sget-object v3, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    sput-object v4, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    .line 198
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    sget-object v3, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/util/ContactNameCache;->b_Invalid:Z

    .line 209
    return-void
.end method

.method public static quickLoadThumbnailBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 1615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1616
    .local v4, time0:J
    const-string v1, ""

    .line 1617
    .local v1, mSrc:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1619
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1620
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1621
    const/4 v3, 0x0

    .line 1623
    .local v3, tempBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1632
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #tempBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 1624
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #tempBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 1625
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v6

    .line 1626
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #tempBitmap:Landroid/graphics/Bitmap;
    :cond_0
    move-object v3, v6

    .line 1632
    goto :goto_0
.end method

.method public static quickRemoveThumbnailBitmap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 1657
    if-eqz p1, :cond_0

    .line 1658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, mSrc:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1663
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    .end local v1           #file:Ljava/io/File;
    .end local v2           #mSrc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1664
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #mSrc:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1665
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static quickSaveThumbnailBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "bitmap"
    .parameter "fileName"

    .prologue
    .line 1636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1637
    .local v5, time0:J
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1638
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1640
    .local v2, mSrc:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 1643
    .local v3, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v4, os:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1645
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 1652
    .end local v1           #file:Ljava/io/File;
    .end local v2           #mSrc:Ljava/lang/String;
    .end local v4           #os:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1646
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #mSrc:Ljava/lang/String;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1647
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1646
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setThreadMePhoto(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 766
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 768
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/provider/ContactsContract$Contacts$MyContactCard;->getPhoto(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    .line 774
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 775
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 776
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 777
    :cond_0
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    .line 781
    :cond_1
    return-void
.end method


# virtual methods
.method public checkThread(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1180
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedSearchName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    const/4 v0, 0x1

    .line 1184
    :goto_0
    return v0

    .line 1183
    :cond_0
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedSearchName:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iput-object v2, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    .line 367
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 368
    iput-object v2, p0, Lcom/android/mms/util/ContactNameCache;->mFilterThread:Landroid/os/HandlerThread;

    .line 370
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 371
    return-void
.end method

.method public getCacheContactInfo(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/provider/Telephony$namephoto;
    .locals 6
    .parameter "context"
    .parameter "address"
    .parameter "refresh"
    .parameter "fastQuery"

    .prologue
    const/4 v3, 0x0

    .line 1004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromMe(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    :cond_0
    const/4 v0, 0x0

    .line 1047
    :cond_1
    :goto_0
    return-object v0

    .line 1007
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/mms/util/ContactNameCache;->isOnlineAlbumNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    new-instance v0, Landroid/provider/Telephony$namephoto;

    invoke-direct {v0}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1009
    .local v0, mdata:Landroid/provider/Telephony$namephoto;
    const v2, 0x7f09025c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    goto :goto_0

    .line 1014
    .end local v0           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_3
    invoke-static {p2}, Lcom/android/mms/MmsApp;->hasCustomizedDisplayName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1015
    new-instance v0, Landroid/provider/Telephony$namephoto;

    invoke-direct {v0}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1016
    .restart local v0       #mdata:Landroid/provider/Telephony$namephoto;
    invoke-static {p1, p2}, Lcom/android/mms/MmsApp;->getCustomizedDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    goto :goto_0

    .line 1021
    .end local v0           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_4
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1022
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1024
    :cond_5
    new-instance v0, Landroid/provider/Telephony$namephoto;

    invoke-direct {v0}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1025
    .restart local v0       #mdata:Landroid/provider/Telephony$namephoto;
    const/4 v1, 0x0

    .line 1026
    .local v1, needQuery:Z
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    .line 1027
    :goto_1
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1028
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 1031
    :cond_6
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1032
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1034
    :cond_7
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1035
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 1037
    :cond_8
    const-string v2, "ContactNameCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " b_Invalid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/mms/util/ContactNameCache;->b_Invalid:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needQuery:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fastQuery:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    if-eqz p3, :cond_1

    sget-boolean v2, Lcom/android/mms/util/ContactNameCache;->b_Invalid:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_1

    .line 1042
    :cond_9
    if-eqz p4, :cond_b

    .line 1043
    iget-object v2, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    new-instance v5, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 1026
    goto/16 :goto_1

    .line 1045
    :cond_b
    iget-object v2, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;
    .locals 12
    .parameter "context"
    .parameter "address"

    .prologue
    .line 1087
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromMe(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1088
    :cond_0
    const/4 v11, 0x0

    .line 1173
    :cond_1
    :goto_0
    return-object v11

    .line 1090
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/mms/util/ContactNameCache;->isOnlineAlbumNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1091
    new-instance v11, Landroid/provider/Telephony$namephoto;

    invoke-direct {v11}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1092
    .local v11, mdata:Landroid/provider/Telephony$namephoto;
    const v0, 0x7f09025c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    goto :goto_0

    .line 1097
    .end local v11           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_3
    invoke-static {p2}, Lcom/android/mms/MmsApp;->hasCustomizedDisplayName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1098
    new-instance v11, Landroid/provider/Telephony$namephoto;

    invoke-direct {v11}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 1099
    .restart local v11       #mdata:Landroid/provider/Telephony$namephoto;
    invoke-static {p1, p2}, Lcom/android/mms/MmsApp;->getCustomizedDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    goto :goto_0

    .line 1104
    .end local v11           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_4
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1105
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1107
    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2}, Lcom/android/mms/util/ContactNameCache;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;

    move-result-object v11

    .line 1109
    .restart local v11       #mdata:Landroid/provider/Telephony$namephoto;
    iget-wide v2, v11, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 1110
    iput-object p2, v11, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 1116
    :cond_6
    const/4 v6, 0x0

    .line 1117
    .local v6, bMatched:Z
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 1118
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_a

    .line 1121
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1122
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "emails"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1124
    .local v7, cFdn:Landroid/database/Cursor;
    if-eqz v7, :cond_a

    .line 1125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v9, fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$Fdn;>;"
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1127
    :cond_7
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 1128
    new-instance v8, Lcom/android/mms/util/ContactNameCache$Fdn;

    invoke-direct {v8, p0}, Lcom/android/mms/util/ContactNameCache$Fdn;-><init>(Lcom/android/mms/util/ContactNameCache;)V

    .line 1129
    .local v8, fdn:Lcom/android/mms/util/ContactNameCache$Fdn;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/mms/util/ContactNameCache$Fdn;->name:Ljava/lang/String;

    .line 1130
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/mms/util/ContactNameCache$Fdn;->number:Ljava/lang/String;

    .line 1131
    iget-object v0, v8, Lcom/android/mms/util/ContactNameCache$Fdn;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1132
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1134
    .end local v8           #fdn:Lcom/android/mms/util/ContactNameCache$Fdn;
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1137
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 1138
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactNameCache$Fdn;

    iget-object v0, v0, Lcom/android/mms/util/ContactNameCache$Fdn;->number:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/telephony/PhoneNumberUtils;->fdn_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactNameCache$Fdn;

    iget-object v0, v0, Lcom/android/mms/util/ContactNameCache$Fdn;->number:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 1147
    :cond_9
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactNameCache$Fdn;

    iget-object v0, v0, Lcom/android/mms/util/ContactNameCache$Fdn;->name:Ljava/lang/String;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    const/4 v6, 0x1

    .line 1159
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #cFdn:Landroid/database/Cursor;
    .end local v9           #fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$Fdn;>;"
    .end local v10           #j:I
    :cond_a
    if-nez v6, :cond_b

    .line 1160
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    iget-object v2, v11, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_b
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    iget-wide v2, v11, Landroid/provider/Telephony$namephoto;->mPersonId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    iget-boolean v2, v11, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    iget-object v2, v11, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, v2}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1137
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cFdn:Landroid/database/Cursor;
    .restart local v9       #fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$Fdn;>;"
    .restart local v10       #j:I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    .line 525
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "address"
    .parameter "defaultName"

    .prologue
    .line 530
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "address"
    .parameter "defaultName"
    .parameter "needQuery"

    .prologue
    .line 479
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    :cond_0
    const v1, 0x7f090021

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    :cond_1
    :goto_0
    return-object v0

    .line 483
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromMe(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    const v1, 0x7f090022

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/mms/util/ContactNameCache;->isOnlineAlbumNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 489
    const v1, 0x7f09025c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->getSepcVvmAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, vvm_address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 499
    .end local v0           #vvm_address:Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Lcom/android/mms/MmsApp;->hasCustomizedDisplayName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 500
    invoke-static {p1, p2}, Lcom/android/mms/MmsApp;->getCustomizedDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_6
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 505
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 507
    :cond_7
    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 510
    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 512
    :cond_8
    if-eqz p4, :cond_9

    .line 513
    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, p2

    .line 516
    goto :goto_0

    :cond_a
    move-object v0, p3

    .line 518
    goto :goto_0
.end method

.method public getContactName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "address"
    .parameter "isFromCompose"

    .prologue
    .line 812
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    :cond_0
    const v2, 0x7f090021

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 874
    :goto_0
    return-object v2

    .line 816
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromMe(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 817
    const v2, 0x7f090022

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/mms/util/ContactNameCache;->isOnlineAlbumNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 822
    const v2, 0x7f09025c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 832
    :cond_3
    invoke-static {p2}, Lcom/android/mms/MmsApp;->hasCustomizedDisplayName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 833
    invoke-static {p1, p2}, Lcom/android/mms/MmsApp;->getCustomizedDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 837
    :cond_4
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 838
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 840
    :cond_5
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 843
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 845
    :cond_6
    sget-boolean v2, Lcom/android/mms/util/ContactNameCache;->LOCAL_LOGV:Z

    if-eqz v2, :cond_7

    const-string v2, "ContactNameCache"

    const-string v3, "getContactName UI CACHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3}, Lcom/android/mms/util/ContactNameCache;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;

    move-result-object v1

    .line 856
    .local v1, mdata:Landroid/provider/Telephony$namephoto;
    iget-wide v2, v1, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 857
    iput-object p2, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 860
    :cond_8
    iget-object v0, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 861
    .local v0, mName:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 862
    move-object v0, p2

    .line 863
    :cond_9
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    iget-wide v3, v1, Landroid/provider/Telephony$namephoto;->mPersonId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    iget-boolean v3, v1, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 868
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    iget-object v3, v1, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p2, v3}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object v2, v0

    .line 874
    goto/16 :goto_0
.end method

.method public getDefaultPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 795
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 796
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 797
    :cond_0
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGroupPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 804
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mGroupPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mGroupPhoto:Landroid/graphics/Bitmap;

    .line 806
    :cond_0
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mGroupPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIsFromSim(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/util/ContactNameCache;->isOnlineAlbumNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromMe(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/mms/MmsApp;->hasCustomizedDisplayName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 421
    :cond_2
    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getMePhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 784
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 786
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 788
    :cond_0
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mDefaultPhoto:Landroid/graphics/Bitmap;

    .line 791
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mMePhoto:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getPersonalId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .parameter "context"
    .parameter "address"

    .prologue
    .line 437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/util/ContactNameCache;->isOnlineAlbumNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromMe(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/mms/MmsApp;->hasCustomizedDisplayName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    const-wide/16 v0, -0x1

    .line 450
    :goto_0
    return-wide v0

    .line 444
    :cond_1
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 446
    :cond_2
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    sget-object v0, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public getSepcVvmAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 456
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v0

    .line 457
    :cond_1
    const-string v1, "*@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "*@PRIVATE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    const v0, 0x7f090263

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_2
    const-string v1, "*@DELIVERY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    const v0, 0x7f090261

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_3
    const-string v1, "*@UNKNOWN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const v0, 0x7f090262

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method invalidate(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1196
    sget-boolean v6, Lcom/android/mms/util/ContactNameCache;->LOCAL_LOGV:Z

    if-eqz v6, :cond_0

    const-string v6, "ContactNameCache"

    const-string v7, "cache invalidate."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_0
    sput-boolean v10, Lcom/android/mms/util/ContactNameCache;->s_bUpdateThreadsFlag:Z

    .line 1204
    const/4 v1, 0x0

    .line 1206
    .local v1, TempContact:[Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    if-nez v1, :cond_1

    .line 1279
    :goto_1
    return-void

    .line 1207
    :catch_0
    move-exception v2

    .line 1208
    .local v2, e:Ljava/util/ConcurrentModificationException;
    iget-object v6, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1209
    iget-object v6, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    sget-object v9, Lcom/android/mms/util/ContactNameCache;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9, v12}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;-><init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v11, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1217
    .end local v2           #e:Ljava/util/ConcurrentModificationException;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_6

    .line 1218
    aget-object v6, v1, v3

    if-eqz v6, :cond_4

    aget-object v6, v1, v3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1220
    aget-object v6, v1, v3

    invoke-static {p1, v6, v12, v10}, Lcom/android/mms/util/ContactNameCache;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;

    move-result-object v5

    .line 1222
    .local v5, mdata:Landroid/provider/Telephony$namephoto;
    iget-wide v6, v5, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1223
    aget-object v6, v1, v3

    iput-object v6, v5, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 1226
    :cond_2
    iget-object v4, v5, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 1227
    .local v4, mName:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1228
    aget-object v4, v1, v3

    .line 1230
    :cond_3
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mCachedNames:Ljava/util/Map;

    aget-object v7, v1, v3

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    aget-object v7, v1, v3

    iget-wide v8, v5, Landroid/provider/Telephony$namephoto;->mPersonId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mCachedisFromSIM:Ljava/util/Map;

    aget-object v7, v1, v3

    iget-boolean v8, v5, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    aget-object v6, v1, v3

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1236
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    aget-object v7, v1, v3

    iget-object v8, v5, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    .end local v4           #mName:Ljava/lang/String;
    .end local v5           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_4
    rem-int/lit8 v6, v3, 0x64

    if-nez v6, :cond_5

    .line 1244
    const-wide/16 v6, 0x32

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1217
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1250
    :cond_6
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    if-eqz v6, :cond_7

    .line 1251
    const-string v6, "ContactNameCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCachedPhoto size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    invoke-virtual {v8}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_7
    sput-boolean v11, Lcom/android/mms/util/ContactNameCache;->s_bUpdateThreadsFlag:Z

    .line 1255
    invoke-direct {p0, p1}, Lcom/android/mms/util/ContactNameCache;->setThreadMePhoto(Landroid/content/Context;)V

    .line 1257
    invoke-static {p1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessagingController;->refreshContactName()V

    .line 1277
    sget-object v6, Lcom/android/mms/util/ContactNameCache;->mCachedSearchName:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    goto/16 :goto_1

    .line 1245
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public isOnlineAlbumNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 397
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportOnlineAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "4444"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putIntoContactNameCacheIfNeed(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p2, rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    if-nez p2, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1064
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/ContactNameCache$3;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/util/ContactNameCache$3;-><init>(Lcom/android/mms/util/ContactNameCache;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 6
    .parameter "context"
    .parameter "address"
    .parameter "view"
    .parameter "isGroup"

    .prologue
    .line 943
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/ContactNameCache;->setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ZZ)V

    .line 944
    return-void
.end method

.method public setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "address"
    .parameter "view"
    .parameter "isGroup"
    .parameter "withMask"

    .prologue
    .line 949
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->isFromAnonymous(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/util/ContactNameCache;->isOnlineAlbumNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/mms/MmsApp;->hasCustomizedDisplayName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/ContactNameCache;->getDefaultPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 994
    :cond_1
    :goto_0
    return-void

    .line 957
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 958
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/ContactNameCache;->getSepcVvmAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 959
    invoke-virtual {p0, p1}, Lcom/android/mms/util/ContactNameCache;->getDefaultPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 965
    :cond_3
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 966
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 968
    :cond_4
    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    invoke-virtual {v1, p2}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 969
    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    invoke-virtual {v1, p2}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 971
    :cond_5
    if-eqz p4, :cond_6

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/mms/util/ContactNameCache;->getGroupPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 977
    :cond_6
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/util/ContactNameCache;->isQuickThumbnailBitmapExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 978
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/util/ContactNameCache;->quickLoadThumbnailBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 979
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 980
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 987
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_1
    sget-object v1, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 982
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/mms/util/ContactNameCache;->getDefaultPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 985
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/mms/util/ContactNameCache;->getDefaultPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setPhotoIconOnClick(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 7
    .parameter "address"
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 886
    instance-of v2, p2, Lcom/htc/widget/QuickContactBadge;

    if-eqz v2, :cond_4

    .line 887
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedPhoto:Lcom/android/mms/util/ContactNameCache$PhotoCache;

    invoke-virtual {v2, p1}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v2, p2

    .line 888
    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v2, v6, v5}, Lcom/htc/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 889
    check-cast p2, Lcom/htc/widget/QuickContactBadge;

    .end local p2
    invoke-virtual {p2, v6, v5}, Lcom/htc/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 894
    .restart local p2
    :cond_2
    const-wide/16 v0, -0x1

    .line 895
    .local v0, contactId:J
    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 896
    sget-object v2, Lcom/android/mms/util/ContactNameCache;->mCachedPersonalId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 898
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    move-object v2, p2

    .line 899
    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 909
    :goto_1
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 911
    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v2, p1, v5}, Lcom/htc/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    move-object v2, p2

    .line 912
    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v2, v6, v5}, Lcom/htc/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 934
    .end local v0           #contactId:J
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-nez v2, :cond_1

    .line 935
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .restart local v0       #contactId:J
    :cond_5
    move-object v2, p2

    .line 906
    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v2, v6}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1

    :cond_6
    move-object v2, p2

    .line 914
    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v2, p1, v5}, Lcom/htc/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    move-object v2, p2

    .line 915
    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v2, v6, v5}, Lcom/htc/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public setScrolling(Z)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/mms/util/ContactNameCache;->m_bSupportDelayLoading:Z

    if-eqz v0, :cond_0

    .line 153
    sput-boolean p1, Lcom/android/mms/util/ContactNameCache;->m_bScrolling:Z

    .line 154
    :cond_0
    return-void
.end method
