.class public Lcom/google/android/finsky/library/SQLiteLibrary;
.super Ljava/lang/Object;
.source "SQLiteLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/SQLiteLibrary$Helper;
    }
.end annotation


# static fields
.field private static final FULL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mQueryContains:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

.field private mQuerySize:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "library_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "doc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "doc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "offer_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "document_hash"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_certificate_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "app_refund_pre_delivery_endtime_ms"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "app_refund_post_delivery_window_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "subs_auto_renewing"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "subs_initiation_time"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "subs_valid_until_time"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "subs_trial_until_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "inapp_purchase_data"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "inapp_signature"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/library/SQLiteLibrary;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mContext:Landroid/content/Context;

    .line 208
    return-void
.end method

.method private static bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3
    .parameter "statement"
    .parameter "entry"

    .prologue
    .line 375
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 376
    const/4 v0, 0x2

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 377
    const/4 v0, 0x3

    iget v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->backendId:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 378
    const/4 v0, 0x4

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 379
    const/4 v0, 0x5

    iget v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 380
    const/4 v0, 0x6

    iget v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 381
    return-void
.end method

.method private static getFullContentValues(Lcom/google/android/finsky/library/LibraryEntry;)Landroid/content/ContentValues;
    .locals 7
    .parameter "entry"

    .prologue
    .line 173
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v4, "account"

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "library_id"

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "backend"

    iget v5, p0, Lcom/google/android/finsky/library/LibraryEntry;->backendId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v4, "doc_id"

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v4, "doc_type"

    iget v5, p0, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v4, "offer_type"

    iget v5, p0, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v4, "document_hash"

    iget-wide v5, p0, Lcom/google/android/finsky/library/LibraryEntry;->documentHash:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    instance-of v4, p0, Lcom/google/android/finsky/library/LibraryAppEntry;

    if-eqz v4, :cond_1

    move-object v0, p0

    .line 182
    check-cast v0, Lcom/google/android/finsky/library/LibraryAppEntry;

    .line 183
    .local v0, appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    const-string v4, "app_certificate_hash"

    iget-object v5, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHash:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "app_refund_pre_delivery_endtime_ms"

    iget-wide v5, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v4, "app_refund_post_delivery_window_ms"

    iget-wide v5, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    .end local v0           #appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    :cond_0
    :goto_0
    return-object v1

    .line 188
    :cond_1
    instance-of v4, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 189
    check-cast v3, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 190
    .local v3, subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    const-string v4, "subs_auto_renewing"

    iget-boolean v5, v3, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    const-string v4, "subs_initiation_time"

    iget-wide v5, v3, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->initiationTimestampMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v4, "subs_valid_until_time"

    iget-wide v5, v3, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->validUntilTimestampMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v4, "subs_trial_until_time"

    iget-wide v5, v3, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 197
    .end local v3           #subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :cond_2
    instance-of v4, p0, Lcom/google/android/finsky/library/LibraryInAppEntry;

    if-eqz v4, :cond_0

    move-object v2, p0

    .line 198
    check-cast v2, Lcom/google/android/finsky/library/LibraryInAppEntry;

    .line 199
    .local v2, inappEntry:Lcom/google/android/finsky/library/LibraryInAppEntry;
    const-string v4, "inapp_purchase_data"

    iget-object v5, v2, Lcom/google/android/finsky/library/LibraryInAppEntry;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v4, "inapp_signature"

    iget-object v5, v2, Lcom/google/android/finsky/library/LibraryInAppEntry;->signature:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x6

    return v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->getFullContentValues(Lcom/google/android/finsky/library/LibraryEntry;)Landroid/content/ContentValues;

    move-result-object v0

    .line 241
    .local v0, contentValues:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ownership"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 240
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/android/finsky/library/LibraryEntry;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    .line 249
    .local v0, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/SQLiteLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    .end local v0           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 251
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    :try_start_4
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 255
    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 226
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 229
    return-void
.end method

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v2, p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 234
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 235
    .local v0, contains:J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    .end local v0           #contains:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ownership"

    sget-object v2, Lcom/google/android/finsky/library/SQLiteLibrary;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 285
    .local v8, all:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;

    invoke-direct {v0, p0, v8}, Lcom/google/android/finsky/library/SQLiteLibrary$1;-><init>(Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 284
    .end local v8           #all:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reopen()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, helper:Lcom/google/android/finsky/library/SQLiteLibrary$Helper;
    invoke-virtual {v0}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 217
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(*) FROM ownership WHERE account=? AND library_id=? AND backend=? AND doc_id=? AND doc_type=? AND offer_type=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    .line 218
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM ownership WHERE account=? AND library_id=? AND backend=? AND doc_id=? AND doc_type=? AND offer_type=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    .line 219
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM ownership WHERE account=? AND library_id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    .line 220
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(*) FROM ownership"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    .line 221
    return-void
.end method

.method public declared-synchronized resetAccountLibrary(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "libraryId"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetKeepOnlyAccounts(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 360
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 361
    if-lez v2, :cond_0

    .line 362
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    const/16 v4, 0x3f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ownership"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account NOT IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 369
    .local v3, numDeleted:I
    if-lez v3, :cond_2

    .line 370
    const-string v4, "Removed %d obsolete library rows."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_2
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
