.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HRecommendWishlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$HWishlistAppTypes;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x75f

.field public static final APPTYPE_FIELD_NUMBER:I = 0x248

.field public static final APPURL_FIELD_NUMBER:I = 0x389

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final ISHTCHUBCONTENT_FIELD_NUMBER:I = 0x2df

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private appURL_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAppType:Z

.field private hasAppURL:Z

.field private hasId:Z

.field private hasIsHTCHubContent:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private isHTCHubContent_:Z

.field private memoizedSerializedSize:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37222
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 37774
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 37778
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 37779
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37220
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 37311
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;

    .line 37318
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;

    .line 37325
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;

    .line 37332
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z

    .line 37346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J

    .line 37380
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->memoizedSerializedSize:I

    .line 37220
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37217
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;-><init>()V

    return-void
.end method

.method static synthetic access$108502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId:Z

    return p1
.end method

.method static synthetic access$108602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$108702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType:Z

    return p1
.end method

.method static synthetic access$108802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$108902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL:Z

    return p1
.end method

.method static synthetic access$109002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$109102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z

    return p1
.end method

.method static synthetic access$109200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$109202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$109302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent:Z

    return p1
.end method

.method static synthetic access$109402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z

    return p1
.end method

.method static synthetic access$109502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$109602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37217
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 37224
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 37233
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$108000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 37473
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108300()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 37476
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37451
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37457
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37418
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37424
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37463
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37469
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37440
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37446
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37429
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37435
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37313
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37320
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 37228
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 37334
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getIsHTCHubContent()Z
    .locals 1

    .prologue
    .line 37341
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 37382
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->memoizedSerializedSize:I

    .line 37383
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 37412
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 37385
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 37386
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37387
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 37390
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37391
    const/16 v2, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37394
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37395
    const/16 v2, 0x2df

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getIsHTCHubContent()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 37398
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37399
    const/16 v2, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37402
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37403
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37406
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37407
    const/16 v2, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37410
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 37411
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->memoizedSerializedSize:I

    move v1, v0

    .line 37412
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 37348
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 37312
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 37319
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType:Z

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    .prologue
    .line 37326
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 37333
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z

    return v0
.end method

.method public hasIsHTCHubContent()Z
    .locals 1

    .prologue
    .line 37340
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 37347
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 37238
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$108100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 37351
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37352
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 37354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 37474
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 37478
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37359
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37360
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 37362
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37363
    const/16 v0, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 37365
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37366
    const/16 v0, 0x2df

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getIsHTCHubContent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 37368
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37369
    const/16 v0, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 37371
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37372
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 37374
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37375
    const/16 v0, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 37377
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 37378
    return-void
.end method
