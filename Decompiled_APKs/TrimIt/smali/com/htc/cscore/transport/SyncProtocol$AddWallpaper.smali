.class public final Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddWallpaper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    }
.end annotation


# static fields
.field public static final WALLPAPER_FIELD_NUMBER:I = 0x112

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;


# instance fields
.field private hasWallpaper:Z

.field private memoizedSerializedSize:I

.field private wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49009
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 49289
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 49293
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 49294
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49007
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 49031
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    .line 49049
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->memoizedSerializedSize:I

    .line 49007
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49004
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;-><init>()V

    return-void
.end method

.method static synthetic access$141702(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49004
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper:Z

    return p1
.end method

.method static synthetic access$141800(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    return-object v0
.end method

.method static synthetic access$141802(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49004
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    .prologue
    .line 49011
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 49020
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$141200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 1

    .prologue
    .line 49122
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141500()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 49125
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49100
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49106
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49067
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49073
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49112
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49118
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49089
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49095
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49078
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49084
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    .prologue
    .line 49015
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 49051
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->memoizedSerializedSize:I

    .line 49052
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 49061
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 49054
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 49055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49056
    const/16 v2, 0x112

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 49059
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 49060
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->memoizedSerializedSize:I

    move v1, v0

    .line 49061
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1

    .prologue
    .line 49033
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    return-object v0
.end method

.method public hasWallpaper()Z
    .locals 1

    .prologue
    .line 49032
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 49025
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$141300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49036
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper:Z

    if-nez v1, :cond_1

    .line 49038
    :cond_0
    :goto_0
    return v0

    .line 49037
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49038
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 1

    .prologue
    .line 49123
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 1

    .prologue
    .line 49127
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

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
    .line 49043
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49044
    const/16 v0, 0x112

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 49046
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 49047
    return-void
.end method
