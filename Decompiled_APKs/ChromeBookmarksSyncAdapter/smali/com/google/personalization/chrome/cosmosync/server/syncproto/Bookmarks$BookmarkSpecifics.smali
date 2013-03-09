.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookmarkSpecifics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;


# instance fields
.field private favicon_:Lcom/google/protobuf/ByteString;

.field private hasFavicon:Z

.field private hasUrl:Z

.field private memoizedSerializedSize:I

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    .line 302
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->internalForceInit()V

    .line 303
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->initFields()V

    .line 304
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->url_:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->favicon_:Lcom/google/protobuf/ByteString;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->memoizedSerializedSize:I

    .line 16
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->initFields()V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->url_:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->favicon_:Lcom/google/protobuf/ByteString;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->memoizedSerializedSize:I

    .line 18
    return-void
.end method

.method static synthetic access$302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasUrl:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->url_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->favicon_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 1

    .prologue
    .line 145
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->access$100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 148
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->favicon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 62
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->memoizedSerializedSize:I

    .line 63
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 75
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 65
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getFavicon()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 74
    :cond_2
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->memoizedSerializedSize:I

    move v1, v0

    .line 75
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFavicon()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 1

    .prologue
    .line 150
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

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
    .line 51
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getSerializedSize()I

    .line 52
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getFavicon()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 58
    :cond_1
    return-void
.end method
