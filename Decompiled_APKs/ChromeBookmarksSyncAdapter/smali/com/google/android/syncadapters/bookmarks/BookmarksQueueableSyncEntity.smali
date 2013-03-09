.class Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
.super Ljava/lang/Object;
.source "BookmarksQueueableSyncEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    }
.end annotation


# instance fields
.field mClientGuid:Ljava/lang/String;

.field mClientUniqueTag:Ljava/lang/String;

.field mDateCreated:Ljava/lang/Long;

.field mDateModified:Ljava/lang/Long;

.field mFavicon:[B

.field mIsDeleted:Z

.field mIsDirty:Z

.field mIsEmpty:Z

.field mIsFolder:Z

.field mLocalId:Ljava/lang/Long;

.field mLocalInsertAfter:Ljava/lang/Long;

.field mLocalParentId:Ljava/lang/Long;

.field mLocalVersion:Ljava/lang/Long;

.field mPosition:Ljava/lang/Long;

.field mRemoteId:Ljava/lang/String;

.field mRemoteInsertAfter:Ljava/lang/String;

.field mRemoteParentId:Ljava/lang/String;

.field mRemoteVersion:Ljava/lang/Long;

.field mServerUniqueTag:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->wipeAllFields()V

    return-void
.end method

.method public static newBuilder()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    invoke-direct {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;-><init>()V

    return-object v0
.end method

.method private wipeAllFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 427
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    .line 428
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    .line 429
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    .line 430
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalParentId:Ljava/lang/Long;

    .line 431
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 432
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteParentId:Ljava/lang/String;

    .line 433
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalVersion:Ljava/lang/Long;

    .line 435
    iput-boolean v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDeleted:Z

    .line 436
    iput-boolean v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDirty:Z

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    .line 438
    iput-boolean v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsFolder:Z

    .line 439
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mPosition:Ljava/lang/Long;

    .line 440
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteVersion:Ljava/lang/Long;

    .line 441
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateCreated:Ljava/lang/Long;

    .line 442
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateModified:Ljava/lang/Long;

    .line 443
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalInsertAfter:Ljava/lang/Long;

    .line 444
    iput-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteInsertAfter:Ljava/lang/String;

    .line 445
    return-void
.end method


# virtual methods
.method public asContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 448
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 449
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v1, "url"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "favicon"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mFavicon:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 452
    const-string v1, "folder"

    iget-boolean v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsFolder:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 453
    const-string v1, "position"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mPosition:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 454
    const-string v1, "created"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateCreated:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    const-string v1, "modified"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    const-string v1, "sourceid"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "sync2"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 458
    const-string v1, "sync3"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "sync4"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "sync1"

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteParentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "\nis empty: true"

    .line 401
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";favicon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mFavicon:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";is folder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsFolder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";date created:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateCreated:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";date modified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";server unique tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";client guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";local id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";local parent id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalParentId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";local version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";remote id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";remote parent id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";remote version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mPosition:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";is deleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";is empty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";is dirty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";client unique tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";local insert after:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalInsertAfter:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";remote insert after:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteInsertAfter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
