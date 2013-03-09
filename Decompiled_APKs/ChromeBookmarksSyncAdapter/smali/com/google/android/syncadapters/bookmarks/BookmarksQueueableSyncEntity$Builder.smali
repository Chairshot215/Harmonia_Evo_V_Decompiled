.class public Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
.super Ljava/lang/Object;
.source "BookmarksQueueableSyncEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-direct {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    .line 132
    return-void
.end method

.method private getIntegerFromCursor(Landroid/database/Cursor;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "c"
    .parameter "columnIndex"
    .parameter "defaultVal"

    .prologue
    .line 161
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    .end local p3
    :goto_0
    return-object p3

    .line 164
    .restart local p3
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .parameter "c"
    .parameter "columnIndex"
    .parameter "defaultVal"

    .prologue
    .line 149
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    .end local p3
    :goto_0
    return-object p3

    .line 152
    .restart local p3
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    return-object v0
.end method

.method public clear()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->wipeAllFields()V
    invoke-static {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->access$000(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    .line 144
    return-object p0
.end method

.method public parse(Landroid/database/Cursor;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 6
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->wipeAllFields()V
    invoke-static {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->access$000(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    .line 184
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_TITLE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mTitle:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_URL:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mUrl:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_FAVICON:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mFavicon:[B

    .line 187
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    .line 188
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_PARENT_ID:I

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalParentId:Ljava/lang/Long;

    .line 190
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_FOLDER:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getIntegerFromCursor(Landroid/database/Cursor;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    iput-boolean v2, v3, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsFolder:Z

    .line 192
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_POSITION:I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mPosition:Ljava/lang/Long;

    .line 194
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalVersion:Ljava/lang/Long;

    .line 196
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_DELETED:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getIntegerFromCursor(Landroid/database/Cursor;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    iput-boolean v2, v3, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDeleted:Z

    .line 198
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DIRTY:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getIntegerFromCursor(Landroid/database/Cursor;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    iput-boolean v0, v2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDirty:Z

    .line 200
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_PARENT_ID:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteParentId:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_VERSION:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteVersion:Ljava/lang/Long;

    .line 204
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_SERVER_UNIQUE_TAG:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_CLIENT_UNIQUE_TAG:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_CREATED:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateCreated:Ljava/lang/Long;

    .line 210
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_MODIFIED:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateModified:Ljava/lang/Long;

    .line 212
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_INSERT_AFTER:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalInsertAfter:Ljava/lang/Long;

    .line 214
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_INSERT_AFTER:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteInsertAfter:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    sget v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_ID:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_0
    return-object p0

    :cond_1
    move v2, v1

    .line 190
    goto/16 :goto_0

    :cond_2
    move v2, v1

    .line 196
    goto :goto_1

    :cond_3
    move v0, v1

    .line 198
    goto :goto_2

    .line 219
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public parse(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 9
    .parameter "entity"

    .prologue
    const/4 v8, 0x0

    .line 231
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->wipeAllFields()V
    invoke-static {v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->access$000(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    .line 232
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-boolean v8, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    .line 233
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v4

    .line 234
    .local v4, specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    sget-object v5, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v4, v5}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    sget-object v5, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v4, v5}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    .line 236
    .local v0, bookmark:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasUrl()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mUrl:Ljava/lang/String;

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    iget-object v6, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getFavicon()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    :goto_0
    iput-object v5, v6, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mFavicon:[B

    .line 245
    .end local v0           #bookmark:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mTitle:Ljava/lang/String;

    .line 248
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorCacheGuid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 249
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorCacheGuid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    .line 251
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getClientDefinedUniqueTag()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, clientUniqueTag:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 253
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object v1, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    .line 256
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorClientItemId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getIdString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 265
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 266
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getParentIdString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteParentId:Ljava/lang/String;

    .line 268
    :cond_6
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getServerDefinedUniqueTag()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, serverUniqueTag:Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 270
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object v3, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    .line 272
    :cond_7
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getDeleted()Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDeleted:Z

    .line 273
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-boolean v8, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    .line 274
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getFolder()Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsFolder:Z

    .line 275
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getPositionInParent()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mPosition:Ljava/lang/Long;

    .line 276
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getVersion()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteVersion:Ljava/lang/Long;

    .line 277
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasCtime()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 278
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getCtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateCreated:Ljava/lang/Long;

    .line 280
    :cond_8
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasMtime()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 281
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getMtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateModified:Ljava/lang/Long;

    .line 283
    :cond_9
    return-object p0

    .line 240
    .end local v1           #clientUniqueTag:Ljava/lang/String;
    .end local v3           #serverUniqueTag:Ljava/lang/String;
    .restart local v0       #bookmark:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 257
    .end local v0           #bookmark:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    .restart local v1       #clientUniqueTag:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 260
    .local v2, ne:Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    goto/16 :goto_1
.end method

.method public setClientGuid(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "guid"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public setClientUniqueTag(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "tag"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public setDateCreated(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "date"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateCreated:Ljava/lang/Long;

    .line 288
    return-object p0
.end method

.method public setDateModified(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "date"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateModified:Ljava/lang/Long;

    .line 293
    return-object p0
.end method

.method public setFavicon([B)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mFavicon:[B

    .line 378
    return-object p0
.end method

.method public setIsDeleted(Z)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "isDeleted"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-boolean p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDeleted:Z

    .line 333
    return-object p0
.end method

.method public setIsDirty(Z)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "isDirty"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-boolean p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDirty:Z

    .line 328
    return-object p0
.end method

.method public setIsEmpty(Z)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "isEmpty"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-boolean p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    .line 323
    return-object p0
.end method

.method public setIsFolder(Z)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "isFolder"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-boolean p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsFolder:Z

    .line 318
    return-object p0
.end method

.method public setLocalId(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "id"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    .line 363
    return-object p0
.end method

.method public setLocalInsertAfter(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "id"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalInsertAfter:Ljava/lang/Long;

    .line 298
    return-object p0
.end method

.method public setLocalParentId(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "id"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalParentId:Ljava/lang/Long;

    .line 358
    return-object p0
.end method

.method public setLocalVersion(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "version"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalVersion:Ljava/lang/Long;

    .line 338
    return-object p0
.end method

.method public setPosition(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "position"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mPosition:Ljava/lang/Long;

    .line 313
    return-object p0
.end method

.method public setRemoteId(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public setRemoteInsertAfter(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteInsertAfter:Ljava/lang/String;

    .line 303
    return-object p0
.end method

.method public setRemoteParentId(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteParentId:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public setRemoteVersion(J)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 2
    .parameter "version"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteVersion:Ljava/lang/Long;

    .line 308
    return-object p0
.end method

.method public setServerUniqueTag(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "tag"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mTitle:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1
    .parameter "url"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->mEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    iput-object p1, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mUrl:Ljava/lang/String;

    .line 388
    return-object p0
.end method
