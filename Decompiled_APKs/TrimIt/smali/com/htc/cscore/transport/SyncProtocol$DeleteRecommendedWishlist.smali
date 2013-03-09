.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteRecommendedWishlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x631

.field public static final APPTYPE_FIELD_NUMBER:I = 0x78a

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAppType:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33996
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 34297
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 34301
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 34302
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33994
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 34018
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appId_:Ljava/lang/String;

    .line 34025
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appType_:Ljava/lang/String;

    .line 34046
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->memoizedSerializedSize:I

    .line 33994
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33991
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;-><init>()V

    return-void
.end method

.method static synthetic access$98802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33991
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId:Z

    return p1
.end method

.method static synthetic access$98902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33991
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$99002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33991
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType:Z

    return p1
.end method

.method static synthetic access$99102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33991
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    .prologue
    .line 33998
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 34007
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$98300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 1

    .prologue
    .line 34123
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98600()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 34126
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34101
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34107
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34068
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34074
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34113
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34119
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34090
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34096
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34079
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34085
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34020
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34027
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    .prologue
    .line 34002
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 34048
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->memoizedSerializedSize:I

    .line 34049
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 34062
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 34051
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 34052
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34053
    const/16 v2, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34056
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34057
    const/16 v2, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34060
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 34061
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->memoizedSerializedSize:I

    move v1, v0

    .line 34062
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 34019
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 34026
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 34012
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$98400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34030
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId:Z

    if-nez v1, :cond_1

    .line 34032
    :cond_0
    :goto_0
    return v0

    .line 34031
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType:Z

    if-eqz v1, :cond_0

    .line 34032
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 1

    .prologue
    .line 34124
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 1

    .prologue
    .line 34128
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34037
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34038
    const/16 v0, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 34040
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34041
    const/16 v0, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 34043
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 34044
    return-void
.end method
