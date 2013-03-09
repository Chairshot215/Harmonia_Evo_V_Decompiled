.class public Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
.super Ljava/lang/Object;
.source "SyncableItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;,
        Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;,
        Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;,
        Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    }
.end annotation


# static fields
.field public static DELETE_TYPE:I

.field public static INSERT_TYPE:I

.field public static MODIFY_TYPE:I


# instance fields
.field private final mItemEntity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->INSERT_TYPE:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->MODIFY_TYPE:I

    .line 24
    const/4 v0, 0x3

    sput v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->DELETE_TYPE:I

    return-void
.end method

.method protected constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;I)V
    .locals 0
    .parameter "entity"
    .parameter "type"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->mItemEntity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 31
    iput p2, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->mType:I

    .line 32
    return-void
.end method


# virtual methods
.method public getSyncEntity()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->mItemEntity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->mType:I

    return v0
.end method
