.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3000()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 1

    .prologue
    .line 1467
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 3

    .prologue
    .line 1476
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;-><init>()V

    .line 1477
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 1478
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1509
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .locals 3

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    if-nez v1, :cond_0

    .line 1523
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 1527
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 1528
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2

    .prologue
    .line 1495
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .locals 1

    .prologue
    .line 1499
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v0

    return-object v0
.end method

.method public getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public hasBookmarkData()Z
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData()Z

    move-result v0

    return v0
.end method

.method public hasIdString()Z
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasParentIdString()Z
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString()Z

    move-result v0

    return v0
.end method

.method public hasSpecifics()Z
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeBookmarkData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 1925
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1926
    return-object p0

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1532
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return-object p0

    .line 1533
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1534
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getIdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1536
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1537
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getParentIdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setParentIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1539
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOldParentId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1540
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOldParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setOldParentId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1542
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1543
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1545
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasMtime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1546
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getMtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setMtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1548
    :cond_6
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasCtime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1549
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getCtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setCtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1551
    :cond_7
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1552
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1554
    :cond_8
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasNonUniqueName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1555
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getNonUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1557
    :cond_9
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSyncTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1558
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSyncTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setSyncTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1560
    :cond_a
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasServerDefinedUniqueTag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1561
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getServerDefinedUniqueTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setServerDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1563
    :cond_b
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1564
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->mergeBookmarkData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1566
    :cond_c
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasPositionInParent()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1567
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getPositionInParent()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setPositionInParent(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1569
    :cond_d
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasInsertAfterItemId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1570
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getInsertAfterItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1572
    :cond_e
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1573
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getDeleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setDeleted(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1575
    :cond_f
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorCacheGuid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1576
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorCacheGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setOriginatorCacheGuid(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1578
    :cond_10
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorClientItemId()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1579
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getOriginatorClientItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setOriginatorClientItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1581
    :cond_11
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1582
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->mergeSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1584
    :cond_12
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasFolder()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1585
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getFolder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setFolder(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 1587
    :cond_13
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasClientDefinedUniqueTag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getClientDefinedUniqueTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1599
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1603
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1604
    :sswitch_0
    return-object p0

    .line 1609
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1613
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setParentIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1617
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setOldParentId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1621
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1625
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setMtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1629
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setCtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1633
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1637
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1641
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setSyncTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1645
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setServerDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1649
    :sswitch_b
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    .line 1650
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasBookmarkData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->getBookmarkData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    .line 1653
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1654
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setBookmarkData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto :goto_0

    .line 1658
    .end local v0           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setPositionInParent(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1662
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1666
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setDeleted(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1670
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setOriginatorCacheGuid(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1674
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setOriginatorClientItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1678
    :sswitch_11
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    .line 1679
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasSpecifics()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1680
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->getSpecifics()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    .line 1682
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1683
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1687
    .end local v0           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setFolder(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1691
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    goto/16 :goto_0

    .line 1599
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5b -> :sswitch_b
        0x78 -> :sswitch_c
        0x82 -> :sswitch_d
        0x90 -> :sswitch_e
        0x9a -> :sswitch_f
        0xa2 -> :sswitch_10
        0xaa -> :sswitch_11
        0xb0 -> :sswitch_12
        0xba -> :sswitch_13
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1467
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 2061
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2062
    return-object p0

    .line 2059
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    goto :goto_0
.end method

.method public setBookmarkData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1914
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 1915
    return-object p0
.end method

.method public setBookmarkData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1905
    if-nez p1, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasBookmarkData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1909
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->bookmarkData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 1910
    return-object p0
.end method

.method public setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2096
    if-nez p1, :cond_0

    .line 2097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasClientDefinedUniqueTag:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2100
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->clientDefinedUniqueTag_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 2101
    return-object p0
.end method

.method public setCtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasCtime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1807
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->ctime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J

    .line 1808
    return-object p0
.end method

.method public setDeleted(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasDeleted:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1982
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->deleted_:Z
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1983
    return-object p0
.end method

.method public setFolder(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasFolder:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2079
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->folder_:Z
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2080
    return-object p0
.end method

.method public setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1707
    if-nez p1, :cond_0

    .line 1708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasIdString:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1711
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->idString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 1712
    return-object p0
.end method

.method public setInsertAfterItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1960
    if-nez p1, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1963
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasInsertAfterItemId:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1964
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->insertAfterItemId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 1965
    return-object p0
.end method

.method public setMtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasMtime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1789
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->mtime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J

    .line 1790
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1824
    if-nez p1, :cond_0

    .line 1825
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasName:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1828
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 1829
    return-object p0
.end method

.method public setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1845
    if-nez p1, :cond_0

    .line 1846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasNonUniqueName:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1849
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->nonUniqueName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 1850
    return-object p0
.end method

.method public setOldParentId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1749
    if-nez p1, :cond_0

    .line 1750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOldParentId:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1753
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->oldParentId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 1754
    return-object p0
.end method

.method public setOriginatorCacheGuid(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1999
    if-nez p1, :cond_0

    .line 2000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorCacheGuid:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2003
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorCacheGuid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 2004
    return-object p0
.end method

.method public setOriginatorClientItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2020
    if-nez p1, :cond_0

    .line 2021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasOriginatorClientItemId:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2024
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->originatorClientItemId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 2025
    return-object p0
.end method

.method public setParentIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1728
    if-nez p1, :cond_0

    .line 1729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasParentIdString:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1732
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->parentIdString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 1733
    return-object p0
.end method

.method public setPositionInParent(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasPositionInParent:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1943
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->positionInParent_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J

    .line 1944
    return-object p0
.end method

.method public setServerDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1884
    if-nez p1, :cond_0

    .line 1885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasServerDefinedUniqueTag:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1888
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->serverDefinedUniqueTag_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$5102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 1889
    return-object p0
.end method

.method public setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2050
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 2051
    return-object p0
.end method

.method public setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2041
    if-nez p1, :cond_0

    .line 2042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSpecifics:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 2045
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->specifics_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$6502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 2046
    return-object p0
.end method

.method public setSyncTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasSyncTimestamp:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1867
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->syncTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$4902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J

    .line 1868
    return-object p0
.end method

.method public setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Z)Z

    .line 1771
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->version_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->access$3902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;J)J

    .line 1772
    return-object p0
.end method
