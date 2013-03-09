.class public Lcom/android/providers/telephony/MmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field private static final MMS_ALL:I = 0x0

.field private static final MMS_ALL_ID:I = 0x1

.field private static final MMS_ALL_PART:I = 0xa

.field private static final MMS_DRAFTS:I = 0x6

.field private static final MMS_DRAFTS_ID:I = 0x7

.field private static final MMS_DRM_STORAGE:I = 0x11

.field private static final MMS_DRM_STORAGE_ID:I = 0x12

.field private static final MMS_INBOX:I = 0x2

.field private static final MMS_INBOX_ID:I = 0x3

.field private static final MMS_MSG_ADDR:I = 0xd

.field private static final MMS_MSG_PART:I = 0xb

.field private static final MMS_OUTBOX:I = 0x8

.field private static final MMS_OUTBOX_ID:I = 0x9

.field private static final MMS_PART_ID:I = 0xc

.field private static final MMS_REPORT_REQUEST:I = 0x10

.field private static final MMS_REPORT_STATUS:I = 0xf

.field private static final MMS_SENDING_RATE:I = 0xe

.field private static final MMS_SENT:I = 0x4

.field private static final MMS_SENT_ID:I = 0x5

.field private static final MMS_THREADS:I = 0x13

.field private static final MMS_THREAD_ALL_REPORT:I = 0x14

.field static final TABLE_ADDR:Ljava/lang/String; = "addr"

.field static final TABLE_DRM:Ljava/lang/String; = "drm"

.field static final TABLE_PART:Ljava/lang/String; = "part"

.field static final TABLE_PDU:Ljava/lang/String; = "pdu"

.field static final TABLE_RATE:Ljava/lang/String; = "rate"

.field static final TABLE_WORDS:Ljava/lang/String; = "words"

.field private static final TAG:Ljava/lang/String; = "MmsProvider"

.field private static final VND_ANDROID_DIR_MMS:Ljava/lang/String; = "vnd.android-dir/mms"

.field private static final VND_ANDROID_MMS:Ljava/lang/String; = "vnd.android/mms"

.field private static mBackupManager:Landroid/app/backup/BackupManager;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    sput-object v3, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 1873
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1876
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1877
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1878
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1879
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1880
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1881
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1882
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1883
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1884
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1885
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1886
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "part"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1887
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#/part"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1888
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "part/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1889
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#/addr"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1890
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "rate"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1891
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "report-status/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1892
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "report-request/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1893
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drm"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1894
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drm/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1895
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "threads"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1896
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "thread-allreport"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1902
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 1907
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    .end local p1
    :goto_0
    return-object p1

    .line 1909
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 1910
    goto :goto_0

    .line 1912
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .parameter "qb"
    .parameter "msgBox"

    .prologue
    .line 445
    const-string v0, "pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 447
    if-eqz p2, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 450
    :cond_0
    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V
    .locals 3
    .parameter "qb"
    .parameter "msgBox"
    .parameter "Expr"

    .prologue
    .line 430
    const-string v1, "pdu"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 432
    if-eqz p2, :cond_2

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg_box="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, where:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 440
    .end local v0           #where:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1299
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1301
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v11

    .line 1337
    :goto_0
    return v0

    .line 1308
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    .line 1312
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1315
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1316
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 1317
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1319
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1320
    .local v9, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v0, "MmsProvider"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1324
    .end local v9           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1327
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v0, :cond_3

    .line 1330
    const-string v0, "__ALBAL__"

    const-string v1, "MmsProvider  SetBackUp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1337
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "bgDelete"

    .prologue
    .line 1024
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;ZZ)I
    .locals 26
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "bgDelete"
    .parameter "bUpdateThread"

    .prologue
    .line 1030
    const-string v5, "pdu"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1032
    .local v15, cursor:Landroid/database/Cursor;
    if-nez v15, :cond_1

    .line 1033
    const/4 v14, 0x0

    .line 1145
    :cond_0
    :goto_0
    return v14

    .line 1038
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v16, dirtyIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v17, 0x0

    .line 1043
    .local v17, dirtyThreads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 1044
    const/4 v14, 0x0

    .line 1064
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1047
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1054
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1055
    .local v21, msgId:J
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    if-nez p4, :cond_2

    .line 1058
    const-string v4, "mid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1064
    .end local v21           #msgId:J
    :catchall_0
    move-exception v4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1067
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1068
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->getDirtyThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1071
    :cond_4
    const/4 v14, 0x0

    .line 1072
    .local v14, count:I
    if-eqz p4, :cond_5

    .line 1073
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1074
    .local v24, values:Landroid/content/ContentValues;
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    .line 1075
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id in (SELECT _id FROM pdu WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1077
    .local v25, whereClause:Ljava/lang/String;
    const-string v4, "thread_id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    const-string v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    :try_start_2
    const-string v4, "pending_msgs"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1084
    const-string v4, "pdu"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v14

    .line 1088
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    .line 1095
    .end local v24           #values:Landroid/content/ContentValues;
    .end local v25           #whereClause:Ljava/lang/String;
    :goto_2
    if-lez v14, :cond_0

    .line 1098
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastDeleteIntent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1099
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1101
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 1102
    .local v20, intent:Landroid/content/Intent;
    const-string v4, "com.android.mms.deleteMMS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v12, v4, [J

    .line 1104
    .local v12, affectedIDs:[J
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 1105
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v12, v19

    .line 1104
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1085
    .end local v12           #affectedIDs:[J
    .end local v19           #i:I
    .end local v20           #intent:Landroid/content/Intent;
    .restart local v24       #values:Landroid/content/ContentValues;
    .restart local v25       #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1086
    .local v18, e:Landroid/database/sqlite/SQLiteAbortException;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1088
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    goto :goto_2

    .end local v18           #e:Landroid/database/sqlite/SQLiteAbortException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    throw v4

    .line 1092
    .end local v24           #values:Landroid/content/ContentValues;
    .end local v25           #whereClause:Ljava/lang/String;
    :cond_5
    const-string v4, "pdu"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    .line 1106
    .restart local v12       #affectedIDs:[J
    .restart local v19       #i:I
    .restart local v20       #intent:Landroid/content/Intent;
    :cond_6
    const-string v4, "affectedIDs"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1107
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1112
    .end local v12           #affectedIDs:[J
    .end local v19           #i:I
    .end local v20           #intent:Landroid/content/Intent;
    :cond_7
    if-eqz p5, :cond_8

    .line 1113
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->updateThread(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 1120
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1121
    .local v23, size:I
    move/from16 v0, v23

    new-array v13, v0, [J

    .line 1122
    .local v13, array:[J
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 1123
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v13, v19

    .line 1122
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1126
    :cond_9
    new-instance v20, Landroid/content/Intent;

    const-string v4, "android.intent.action.CONTENT_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v4, "deleted_contents"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1131
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1135
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_0

    .line 1138
    const-string v4, "__ALBAL__"

    const-string v5, "MmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto/16 :goto_0
.end method

.method public static deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1289
    const-string v0, "part"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1294
    const-string v0, "drm"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static deleteToTrashcanConversation(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1151
    const-string v5, "pdu"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1153
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_1

    .line 1154
    const/4 v13, 0x0

    .line 1243
    :cond_0
    :goto_0
    return v13

    .line 1158
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v15, dirtyIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v16, 0x0

    .line 1163
    .local v16, dirtyThreads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 1164
    const/4 v13, 0x0

    .line 1180
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1167
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1174
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1175
    .local v20, msgId:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1180
    .end local v20           #msgId:J
    :catchall_0
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1183
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1184
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/providers/telephony/MmsProvider;->getDirtyThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1187
    :cond_4
    const/4 v13, 0x0

    .line 1189
    .local v13, count:I
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1190
    .local v23, values:Landroid/content/ContentValues;
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    .line 1191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id in (SELECT _id FROM pdu WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1193
    .local v24, whereClause:Ljava/lang/String;
    const-string v4, "msg_box"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    const-string v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1198
    :try_start_2
    const-string v4, "pending_msgs"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1200
    const-string v4, "pdu"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    .line 1204
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    .line 1209
    :goto_2
    if-lez v13, :cond_0

    .line 1211
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->updateThread(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 1218
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1219
    .local v22, size:I
    move/from16 v0, v22

    new-array v12, v0, [J

    .line 1220
    .local v12, array:[J
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 1221
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v12, v18

    .line 1220
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1201
    .end local v12           #array:[J
    .end local v18           #i:I
    .end local v22           #size:I
    :catch_0
    move-exception v17

    .line 1202
    .local v17, e:Landroid/database/sqlite/SQLiteAbortException;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1204
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    goto :goto_2

    .end local v17           #e:Landroid/database/sqlite/SQLiteAbortException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/providers/telephony/ContactMessageStore;->setDeleting(Z)V

    throw v4

    .line 1224
    .restart local v12       #array:[J
    .restart local v18       #i:I
    .restart local v22       #size:I
    :cond_5
    new-instance v19, Landroid/content/Intent;

    const-string v4, "android.intent.action.CONTENT_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v19, intent:Landroid/content/Intent;
    const-string v4, "deleted_contents"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1229
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1233
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_0

    .line 1236
    const-string v4, "__ALBAL__"

    const-string v5, "MmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto/16 :goto_0
.end method

.method private filterUnsupportedKeys(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 1779
    const-string v0, "d_tm_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1780
    const-string v0, "s_vis"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1781
    const-string v0, "r_chg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1782
    const-string v0, "r_chg_dl_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1783
    const-string v0, "r_chg_dl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1784
    const-string v0, "r_chg_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1785
    const-string v0, "r_chg_sz"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1786
    const-string v0, "p_s_by"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1787
    const-string v0, "p_s_d"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1788
    const-string v0, "store"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1789
    const-string v0, "mm_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1790
    const-string v0, "mm_flg_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1791
    const-string v0, "mm_flg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1792
    const-string v0, "store_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1793
    const-string v0, "store_st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1794
    const-string v0, "stored"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1795
    const-string v0, "totals"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1796
    const-string v0, "mb_t"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1797
    const-string v0, "mb_t_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1798
    const-string v0, "qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1799
    const-string v0, "mb_qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1800
    const-string v0, "mb_qt_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1801
    const-string v0, "m_cnt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1802
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1803
    const-string v0, "d_ind"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1804
    const-string v0, "e_des"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1805
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1806
    const-string v0, "r_r_mod"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1807
    const-string v0, "r_r_mod_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1808
    const-string v0, "st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1809
    const-string v0, "apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1810
    const-string v0, "r_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1811
    const-string v0, "aux_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1812
    const-string v0, "drm_c"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1813
    const-string v0, "adp_a"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1814
    const-string v0, "repl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1815
    const-string v0, "cl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1816
    const-string v0, "cl_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1819
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1820
    return-void
.end method

.method private static getDirtyThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, dirtyIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v0, dirtyThreads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1256
    const/4 v2, 0x0

    .line 1258
    .local v2, isExist:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1259
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 1260
    const/4 v2, 0x1

    .line 1265
    :cond_0
    if-nez v2, :cond_1

    .line 1266
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/providers/telephony/MmsProvider;->getThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1258
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1269
    .end local v2           #isExist:Z
    .end local v3           #j:I
    :cond_3
    return-object v0
.end method

.method private getMessageBoxByMatch(I)I
    .locals 3
    .parameter "match"

    .prologue
    .line 858
    packed-switch p1, :pswitch_data_0

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad Arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :pswitch_0
    const/4 v0, 0x1

    .line 870
    :goto_0
    return v0

    .line 864
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 867
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 870
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static getThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 11
    .parameter "db"
    .parameter "message_id"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1273
    const/4 v9, -0x1

    .line 1275
    .local v9, thread_id:I
    const-string v1, "pdu"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1277
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1278
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1281
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1284
    :cond_1
    int-to-long v0, v9

    return-wide v0
.end method

.method private static notifyChange(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1831
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1833
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1835
    return-void
.end method

.method static updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "values"

    .prologue
    .line 1575
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/providers/telephony/MmsProvider;->updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Z)I

    move-result v0

    return v0
.end method

.method static updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Z)I
    .locals 27
    .parameter "context"
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "values"
    .parameter "needNotify"

    .prologue
    .line 1581
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v17, dirtyIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1583
    .local v12, affectedThreadIDs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v5, "pdu"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "thread_id"

    aput-object v7, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1586
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_3

    .line 1589
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 1590
    const/4 v15, 0x0

    .line 1600
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1677
    :cond_0
    :goto_0
    return v15

    .line 1593
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1594
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1596
    .local v25, tid:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1597
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1600
    .end local v25           #tid:J
    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1604
    :cond_3
    const/4 v15, 0x0

    .line 1607
    .local v15, count:I
    :try_start_2
    const-string v4, "pdu"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v15

    .line 1613
    :goto_2
    if-lez v15, :cond_0

    .line 1614
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1615
    .local v23, size:I
    move/from16 v0, v23

    new-array v13, v0, [J

    .line 1616
    .local v13, array:[J
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 1617
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v13, v19

    .line 1616
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1609
    .end local v13           #array:[J
    .end local v19           #i:I
    .end local v23           #size:I
    :catch_0
    move-exception v18

    .line 1610
    .local v18, e:Ljava/lang/Exception;
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1621
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v13       #array:[J
    .restart local v19       #i:I
    .restart local v23       #size:I
    :cond_4
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1622
    const-string v24, ""

    .line 1623
    .local v24, threadIds:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 1624
    .local v25, tid:Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1626
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_4

    .line 1628
    .end local v25           #tid:Ljava/lang/Long;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1632
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v24           #threadIds:Ljava/lang/String;
    :cond_7
    new-instance v21, Landroid/content/Intent;

    const-string v4, "android.intent.action.CONTENT_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1633
    .local v21, intent:Landroid/content/Intent;
    const-string v4, "invalidated"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1635
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1640
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->isSupportBroadcastMarkAsReadIntent()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1641
    const-string v4, "msg_box"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 1642
    .local v22, msgbox:Ljava/lang/Integer;
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    const/4 v14, 0x1

    .line 1643
    .local v14, bSent:Z
    :goto_5
    array-length v4, v13

    if-lez v4, :cond_9

    const-string v4, "read"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v14, :cond_9

    .line 1650
    :cond_8
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 1651
    .restart local v21       #intent:Landroid/content/Intent;
    if-eqz v14, :cond_c

    .line 1652
    const-string v4, "com.android.mms.sentMMS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    :goto_6
    const-string v4, "affectedIDs"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1656
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1661
    .end local v14           #bSent:Z
    .end local v22           #msgbox:Ljava/lang/Integer;
    :cond_9
    if-eqz p5, :cond_a

    .line 1662
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange(Landroid/content/Context;)V

    .line 1664
    :cond_a
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v4, :cond_0

    .line 1667
    const-string v4, "__ALBAL__"

    const-string v5, "MmsProvider  SetBackUp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto/16 :goto_0

    .line 1642
    .restart local v22       #msgbox:Ljava/lang/Integer;
    :cond_b
    const/4 v14, 0x0

    goto :goto_5

    .line 1654
    .restart local v14       #bSent:Z
    :cond_c
    const-string v4, "com.android.mms.markAsReadMMS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6
.end method

.method private static updateThread(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1247
    .local p1, dirtyThreads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1248
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_0
    return-void
.end method


# virtual methods
.method public _delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 889
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 890
    .local v10, processID:I
    const v13, 0xcb23

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Binder:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Delete uri:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", selection:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", selectionArgs:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 893
    sget-object v13, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 895
    .local v7, match:I
    const-string v13, "MmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Delete uri="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", match="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v13, "MmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "selection="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v4, 0x0

    .line 900
    .local v4, extraSelection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 901
    .local v9, notify:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v6

    .line 903
    .local v6, ins:Lcom/android/providers/telephony/ContactMessageStore;
    packed-switch v7, :pswitch_data_0

    .line 944
    :pswitch_0
    const-string v13, "MmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No match for URI \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v3, 0x0

    .line 1018
    :cond_0
    :goto_0
    return v3

    .line 909
    :pswitch_1
    const/4 v9, 0x1

    .line 910
    const-string v11, "pdu"

    .line 911
    .local v11, table:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 948
    :cond_1
    :goto_1
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 949
    .local v5, finalSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 950
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 952
    .local v3, deletedRows:I
    const-string v13, "pdu"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 960
    const-string v13, "bg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, bg:Ljava/lang/String;
    const-string v13, "trash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 967
    .local v12, trash:Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-static {v13, v2, v5, v0}, Lcom/android/providers/telephony/MmsProvider;->deleteToTrashcanConversation(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 996
    .end local v1           #bg:Ljava/lang/String;
    .end local v12           #trash:Ljava/lang/String;
    :goto_2
    if-lez v3, :cond_3

    .line 997
    sget-object v13, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v13, :cond_2

    .line 1000
    const-string v13, "__ALBAL__"

    const-string v14, "MmsProvider  SetBackUp"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    sget-object v13, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v13}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1005
    :cond_2
    if-eqz v6, :cond_3

    .line 1006
    invoke-virtual {v6}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    .line 1013
    :cond_3
    if-lez v3, :cond_0

    if-eqz v9, :cond_0

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/MmsProvider;->notifyChange(Landroid/content/Context;)V

    goto :goto_0

    .line 918
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #deletedRows:I
    .end local v5           #finalSelection:Ljava/lang/String;
    .end local v11           #table:Ljava/lang/String;
    :pswitch_2
    const/4 v9, 0x1

    .line 919
    const-string v11, "pdu"

    .line 920
    .restart local v11       #table:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 921
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v8

    .line 922
    .local v8, msgBox:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "msg_box="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 923
    goto :goto_1

    .line 926
    .end local v8           #msgBox:I
    .end local v11           #table:Ljava/lang/String;
    :pswitch_3
    const-string v11, "part"

    .line 927
    .restart local v11       #table:Ljava/lang/String;
    goto :goto_1

    .line 929
    .end local v11           #table:Ljava/lang/String;
    :pswitch_4
    const-string v11, "part"

    .line 930
    .restart local v11       #table:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 931
    goto/16 :goto_1

    .line 933
    .end local v11           #table:Ljava/lang/String;
    :pswitch_5
    const-string v11, "part"

    .line 934
    .restart local v11       #table:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 935
    goto/16 :goto_1

    .line 937
    .end local v11           #table:Ljava/lang/String;
    :pswitch_6
    const-string v11, "addr"

    .line 938
    .restart local v11       #table:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "msg_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 939
    goto/16 :goto_1

    .line 941
    .end local v11           #table:Ljava/lang/String;
    :pswitch_7
    const-string v11, "drm"

    .line 942
    .restart local v11       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 973
    .restart local v1       #bg:Ljava/lang/String;
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #deletedRows:I
    .restart local v5       #finalSelection:Ljava/lang/String;
    .restart local v12       #trash:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    const-string v13, "true"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-static {v13, v2, v5, v0, v14}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    goto/16 :goto_2

    .line 978
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-static {v13, v2, v5, v0, v14}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    goto/16 :goto_2

    .line 987
    .end local v1           #bg:Ljava/lang/String;
    .end local v12           #trash:Ljava/lang/String;
    :cond_6
    const-string v13, "part"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 988
    move-object/from16 v0, p3

    invoke-static {v2, v5, v0}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 989
    :cond_7
    const-string v13, "drm"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 990
    move-object/from16 v0, p3

    invoke-static {v2, v5, v0}, Lcom/android/providers/telephony/MmsProvider;->deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 992
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v2, v11, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public _insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 43
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 508
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 509
    .local v28, processID:I
    const v39, 0xcb23

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Binder:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", Insert uri:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 512
    const/16 v18, 0x0

    .line 513
    .local v18, msgBox:I
    const/16 v20, 0x1

    .line 515
    .local v20, notify:Z
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 517
    .local v17, match:I
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Insert uri="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", match="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-eqz p2, :cond_1

    const-string v39, "read"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1

    .line 524
    :try_start_0
    const-string v39, "read"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 525
    .local v15, iRead:I
    if-ltz v15, :cond_0

    const/16 v39, 0x1

    move/from16 v0, v39

    if-le v15, v0, :cond_1

    .line 526
    :cond_0
    const-string v39, "read"

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v15           #iRead:I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v16

    .line 537
    .local v16, ins:Lcom/android/providers/telephony/ContactMessageStore;
    const-string v35, "pdu"

    .line 538
    .local v35, table:Ljava/lang/String;
    packed-switch v17, :pswitch_data_0

    .line 578
    :pswitch_0
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "insert: invalid request: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v31, 0x0

    .line 854
    :cond_2
    :goto_1
    return-object v31

    .line 529
    .end local v16           #ins:Lcom/android/providers/telephony/ContactMessageStore;
    .end local v35           #table:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 530
    .local v13, e:Ljava/lang/Exception;
    const-string v39, "read"

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 540
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v16       #ins:Lcom/android/providers/telephony/ContactMessageStore;
    .restart local v35       #table:Ljava/lang/String;
    :pswitch_1
    const-string v39, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 541
    .local v19, msgBoxObj:Ljava/lang/Integer;
    if-eqz v19, :cond_9

    .line 542
    check-cast v19, Ljava/lang/Integer;

    .end local v19           #msgBoxObj:Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 582
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 584
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v31, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 587
    .local v31, res:Landroid/net/Uri;
    const-string v39, "pdu"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_12

    .line 588
    const-string v39, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_a

    const/4 v3, 0x1

    .line 589
    .local v3, addDate:Z
    :goto_3
    const-string v39, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_b

    const/4 v4, 0x1

    .line 592
    .local v4, addMsgBox:Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 596
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 598
    .local v14, finalValues:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    .line 600
    .local v37, timeInMillis:J
    if-eqz v3, :cond_3

    .line 601
    const-string v39, "date"

    const-wide/16 v40, 0x3e8

    div-long v40, v37, v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 605
    :cond_3
    const-string v39, "date2"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_4

    .line 606
    const-string v39, "date"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 607
    .local v10, date:J
    const-string v39, "date2"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    .end local v10           #date:J
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v18, :cond_5

    .line 611
    const-string v39, "msg_box"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    :cond_5
    const/16 v39, 0x1

    move/from16 v0, v18

    move/from16 v1, v39

    if-eq v0, v1, :cond_6

    .line 616
    const-string v39, "read"

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    :cond_6
    const-string v39, "thread_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v36

    .line 620
    .local v36, threadId:Ljava/lang/Long;
    const-string v39, "address"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, address:Ljava/lang/String;
    if-eqz v36, :cond_7

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_8

    :cond_7
    if-eqz v6, :cond_8

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v0, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 624
    const-string v39, "thread_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 629
    :cond_8
    const/16 v39, 0x0

    :try_start_1
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v12, v0, v1, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v32

    .line 635
    .local v32, rowId:J
    :goto_5
    const-wide/16 v39, 0x0

    cmp-long v39, v32, v39

    if-gtz v39, :cond_c

    .line 636
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "MmsProvider.insert: failed! "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 546
    .end local v3           #addDate:Z
    .end local v4           #addMsgBox:Z
    .end local v6           #address:Ljava/lang/String;
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v31           #res:Landroid/net/Uri;
    .end local v32           #rowId:J
    .end local v36           #threadId:Ljava/lang/Long;
    .end local v37           #timeInMillis:J
    .restart local v19       #msgBoxObj:Ljava/lang/Integer;
    :cond_9
    const/16 v18, 0x1

    .line 548
    goto/16 :goto_2

    .line 550
    .end local v19           #msgBoxObj:Ljava/lang/Integer;
    :pswitch_2
    const/16 v18, 0x1

    .line 551
    goto/16 :goto_2

    .line 553
    :pswitch_3
    const/16 v18, 0x2

    .line 554
    goto/16 :goto_2

    .line 556
    :pswitch_4
    const/16 v18, 0x3

    .line 557
    goto/16 :goto_2

    .line 559
    :pswitch_5
    const/16 v18, 0x4

    .line 560
    goto/16 :goto_2

    .line 562
    :pswitch_6
    const/16 v20, 0x0

    .line 563
    const-string v35, "part"

    .line 564
    goto/16 :goto_2

    .line 566
    :pswitch_7
    const/16 v20, 0x0

    .line 567
    const-string v35, "addr"

    .line 568
    goto/16 :goto_2

    .line 570
    :pswitch_8
    const/16 v20, 0x0

    .line 571
    const-string v35, "rate"

    .line 572
    goto/16 :goto_2

    .line 574
    :pswitch_9
    const/16 v20, 0x0

    .line 575
    const-string v35, "drm"

    .line 576
    goto/16 :goto_2

    .line 588
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v31       #res:Landroid/net/Uri;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 589
    .restart local v3       #addDate:Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 631
    .restart local v4       #addMsgBox:Z
    .restart local v6       #address:Ljava/lang/String;
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    .restart local v36       #threadId:Ljava/lang/Long;
    .restart local v37       #timeInMillis:J
    :catch_1
    move-exception v13

    .line 632
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "insert exception "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-wide/16 v32, 0x0

    .restart local v32       #rowId:J
    goto :goto_5

    .line 641
    .end local v13           #e:Ljava/lang/Exception;
    :cond_c
    if-eqz v14, :cond_f

    const-string v39, "thread_id"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_f

    .line 643
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-lez v39, :cond_f

    .line 645
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "SELECT recipient_address FROM threads WHERE _id = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 646
    .local v29, rawQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v30

    .line 647
    .local v30, rdb:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 648
    .local v5, addr:Ljava/lang/String;
    const/16 v39, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 649
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_e

    .line 650
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v39

    if-lez v39, :cond_d

    .line 651
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 652
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 654
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_e
    if-eqz v5, :cond_f

    .line 658
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    move-wide/from16 v0, v39

    invoke-static {v0, v1, v5}, Lcom/android/providers/telephony/MmsSmsV2Provider;->refreshcontactsTable(JLjava/lang/String;)V

    .line 664
    .end local v5           #addr:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v29           #rawQuery:Ljava/lang/String;
    .end local v30           #rdb:Landroid/database/sqlite/SQLiteDatabase;
    :cond_f
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v39, :cond_10

    .line 667
    const-string v39, "__ALBAL__"

    const-string v40, "MmsProvider  SetBackUp"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual/range {v39 .. v39}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 673
    :cond_10
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 838
    .end local v3           #addDate:Z
    .end local v4           #addMsgBox:Z
    .end local v6           #address:Ljava/lang/String;
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v32           #rowId:J
    .end local v36           #threadId:Ljava/lang/Long;
    .end local v37           #timeInMillis:J
    :cond_11
    :goto_6
    if-eqz v20, :cond_2

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/providers/telephony/MmsProvider;->notifyChange(Landroid/content/Context;)V

    .line 847
    if-eqz v16, :cond_2

    .line 848
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    goto/16 :goto_1

    .line 681
    :cond_12
    const-string v39, "addr"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_15

    .line 682
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 683
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    const-string v40, "msg_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v39

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/16 v39, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v12, v0, v1, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v32

    .restart local v32       #rowId:J
    const-wide/16 v39, 0x0

    cmp-long v39, v32, v39

    if-gtz v39, :cond_13

    .line 686
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to insert address: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 690
    :cond_13
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v39, :cond_14

    .line 693
    const-string v39, "__ALBAL__"

    const-string v40, "MmsProvider  SetBackUp"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual/range {v39 .. v39}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 700
    :cond_14
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/addr/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    goto/16 :goto_6

    .line 701
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v32           #rowId:J
    :cond_15
    const-string v39, "part"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 702
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 704
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    const/16 v39, 0xb

    move/from16 v0, v17

    move/from16 v1, v39

    if-ne v0, v1, :cond_16

    .line 705
    const-string v40, "mid"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v39

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_16
    const-string v39, "ct"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, contentType:Ljava/lang/String;
    const-string v39, "text/plain"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 713
    .local v27, plainText:Z
    const-string v39, "application/smil"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 714
    .local v34, smilText:Z
    if-nez v27, :cond_17

    if-nez v34, :cond_17

    .line 717
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v40

    const-string v41, "parts"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/PART_"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 720
    .local v26, path:Ljava/lang/String;
    const-string v39, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    new-instance v25, Ljava/io/File;

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    .local v25, partFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v39

    if-nez v39, :cond_17

    .line 725
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->createNewFile()Z

    move-result v39

    if-nez v39, :cond_17

    .line 726
    new-instance v39, Ljava/lang/IllegalStateException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unable to create new partFile: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 729
    :catch_2
    move-exception v13

    .line 730
    .local v13, e:Ljava/io/IOException;
    const-string v39, "MmsProvider"

    const-string v40, "createNewFile"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    new-instance v39, Ljava/lang/IllegalStateException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unable to create new partFile: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 740
    .end local v13           #e:Ljava/io/IOException;
    .end local v25           #partFile:Ljava/io/File;
    .end local v26           #path:Ljava/lang/String;
    :cond_17
    const/16 v39, 0x0

    :try_start_3
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v12, v0, v1, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v32

    .restart local v32       #rowId:J
    const-wide/16 v39, 0x0

    cmp-long v39, v32, v39

    if-gtz v39, :cond_18

    .line 741
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "MmsProvider.insert: failed! "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 742
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 745
    .end local v32           #rowId:J
    :catch_3
    move-exception v13

    .line 746
    .local v13, e:Ljava/lang/Exception;
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "insert exception "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 752
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v32       #rowId:J
    :cond_18
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/part/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 757
    if-eqz v27, :cond_19

    .line 761
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 766
    .local v9, cv:Landroid/content/ContentValues;
    const-string v39, "_id"

    const-wide/16 v40, 0x2

    add-long v40, v40, v32

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 767
    const-string v39, "index_text"

    const-string v40, "text"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v39, "source_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 769
    const-string v39, "table_to_use"

    const/16 v40, 0x2

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    const-string v39, "words"

    const-string v40, "index_text"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v12, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 773
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_19
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v39, :cond_11

    .line 776
    const-string v39, "__ALBAL__"

    const-string v40, "MmsProvider  SetBackUp"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual/range {v39 .. v39}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto/16 :goto_6

    .line 783
    .end local v7           #contentType:Ljava/lang/String;
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v27           #plainText:Z
    .end local v32           #rowId:J
    .end local v34           #smilText:Z
    :cond_1a
    const-string v39, "rate"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1b

    .line 784
    const-string v39, "sent_time"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 785
    .local v21, now:J
    const-wide/32 v39, 0x36ee80

    sub-long v23, v21, v39

    .line 787
    .local v23, oneHourAgo:J
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "sent_time<="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    const/16 v39, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 790
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v39, :cond_11

    .line 793
    const-string v39, "__ALBAL__"

    const-string v40, "MmsProvider  SetBackUp"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual/range {v39 .. v39}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto/16 :goto_6

    .line 799
    .end local v21           #now:J
    .end local v23           #oneHourAgo:J
    :cond_1b
    const-string v39, "drm"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1e

    .line 800
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v40

    const-string v41, "parts"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/PART_"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 802
    .restart local v26       #path:Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 803
    .restart local v14       #finalValues:Landroid/content/ContentValues;
    const-string v39, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    new-instance v25, Ljava/io/File;

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    .restart local v25       #partFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v39

    if-nez v39, :cond_1c

    .line 808
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->createNewFile()Z

    move-result v39

    if-nez v39, :cond_1c

    .line 809
    new-instance v39, Ljava/lang/IllegalStateException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unable to create new file: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 812
    :catch_4
    move-exception v13

    .line 813
    .local v13, e:Ljava/io/IOException;
    const-string v39, "MmsProvider"

    const-string v40, "createNewFile"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    new-instance v39, Ljava/lang/IllegalStateException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unable to create new file: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 819
    .end local v13           #e:Ljava/io/IOException;
    :cond_1c
    const/16 v39, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v12, v0, v1, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v32

    .restart local v32       #rowId:J
    const-wide/16 v39, 0x0

    cmp-long v39, v32, v39

    if-gtz v39, :cond_1d

    .line 820
    const-string v39, "MmsProvider"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "MmsProvider.insert: failed! "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 823
    :cond_1d
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/drm/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 825
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v39, :cond_11

    .line 828
    const-string v39, "__ALBAL__"

    const-string v40, "MmsProvider  SetBackUp"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    sget-object v39, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual/range {v39 .. v39}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto/16 :goto_6

    .line 835
    .end local v14           #finalValues:Landroid/content/ContentValues;
    .end local v25           #partFile:Ljava/io/File;
    .end local v26           #path:Ljava/lang/String;
    .end local v32           #rowId:J
    :cond_1e
    new-instance v39, Ljava/lang/AssertionError;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unknown table type: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v39

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public _query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 124
    const/4 v13, 0x0

    .line 131
    .local v13, processID:I
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 134
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "category"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v10

    .line 138
    .local v10, category:I
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 140
    const/4 v3, -0x1

    if-ne v10, v3, :cond_4

    const/4 v11, 0x0

    .line 149
    .local v11, categoryExpr:Ljava/lang/String;
    :goto_0
    const-string v3, "SecureInclude"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v9

    .line 150
    .local v9, SecureInclude:I
    const/4 v3, 0x1

    if-ne v9, v3, :cond_0

    .line 152
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR htc_category = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 157
    :cond_0
    sget-object v3, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 164
    .local v12, match:I
    const/4 v3, 0x6

    if-eq v12, v3, :cond_1

    .line 165
    if-nez v11, :cond_7

    .line 166
    const-string v11, " "

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "thread_id > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 175
    :cond_1
    :goto_1
    const-string v3, "trashcan"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v16

    .line 176
    .local v16, trashcan:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    const-string v17, "msg_box > 0"

    .line 177
    .local v17, trashcanExpr:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 178
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 179
    :cond_2
    move-object/from16 v11, v17

    .line 185
    :cond_3
    :goto_3
    packed-switch v12, :pswitch_data_0

    .line 404
    :pswitch_0
    const-string v3, "MmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query: invalid request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v15, 0x0

    .line 425
    :goto_4
    return-object v15

    .line 140
    .end local v9           #SecureInclude:I
    .end local v11           #categoryExpr:Ljava/lang/String;
    .end local v12           #match:I
    .end local v16           #trashcan:I
    .end local v17           #trashcanExpr:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " htc_category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 144
    :cond_5
    const/4 v3, -0x1

    if-ne v10, v3, :cond_6

    const-string v11, " htc_category= 0"

    .restart local v11       #categoryExpr:Ljava/lang/String;
    :goto_5
    goto/16 :goto_0

    .end local v11           #categoryExpr:Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " htc_category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 170
    .restart local v9       #SecureInclude:I
    .restart local v11       #categoryExpr:Ljava/lang/String;
    .restart local v12       #match:I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND thread_id > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 176
    .restart local v16       #trashcan:I
    :cond_8
    const-string v17, ""

    goto :goto_2

    .line 181
    .restart local v17       #trashcanExpr:Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 188
    :pswitch_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    .line 408
    :goto_6
    const/4 v8, 0x0

    .line 409
    .local v8, finalSortOrder:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 410
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pdu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 411
    const-string v8, "date DESC"

    .line 419
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 420
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 424
    .local v15, ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v15, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 194
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #finalSortOrder:Ljava/lang/String;
    .end local v15           #ret:Landroid/database/Cursor;
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 200
    :pswitch_3
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 206
    :pswitch_4
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 212
    :pswitch_5
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;ILjava/lang/String;)V

    goto :goto_6

    .line 217
    :pswitch_6
    const-string v3, "pdu"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 224
    :pswitch_7
    const-string v3, "pdu"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND msg_box="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 230
    :pswitch_8
    const-string v3, "part"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 233
    :pswitch_9
    const-string v3, "part"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 237
    :pswitch_a
    const-string v3, "part"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 241
    :pswitch_b
    const-string v3, "addr"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 317
    :pswitch_c
    const-string v3, "queryCcBcc"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v14, 0x1

    .line 318
    .local v14, queryCcBcc:Z
    :goto_8
    if-nez v14, :cond_c

    .line 319
    const-string v3, "addr LEFT JOIN (SELECT P.msg_id AS msg_id, addr.address AS addr, delivery_status, dr_date, dr_id FROM addr INNER JOIN (SELECT DISTINCT P1._id AS msg_id, P2._id AS dr_id, P2.date AS dr_date, ifnull(P2.st, 0) AS delivery_status FROM pdu P1 LEFT JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134 AND P1.m_type=128) P ON addr.msg_id=P.dr_id AND addr.type=151) T1 ON T1.msg_id=addr.msg_id AND (PHONE_NUMBERS_EQUAL(T1.addr, addr.address) OR T1.addr=addr.address) LEFT JOIN (SELECT P.msg_id AS msg_id, addr.address AS addr, read_status, rr_date,rr_id FROM addr INNER JOIN (SELECT DISTINCT P1._id AS msg_id, P2._id as rr_id, P2.date AS rr_date, ifnull(P2.read_status, 0) AS read_status FROM pdu P1 LEFT JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=136 AND P1.m_type=128) P ON addr.msg_id=P.rr_id AND addr.type=137) T2 ON T2.msg_id=addr.msg_id AND (PHONE_NUMBERS_EQUAL(T2.addr, addr.address) OR T2.addr=addr.address)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addr.type=151 AND addr.msg_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 361
    :goto_9
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_6

    .line 317
    .end local v14           #queryCcBcc:Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    .line 340
    .restart local v14       #queryCcBcc:Z
    :cond_c
    const-string v3, "addr LEFT JOIN (SELECT P.msg_id AS msg_id, addr.address AS addr, delivery_status, dr_date, dr_id FROM addr INNER JOIN (SELECT DISTINCT P1._id AS msg_id, P2._id AS dr_id, P2.date AS dr_date, ifnull(P2.st, 0) AS delivery_status FROM pdu P1 LEFT JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134 AND P1.m_type=128) P ON addr.msg_id=P.dr_id AND (addr.type=151 OR addr.type=129 OR addr.type=130)) T1 ON T1.msg_id=addr.msg_id AND (PHONE_NUMBERS_EQUAL(T1.addr, addr.address) OR T1.addr=addr.address) LEFT JOIN (SELECT P.msg_id AS msg_id, addr.address AS addr, read_status, rr_date,rr_id FROM addr INNER JOIN (SELECT DISTINCT P1._id AS msg_id, P2._id as rr_id, P2.date AS rr_date, ifnull(P2.read_status, 0) AS read_status FROM pdu P1 LEFT JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=136 AND P1.m_type=128) P ON addr.msg_id=P.rr_id AND addr.type=137) T2 ON T2.msg_id=addr.msg_id AND (PHONE_NUMBERS_EQUAL(T2.addr, addr.address) OR T2.addr=addr.address)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(addr.type=151 OR addr.type=129 OR addr.type=130) AND addr.msg_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 371
    .end local v14           #queryCcBcc:Z
    :pswitch_d
    const-string v3, "addr join pdu on pdu._id = addr.msg_id"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pdu._id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 374
    const-string v3, "queryCcBcc"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->extractIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v14, 0x1

    .line 375
    .restart local v14       #queryCcBcc:Z
    :goto_a
    if-nez v14, :cond_e

    .line 376
    const-string v3, " AND addr.type = 151"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 374
    .end local v14           #queryCcBcc:Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_a

    .line 379
    .restart local v14       #queryCcBcc:Z
    :cond_e
    const-string v3, " AND (addr.type = 151"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 380
    const-string v3, " OR addr.type = 130"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 381
    const-string v3, " OR addr.type = 129)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 385
    .end local v14           #queryCcBcc:Z
    :pswitch_e
    const-string v3, "rate"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 388
    :pswitch_f
    const-string v3, "drm"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 392
    :pswitch_10
    const-string v3, "pdu group by thread_id"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 396
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 397
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "pdu"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 398
    const-string v6, "m_id"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 400
    .restart local v15       #ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v15, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 412
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #ret:Landroid/database/Cursor;
    .restart local v8       #finalSortOrder:Ljava/lang/String;
    :cond_f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v3

    const-string v4, "part"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 413
    const-string v8, "seq"

    goto/16 :goto_7

    .line 416
    :cond_10
    move-object/from16 v8, p5

    goto/16 :goto_7

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public _update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1354
    .local v12, processID:I
    const v1, 0xcb23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Update uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selectionArgs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1357
    sget-object v1, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 1359
    .local v11, match:I
    const-string v1, "MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const-string v1, "MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    new-instance v5, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1372
    .local v5, finalValues:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1373
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 1374
    .local v8, extraSelection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/ContactMessageStore;

    move-result-object v10

    .line 1376
    .local v10, ins:Lcom/android/providers/telephony/ContactMessageStore;
    if-eqz p2, :cond_1

    const-string v1, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    :try_start_0
    const-string v1, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1380
    .local v9, iRead:I
    if-ltz v9, :cond_0

    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    .line 1381
    :cond_0
    const-string v1, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    .end local v9           #iRead:I
    :cond_1
    :goto_0
    const/4 v13, 0x0

    .line 1393
    .local v13, rowId:I
    packed-switch v11, :pswitch_data_0

    .line 1495
    :pswitch_0
    const-string v1, "MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update operation for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not implemented."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1384
    .end local v13           #rowId:I
    :catch_0
    move-exception v7

    .line 1385
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1386
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1403
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v13       #rowId:I
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1418
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 1420
    const-string v1, "updateCSTimestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1421
    .local v14, updateCSTimestamp:Ljava/lang/String;
    if-eqz v14, :cond_4

    const-string v1, "true"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1422
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lcom/android/providers/telephony/MmsProvider;->updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Z)I

    move-result v13

    .line 1434
    :cond_2
    :goto_2
    sget-object v1, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v1, :cond_3

    .line 1437
    const-string v1, "__ALBAL__"

    const-string v3, "MmsProvider  SetBackUp"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    sget-object v1, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_3
    move v1, v13

    .line 1446
    goto :goto_1

    .line 1426
    :cond_4
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v1, v2, v3, v0, v5}, Lcom/android/providers/telephony/MmsProvider;->updateMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v13

    .line 1430
    if-eqz v10, :cond_2

    .line 1431
    invoke-virtual {v10}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    goto :goto_2

    .line 1450
    .end local v14           #updateCSTimestamp:Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1452
    const-string v1, "part"

    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v2, v1, v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1456
    sget-object v1, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v1, :cond_5

    .line 1459
    const-string v1, "__ALBAL__"

    const-string v3, "MmsProvider  SetBackUp"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    sget-object v1, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_5
    move v1, v13

    .line 1467
    goto/16 :goto_1

    .line 1475
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1477
    const-string v1, "part"

    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v2, v1, v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1481
    sget-object v1, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v1, :cond_6

    .line 1484
    const-string v1, "__ALBAL__"

    const-string v3, "MmsProvider  SetBackUp"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    sget-object v1, Lcom/android/providers/telephony/MmsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_6
    move v1, v13

    .line 1492
    goto/16 :goto_1

    .line 1393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 878
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 880
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsProvider;->_delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 882
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 454
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 455
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 492
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 461
    :pswitch_1
    const-string v0, "vnd.android-dir/mms"

    goto :goto_0

    .line 467
    :pswitch_2
    const-string v0, "vnd.android/mms"

    goto :goto_0

    .line 469
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "part"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "ct"

    aput-object v3, v2, v7

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 473
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 475
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 481
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 478
    :cond_0
    :try_start_1
    const-string v0, "MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.count() != 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 486
    :goto_1
    const-string v0, "*/*"

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 484
    :cond_1
    const-string v0, "MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor == null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 498
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 500
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->_insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 502
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1708
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_DRM_V2_FLAG:Z

    if-eqz v0, :cond_0

    .line 1711
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1770
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 115
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/telephony/MmsProvider;->_query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1342
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Lock()V

    .line 1344
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsProvider;->_update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1346
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsV2Provider;->Unlock()V

    throw v0
.end method
