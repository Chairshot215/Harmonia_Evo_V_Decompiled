.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;,
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;


# instance fields
.field private bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

.field private clientDefinedUniqueTag_:Ljava/lang/String;

.field private ctime_:J

.field private deleted_:Z

.field private folder_:Z

.field private hasBookmarkData:Z

.field private hasClientDefinedUniqueTag:Z

.field private hasCtime:Z

.field private hasDeleted:Z

.field private hasFolder:Z

.field private hasIdString:Z

.field private hasInsertAfterItemId:Z

.field private hasMtime:Z

.field private hasName:Z

.field private hasNonUniqueName:Z

.field private hasOldParentId:Z

.field private hasOriginatorCacheGuid:Z

.field private hasOriginatorClientItemId:Z

.field private hasParentIdString:Z

.field private hasPositionInParent:Z

.field private hasServerDefinedUniqueTag:Z

.field private hasSpecifics:Z

.field private hasSyncTimestamp:Z

.field private hasVersion:Z

.field private idString_:Ljava/lang/String;

.field private insertAfterItemId_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private mtime_:J

.field private name_:Ljava/lang/String;

.field private nonUniqueName_:Ljava/lang/String;

.field private oldParentId_:Ljava/lang/String;

.field private originatorCacheGuid_:Ljava/lang/String;

.field private originatorClientItemId_:Ljava/lang/String;

.field private parentIdString_:Ljava/lang/String;

.field private positionInParent_:J

.field private serverDefinedUniqueTag_:Ljava/lang/String;

.field private specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

.field private syncTimestamp_:J

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2113
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 2114
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 2115
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->initFields()V

    .line 2116
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 745
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1099
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->idString_:Ljava/lang/String;

    .line 1106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->parentIdString_:Ljava/lang/String;

    .line 1113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->oldParentId_:Ljava/lang/String;

    .line 1120
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->version_:J

    .line 1127
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->mtime_:J

    .line 1134
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->ctime_:J

    .line 1141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->name_:Ljava/lang/String;

    .line 1148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->nonUniqueName_:Ljava/lang/String;

    .line 1155
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->syncTimestamp_:J

    .line 1162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->serverDefinedUniqueTag_:Ljava/lang/String;

    .line 1176
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->positionInParent_:J

    .line 1183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->insertAfterItemId_:Ljava/lang/String;

    .line 1190
    iput-boolean v3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->deleted_:Z

    .line 1197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorCacheGuid_:Ljava/lang/String;

    .line 1204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorClientItemId_:Ljava/lang/String;

    .line 1218
    iput-boolean v3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->folder_:Z

    .line 1225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->clientDefinedUniqueTag_:Ljava/lang/String;

    .line 1307
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->memoizedSerializedSize:I

    .line 746
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->initFields()V

    .line 747
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .parameter "noInit"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 748
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1099
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->idString_:Ljava/lang/String;

    .line 1106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->parentIdString_:Ljava/lang/String;

    .line 1113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->oldParentId_:Ljava/lang/String;

    .line 1120
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->version_:J

    .line 1127
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->mtime_:J

    .line 1134
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->ctime_:J

    .line 1141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->name_:Ljava/lang/String;

    .line 1148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->nonUniqueName_:Ljava/lang/String;

    .line 1155
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->syncTimestamp_:J

    .line 1162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->serverDefinedUniqueTag_:Ljava/lang/String;

    .line 1176
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->positionInParent_:J

    .line 1183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->insertAfterItemId_:Ljava/lang/String;

    .line 1190
    iput-boolean v3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->deleted_:Z

    .line 1197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorCacheGuid_:Ljava/lang/String;

    .line 1204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorClientItemId_:Ljava/lang/String;

    .line 1218
    iput-boolean v3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->folder_:Z

    .line 1225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->clientDefinedUniqueTag_:Ljava/lang/String;

    .line 1307
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->memoizedSerializedSize:I

    .line 748
    return-void
.end method

.method static synthetic access$3202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->idString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->parentIdString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOldParentId:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->oldParentId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasVersion:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->version_:J

    return-wide p1
.end method

.method static synthetic access$4002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasMtime:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->mtime_:J

    return-wide p1
.end method

.method static synthetic access$4202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasCtime:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->ctime_:J

    return-wide p1
.end method

.method static synthetic access$4402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasNonUniqueName:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->nonUniqueName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSyncTimestamp:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->syncTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$5002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasServerDefinedUniqueTag:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->serverDefinedUniqueTag_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasPositionInParent:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->positionInParent_:J

    return-wide p1
.end method

.method static synthetic access$5602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasInsertAfterItemId:Z

    return p1
.end method

.method static synthetic access$5702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->insertAfterItemId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasDeleted:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->deleted_:Z

    return p1
.end method

.method static synthetic access$6002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorCacheGuid:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorCacheGuid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorClientItemId:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorClientItemId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasFolder:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->folder_:Z

    return p1
.end method

.method static synthetic access$6802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasClientDefinedUniqueTag:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->clientDefinedUniqueTag_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .locals 1

    .prologue
    .line 752
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1230
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 1231
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 1232
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 1

    .prologue
    .line 1460
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->access$3000()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1463
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    return-object v0
.end method

.method public getClientDefinedUniqueTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->clientDefinedUniqueTag_:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()J
    .locals 2

    .prologue
    .line 1136
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->ctime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .locals 1

    .prologue
    .line 756
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v0

    return-object v0
.end method

.method public getDeleted()Z
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->deleted_:Z

    return v0
.end method

.method public getFolder()Z
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->folder_:Z

    return v0
.end method

.method public getIdString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->idString_:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertAfterItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->insertAfterItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMtime()J
    .locals 2

    .prologue
    .line 1129
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->mtime_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNonUniqueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->nonUniqueName_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->oldParentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatorCacheGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorCacheGuid_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatorClientItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorClientItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIdString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->parentIdString_:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInParent()J
    .locals 2

    .prologue
    .line 1178
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->positionInParent_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1309
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->memoizedSerializedSize:I

    .line 1310
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1390
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1312
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1313
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1314
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1317
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1318
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getParentIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1321
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOldParentId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1322
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOldParentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1325
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1326
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getVersion()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1329
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasMtime()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1330
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getMtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1333
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasCtime()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1334
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getCtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1337
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1338
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1341
    :cond_7
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasNonUniqueName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1342
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getNonUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1345
    :cond_8
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSyncTimestamp()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1346
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSyncTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1349
    :cond_9
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasServerDefinedUniqueTag()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1350
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getServerDefinedUniqueTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1353
    :cond_a
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1354
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1357
    :cond_b
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasPositionInParent()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1358
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getPositionInParent()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1361
    :cond_c
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasInsertAfterItemId()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1362
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getInsertAfterItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1365
    :cond_d
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasDeleted()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1366
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getDeleted()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1369
    :cond_e
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorCacheGuid()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1370
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorCacheGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1373
    :cond_f
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorClientItemId()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1374
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorClientItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1377
    :cond_10
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1378
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1381
    :cond_11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasFolder()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1382
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getFolder()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1385
    :cond_12
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasClientDefinedUniqueTag()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1386
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getClientDefinedUniqueTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1389
    :cond_13
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->memoizedSerializedSize:I

    move v1, v0

    .line 1390
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getServerDefinedUniqueTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->serverDefinedUniqueTag_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object v0
.end method

.method public getSyncTimestamp()J
    .locals 2

    .prologue
    .line 1157
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->syncTimestamp_:J

    return-wide v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 1122
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->version_:J

    return-wide v0
.end method

.method public hasBookmarkData()Z
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData:Z

    return v0
.end method

.method public hasClientDefinedUniqueTag()Z
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasClientDefinedUniqueTag:Z

    return v0
.end method

.method public hasCtime()Z
    .locals 1

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasCtime:Z

    return v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 1191
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasDeleted:Z

    return v0
.end method

.method public hasFolder()Z
    .locals 1

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasFolder:Z

    return v0
.end method

.method public hasIdString()Z
    .locals 1

    .prologue
    .line 1100
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString:Z

    return v0
.end method

.method public hasInsertAfterItemId()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasInsertAfterItemId:Z

    return v0
.end method

.method public hasMtime()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasMtime:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName:Z

    return v0
.end method

.method public hasNonUniqueName()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasNonUniqueName:Z

    return v0
.end method

.method public hasOldParentId()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOldParentId:Z

    return v0
.end method

.method public hasOriginatorCacheGuid()Z
    .locals 1

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorCacheGuid:Z

    return v0
.end method

.method public hasOriginatorClientItemId()Z
    .locals 1

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorClientItemId:Z

    return v0
.end method

.method public hasParentIdString()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString:Z

    return v0
.end method

.method public hasPositionInParent()Z
    .locals 1

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasPositionInParent:Z

    return v0
.end method

.method public hasServerDefinedUniqueTag()Z
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasServerDefinedUniqueTag:Z

    return v0
.end method

.method public hasSpecifics()Z
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics:Z

    return v0
.end method

.method public hasSyncTimestamp()Z
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSyncTimestamp:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1234
    iget-boolean v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasVersion:Z

    if-nez v1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1235
    :cond_1
    iget-boolean v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName:Z

    if-eqz v1, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1237
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1239
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1240
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 1

    .prologue
    .line 1461
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 1

    .prologue
    .line 1465
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSerializedSize()I

    .line 1248
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getParentIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOldParentId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOldParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1257
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1258
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getVersion()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1260
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasMtime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1261
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getMtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1263
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasCtime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1264
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getCtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1266
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1267
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1269
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasNonUniqueName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1270
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getNonUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1272
    :cond_7
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSyncTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1273
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSyncTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1275
    :cond_8
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasServerDefinedUniqueTag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1276
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getServerDefinedUniqueTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1278
    :cond_9
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1279
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 1281
    :cond_a
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasPositionInParent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1282
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getPositionInParent()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1284
    :cond_b
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasInsertAfterItemId()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1285
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getInsertAfterItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1287
    :cond_c
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1288
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getDeleted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1290
    :cond_d
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorCacheGuid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1291
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorCacheGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1293
    :cond_e
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorClientItemId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1294
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorClientItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1296
    :cond_f
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1297
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1299
    :cond_10
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasFolder()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1300
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getFolder()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1302
    :cond_11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasClientDefinedUniqueTag()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1303
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getClientDefinedUniqueTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1305
    :cond_12
    return-void
.end method
