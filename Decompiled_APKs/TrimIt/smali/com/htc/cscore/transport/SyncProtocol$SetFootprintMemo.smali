.class public final Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetFootprintMemo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    }
.end annotation


# static fields
.field public static final FOOTPRINTMEMO_FIELD_NUMBER:I = 0x7e7

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;


# instance fields
.field private footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

.field private hasFootprintMemo:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7942
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 8222
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 8226
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 8227
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7940
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 7964
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 7982
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->memoizedSerializedSize:I

    .line 7940
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7937
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;-><init>()V

    return-void
.end method

.method static synthetic access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7937
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z

    return p1
.end method

.method static synthetic access$23600(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7937
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method static synthetic access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7937
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 7944
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7953
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 8055
    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23300()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8058
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8033
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8039
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8000
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8006
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8045
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8051
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8022
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8028
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8011
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8017
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 7948
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7937
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7937
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 7966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 7984
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->memoizedSerializedSize:I

    .line 7985
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7994
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7987
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7988
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7989
    const/16 v2, 0x7e7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7992
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 7993
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->memoizedSerializedSize:I

    move v1, v0

    .line 7994
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasFootprintMemo()Z
    .locals 1

    .prologue
    .line 7965
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7958
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7969
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z

    if-nez v1, :cond_1

    .line 7971
    :cond_0
    :goto_0
    return v0

    .line 7970
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7971
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 8056
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7937
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7937
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 8060
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7937
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7937
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 7976
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7977
    const/16 v0, 0x7e7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 7979
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 7980
    return-void
.end method
