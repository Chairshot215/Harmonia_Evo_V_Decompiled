.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookmarkData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;


# instance fields
.field private bookmarkFavicon_:Lcom/google/protobuf/ByteString;

.field private bookmarkFolder_:Z

.field private bookmarkUrl_:Ljava/lang/String;

.field private hasBookmarkFavicon:Z

.field private hasBookmarkFolder:Z

.field private hasBookmarkUrl:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1088
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 1089
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 1090
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->initFields()V

    .line 1091
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFolder_:Z

    .line 786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkUrl_:Ljava/lang/String;

    .line 793
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFavicon_:Lcom/google/protobuf/ByteString;

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->memoizedSerializedSize:I

    .line 763
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->initFields()V

    .line 764
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFolder_:Z

    .line 786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkUrl_:Ljava/lang/String;

    .line 793
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFavicon_:Lcom/google/protobuf/ByteString;

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->memoizedSerializedSize:I

    .line 765
    return-void
.end method

.method static synthetic access$2302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFolder:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFolder_:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkUrl:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFavicon:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFavicon_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 1

    .prologue
    .line 907
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->access$2100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 910
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBookmarkFavicon()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFavicon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBookmarkFolder()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFolder_:Z

    return v0
.end method

.method public getBookmarkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 1

    .prologue
    .line 773
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 820
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->memoizedSerializedSize:I

    .line 821
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 837
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 823
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkFolder()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 832
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFavicon()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 833
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkFavicon()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 836
    :cond_3
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->memoizedSerializedSize:I

    move v1, v0

    .line 837
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasBookmarkFavicon()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFavicon:Z

    return v0
.end method

.method public hasBookmarkFolder()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFolder:Z

    return v0
.end method

.method public hasBookmarkUrl()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFolder:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 801
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 1

    .prologue
    .line 908
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 1

    .prologue
    .line 912
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getSerializedSize()I

    .line 807
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkFolder()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFavicon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkFavicon()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 816
    :cond_2
    return-void
.end method
