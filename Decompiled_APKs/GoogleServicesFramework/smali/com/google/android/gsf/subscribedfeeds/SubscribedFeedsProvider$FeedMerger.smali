.class Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
.source "SubscribedFeedsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedMerger"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;)V
    .locals 6
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    .line 313
    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$300()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    .line 314
    return-void
.end method


# virtual methods
.method public deleteRow(Landroid/database/Cursor;)V
    .locals 8
    .parameter "localCursor"

    .prologue
    const/4 v4, 0x0

    .line 376
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 378
    .local v1, localPersonId:J
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 379
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v5, "_sync_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_id"

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_time"

    move-object v3, v4

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_version"

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v3}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 384
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mTable:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 386
    return-void
.end method

.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 4
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 330
    const-string v1, "_sync_id"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 332
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 334
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 336
    const-string v1, "_sync_version"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 338
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mDeletedTable:Ljava/lang/String;

    const-string v2, "_sync_id"

    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 339
    return-void
.end method

.method protected notifyChanges()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 321
    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 7
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 350
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 351
    return-void
.end method

.method protected updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"
    .parameter "conflicts"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 357
    const-string v1, "_sync_id"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 359
    const-string v1, "_sync_time"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 361
    const-string v1, "_sync_version"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 363
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_dirty"

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 365
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mTable:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 367
    return-void

    .line 363
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 7
    .parameter "localPersonID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 344
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 345
    return-void
.end method
