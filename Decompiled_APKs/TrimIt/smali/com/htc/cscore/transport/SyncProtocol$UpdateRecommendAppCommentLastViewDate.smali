.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateRecommendAppCommentLastViewDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35655
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    .line 35870
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 35874
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 35875
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35653
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 35683
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->memoizedSerializedSize:I

    .line 35653
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35650
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    .prologue
    .line 35657
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 35666
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$103900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1

    .prologue
    .line 35752
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104200()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 35755
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35730
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35736
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35697
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35703
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35742
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35748
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35719
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35725
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35708
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35714
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    .prologue
    .line 35661
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35650
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35650
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 35685
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->memoizedSerializedSize:I

    .line 35686
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 35691
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 35688
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 35689
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 35690
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->memoizedSerializedSize:I

    move v1, v0

    .line 35691
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35671
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 35675
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1

    .prologue
    .line 35753
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35650
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35650
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1

    .prologue
    .line 35757
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35650
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35650
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35680
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 35681
    return-void
.end method
