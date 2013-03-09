.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientSyncState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;
    }
.end annotation


# static fields
.field private static final type:Lcom/google/common/io/protocol/ProtoBufType;


# instance fields
.field private final mClientGuid:Ljava/lang/String;

.field private final mProgressMarkerToken:[B

.field private final mRemoteVersion:Ljava/lang/Long;

.field private final mServerBday:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x224

    const/4 v3, 0x0

    .line 1379
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v1, "BookmarkSyncState"

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    .line 1387
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 1388
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 1389
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 1390
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x223

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 1392
    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "remoteVersion"
    .parameter "clientGuid"
    .parameter "serverBday"

    .prologue
    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mRemoteVersion:Ljava/lang/Long;

    .line 1433
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;

    .line 1434
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;

    .line 1435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mProgressMarkerToken:[B

    .line 1436
    return-void
.end method

.method private constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "progressMarkerToken"
    .parameter "clientGuid"
    .parameter "serverBday"

    .prologue
    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mRemoteVersion:Ljava/lang/Long;

    .line 1440
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mProgressMarkerToken:[B

    .line 1441
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;

    .line 1442
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;

    .line 1443
    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1378
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;
    .locals 2

    .prologue
    .line 1446
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;
    .locals 2
    .parameter "clone"

    .prologue
    .line 1450
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;
    .locals 12
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/syncadapters/bookmarks/ProviderException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1454
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1456
    .local v2, item:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    invoke-virtual {v2, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, clientGuid:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1463
    .local v5, serverBday:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v11}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1464
    invoke-virtual {v2, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v3

    .line 1465
    .local v3, progressMarkerToken:[B
    new-instance v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    invoke-direct {v6, v3, v0, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 1468
    .end local v3           #progressMarkerToken:[B
    :goto_2
    return-object v6

    .line 1457
    .end local v0           #clientGuid:Ljava/lang/String;
    .end local v5           #serverBday:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1458
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Lcom/google/android/syncadapters/bookmarks/ProviderException;

    invoke-direct {v6, v1}, Lcom/google/android/syncadapters/bookmarks/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    move-object v0, v6

    .line 1460
    goto :goto_0

    .restart local v0       #clientGuid:Ljava/lang/String;
    :cond_1
    move-object v5, v6

    .line 1461
    goto :goto_1

    .line 1467
    .restart local v5       #serverBday:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1468
    .local v4, remoteVersion:Ljava/lang/Long;
    :goto_3
    new-instance v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    invoke-direct {v6, v4, v0, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v4           #remoteVersion:Ljava/lang/Long;
    :cond_3
    move-object v4, v6

    .line 1467
    goto :goto_3
.end method


# virtual methods
.method public getClientGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressMarkerToken()[B
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mProgressMarkerToken:[B

    return-object v0
.end method

.method public getRemoteVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mRemoteVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public getServerBday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;

    return-object v0
.end method

.method public toBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1474
    .local v0, item:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mProgressMarkerToken:[B

    if-eqz v1, :cond_3

    .line 1475
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mProgressMarkerToken:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    .line 1479
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1480
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 1482
    :cond_1
    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1483
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 1485
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 1476
    :cond_3
    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mRemoteVersion:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1477
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mRemoteVersion:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mRemoteVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; clientGuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; serverBday:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; progressMarkerToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mProgressMarkerToken:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
