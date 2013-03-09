.class public Lcom/android/providers/telephony/HtcMsgsProvider;
.super Landroid/content/ContentProvider;
.source "HtcMsgsProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "htcmsgs"

.field private static final HTC_CONVERSATIONS_ID:I = 0x2

.field private static final HTC_MSG_ALL:I = 0x0

.field private static final HTC_MSG_ALL_ID:I = 0x1

.field private static final LOCAL_LOGV:Z = true

.field private static final STR_VVM_STATEMENT:Ljava/lang/String; = "msg_type = \'vvm\'"

.field public static final TABLE_HTC_MSG:Ljava/lang/String; = "htcmsgs"

.field private static final TAG:Ljava/lang/String; = "HtcMsgsProvider"

.field private static final VND_ANDROID_DIR_VVM:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.htc.voicemail"

.field private static final VND_ANDROID_VVM:Ljava/lang/String; = "vnd.android.cursor.item/vnd.htc.voicemail"

.field private static final VND_ANDROID_VVM_CHAT:Ljava/lang/String; = "vnd.android.cursor.item/vnd.htc.voicemail.vvm-chat"

.field private static final VVM_ALL:I = 0x3

.field private static final VVM_ALL_ID:I = 0x4

.field private static final VVM_ALL_VVM_ID:I = 0x5

.field private static final VVM_SYNC:I = 0x6

.field private static final s_urlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 95
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "htcmsgs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "htcmsgs"

    const-string v2, "#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "htcmsgs"

    const-string v2, "conversations/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "htcmsgs"

    const-string v2, "vvm"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "htcmsgs"

    const-string v2, "vvm/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "htcmsgs"

    const-string v2, "vvmId/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "htcmsgs"

    const-string v2, "vvm/sync"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    return-void
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 562
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 564
    sget-object v1, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 568
    return-void
.end method

.method private updateMmsShortcutBroadcast()V
    .locals 3

    .prologue
    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.mms.updateShortcut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v1, "from_htcmsg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 558
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 222
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 22
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/HtcMsgsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 228
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 229
    .local v16, where:Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v11, v0

    .line 230
    .local v11, numValues:I
    sget-object v18, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 314
    invoke-super/range {p0 .. p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v11

    .end local v11           #numValues:I
    :cond_0
    :goto_0
    return v11

    .line 232
    .restart local v11       #numValues:I
    :pswitch_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 234
    :try_start_0
    const-string v18, "HtcMsgsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bulk insert: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v13, 0x0

    .line 240
    .local v13, sb:Ljava/lang/StringBuilder;
    move-object/from16 v4, p2

    .local v4, arr$:[Landroid/content/ContentValues;
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_6

    aget-object v14, v4, v9

    .line 243
    .local v14, value:Landroid/content/ContentValues;
    const-string v18, "vvm_id"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, vvm_id:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 245
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "(\'"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 251
    :goto_2
    const-string v18, "msg_type"

    const-string v19, "vvm"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v18, "htcthread_id"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 255
    .local v8, htcThreadId:Ljava/lang/Long;
    const-string v18, "address"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, address:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_2

    if-eqz v3, :cond_2

    .line 257
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v3, v1}, Landroid/provider/Telephony$HtcThreads;->getHtcThreadId(Landroid/content/Context;Ljava/lang/String;Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 258
    const-string v18, "htcthread_id"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_2
    :try_start_1
    const-string v18, "HtcMsgsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "update vvm_id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "vvm_id = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 265
    .local v17, whereClause:Ljava/lang/String;
    const-string v18, "htcmsgs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v14, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 266
    .local v12, rows:I
    if-gtz v12, :cond_3

    .line 267
    const-string v18, "htcmsgs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    .end local v12           #rows:I
    .end local v17           #whereClause:Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 247
    .end local v3           #address:Ljava/lang/String;
    .end local v8           #htcThreadId:Ljava/lang/Long;
    :cond_4
    :try_start_2
    const-string v18, ", \'"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 305
    .end local v4           #arr$:[Landroid/content/ContentValues;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #value:Landroid/content/ContentValues;
    .end local v15           #vvm_id:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 306
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v18, "HtcMsgsProvider"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 309
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 269
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v3       #address:Ljava/lang/String;
    .restart local v4       #arr$:[Landroid/content/ContentValues;
    .restart local v8       #htcThreadId:Ljava/lang/Long;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    .restart local v14       #value:Landroid/content/ContentValues;
    .restart local v15       #vvm_id:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 270
    .local v7, e:Landroid/database/SQLException;
    :try_start_4
    const-string v18, "HtcMsgsProvider"

    invoke-virtual {v7}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 308
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #arr$:[Landroid/content/ContentValues;
    .end local v7           #e:Landroid/database/SQLException;
    .end local v8           #htcThreadId:Ljava/lang/Long;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #value:Landroid/content/ContentValues;
    .end local v15           #vvm_id:Ljava/lang/String;
    :catchall_0
    move-exception v18

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 309
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    throw v18

    .line 274
    .restart local v4       #arr$:[Landroid/content/ContentValues;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_6
    if-eqz v13, :cond_a

    .line 275
    :try_start_5
    const-string v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "vvm_id NOT IN "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, delWhere:Ljava/lang/String;
    const-string v18, "HtcMsgsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "delWhere: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v18, "htcmsgs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    .end local v6           #delWhere:Ljava/lang/String;
    :cond_7
    :goto_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/android/providers/telephony/AllMessagesProvider;->updateAllHtcThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 292
    if-ltz v11, :cond_9

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 296
    const-string v18, "__ALBAL__"

    const-string v19, "HtcMsgsProvider  SetBackUp"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 301
    :cond_8
    sget-object v18, Landroid/provider/Telephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/HtcMsgsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->updateMmsShortcutBroadcast()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 308
    :cond_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 309
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 279
    :cond_a
    if-nez v11, :cond_7

    .line 280
    :try_start_6
    const-string v18, "htcmsgs"

    const-string v19, "msg_type = \'vvm\'"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, count:I
    sget-object v8, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 110
    .local v4, match:I
    iget-object v8, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 111
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v4, :pswitch_data_0

    .line 166
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown URL"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, p2, p3}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcMsgs(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 169
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 171
    iget-object v8, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v8, :cond_1

    .line 173
    const-string v8, "__ALBAL__"

    const-string v9, "HtcMsgsProvider  SetBackUp"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v8, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v8}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 179
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/HtcMsgsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 181
    :cond_2
    return v0

    .line 117
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 118
    .local v5, message_id:I
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v1, v5, v9}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteOneMsgById(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 119
    .end local v5           #message_id:I
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad htc message id: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 128
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 136
    .local v6, threadID:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "htcthread_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, p2, p3}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcMsgs(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    goto/16 :goto_0

    .line 129
    .end local v6           #threadID:I
    :catch_1
    move-exception v3

    .line 130
    .local v3, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad conversation htc thread id: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 146
    .end local v3           #ex:Ljava/lang/Exception;
    :pswitch_3
    const-string v8, "msg_type = \'vvm\'"

    invoke-static {v8, p2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, p2, p3}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteHtcMsgs(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 148
    goto/16 :goto_0

    .line 151
    :pswitch_4
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 152
    .restart local v5       #message_id:I
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "msg_type = \'vvm\'"

    invoke-static {v8, v1, v5, v9}, Lcom/android/providers/telephony/AllMessagesProvider;->deleteOneMsgById(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto/16 :goto_0

    .line 153
    .end local v5           #message_id:I
    :catch_2
    move-exception v2

    .line 154
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad htcmsg id: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 159
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 160
    .local v7, vvm_id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v7, p2, p3}, Lcom/android/providers/telephony/AllMessagesProvider;->deletOneVvmMessage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 163
    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->updateMmsShortcutBroadcast()V

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 187
    sget-object v0, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.htc.voicemail"

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.htc.voicemail"

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/vnd.htc.voicemail.vvm-chat"

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 322
    sget-object v13, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 324
    .local v8, match:I
    const-string v13, "HtcMsgsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insert uri="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", match="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v12, "htcmsgs"

    .line 329
    .local v12, table:Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 336
    :pswitch_0
    const-string v13, "HtcMsgsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid request: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 p1, 0x0

    .line 401
    .end local p1
    :goto_0
    return-object p1

    .line 333
    .restart local p1
    :pswitch_1
    const-string v13, "msg_type"

    const-string v14, "vvm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/HtcMsgsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 344
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v13, "htcmsgs"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 345
    const-string v13, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v1, 0x1

    .line 346
    .local v1, addDate:Z
    :goto_1
    const-string v13, "msg_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v2, 0x1

    .line 351
    .local v2, addMsgType:Z
    :goto_2
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 353
    .local v6, finalValues:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 354
    const-string v13, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    :cond_0
    if-eqz v2, :cond_1

    .line 359
    const-string v13, "msg_type"

    const-string v14, "vvm"

    invoke-virtual {v6, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    const-string v13, "htcthread_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 365
    .local v7, htcThreadId:Ljava/lang/Long;
    const-string v13, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, address:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_3

    if-eqz v3, :cond_3

    .line 367
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v3, v14}, Landroid/provider/Telephony$HtcThreads;->getHtcThreadId(Landroid/content/Context;Ljava/lang/String;Z)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 368
    const-string v13, "htcthread_id"

    invoke-virtual {v6, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    :cond_3
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v4, v12, v13, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 383
    .local v10, rowId:J
    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-lez v13, :cond_8

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v13, :cond_4

    .line 387
    const-string v13, "__ALBAL__"

    const-string v14, "HtcMsgsProvider  SetBackUp"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v13}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 394
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 395
    .local v9, ret:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/telephony/HtcMsgsProvider;->notifyChange(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 345
    .end local v1           #addDate:Z
    .end local v2           #addMsgType:Z
    .end local v3           #address:Ljava/lang/String;
    .end local v6           #finalValues:Landroid/content/ContentValues;
    .end local v7           #htcThreadId:Ljava/lang/Long;
    .end local v9           #ret:Landroid/net/Uri;
    .end local v10           #rowId:J
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 346
    .restart local v1       #addDate:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 373
    .end local v1           #addDate:Z
    :cond_7
    new-instance v13, Ljava/lang/AssertionError;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown table type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 379
    .restart local v1       #addDate:Z
    .restart local v2       #addMsgType:Z
    .restart local v3       #address:Ljava/lang/String;
    .restart local v6       #finalValues:Landroid/content/ContentValues;
    .restart local v7       #htcThreadId:Ljava/lang/Long;
    :catch_0
    move-exception v5

    .line 380
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "HtcMsgsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insert exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-wide/16 v10, 0x0

    .restart local v10       #rowId:J
    goto :goto_3

    .line 398
    .end local v5           #e:Ljava/lang/Exception;
    :cond_8
    const-string v13, "HtcMsgsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HtcMsgsProvider.insert: failed! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 417
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 420
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 421
    .local v9, match:I
    const/4 v13, 0x0

    .line 422
    .local v13, where:Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    .line 466
    const-string v2, "HtcMsgsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v10, 0x0

    .line 484
    :goto_0
    return-object v10

    .line 424
    :pswitch_0
    const-string v2, "htcmsgs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 470
    :goto_1
    const/4 v7, 0x0

    .line 472
    .local v7, orderBy:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    move-object/from16 v7, p5

    .line 478
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 479
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 482
    .local v10, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$HtcMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v10, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 427
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v10           #ret:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "htcmsgs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 434
    :pswitch_2
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 446
    .local v11, threadID:I
    const-string v2, "htcmsgs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htcthread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 439
    .end local v11           #threadID:I
    :catch_0
    move-exception v8

    .line 440
    .local v8, ex:Ljava/lang/Exception;
    const-string v3, "HtcMsgsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad conversation htc_thread id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 450
    .end local v8           #ex:Ljava/lang/Exception;
    :pswitch_3
    const-string v2, "htcmsgs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 451
    const-string v2, "msg_type = \'vvm\'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 454
    :pswitch_4
    const-string v2, "htcmsgs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg_type = \'vvm\'"

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 458
    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 461
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 462
    .local v12, vvm_id:Ljava/lang/String;
    const-string v2, "htcmsgs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vvm_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 474
    .end local v12           #vvm_id:Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "htcmsgs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    sget-object v7, Landroid/provider/Telephony$HtcMessages;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    goto/16 :goto_2

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v10, 0x1

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, count:I
    const-string v4, "htcmsgs"

    .line 493
    .local v4, table:Ljava/lang/String;
    const/4 v3, 0x0

    .line 494
    .local v3, extraWhere:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 495
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    .line 496
    .local v6, updateVvm:Z
    sget-object v8, Lcom/android/providers/telephony/HtcMsgsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 528
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 500
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    :goto_0
    :pswitch_1
    invoke-static {p3, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 533
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 535
    if-lez v0, :cond_1

    .line 538
    iget-object v8, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v8, :cond_0

    .line 540
    const-string v8, "__ALBAL__"

    const-string v9, "HtcMsgsProvider  SetBackUp"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v8, p0, Lcom/android/providers/telephony/HtcMsgsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v8}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 545
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/HtcMsgsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 547
    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/providers/telephony/HtcMsgsProvider;->updateMmsShortcutBroadcast()V

    .line 549
    :cond_1
    return v0

    .line 503
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 506
    .local v5, threadId:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "htcthread_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    goto :goto_0

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "HtcMsgsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad conversation htc thread id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #threadId:Ljava/lang/String;
    :pswitch_3
    const-string v3, "msg_type = \'vvm\'"

    .line 516
    goto :goto_0

    .line 518
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "msg_type = \'vvm\'"

    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    goto/16 :goto_0

    .line 523
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 524
    .local v7, vvm_id:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vvm_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    const/4 v6, 0x1

    .line 526
    goto/16 :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
