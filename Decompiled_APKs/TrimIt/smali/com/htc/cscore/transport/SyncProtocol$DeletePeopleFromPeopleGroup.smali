.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletePeopleFromPeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    }
.end annotation


# static fields
.field public static final MAPPING_FIELD_NUMBER:I = 0x7a6

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;


# instance fields
.field private mapping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24332
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 24636
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 24640
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 24641
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24330
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 24353
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;

    .line 24378
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->memoizedSerializedSize:I

    .line 24330
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24327
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$70802(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24327
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    .prologue
    .line 24334
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 24343
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$70300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24451
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70600()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 24454
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24429
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24435
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24396
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24402
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24441
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24447
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24418
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24424
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24407
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24413
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    .prologue
    .line 24338
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24327
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24327
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMapping(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 24360
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    return-object v0
.end method

.method public getMappingCount()I
    .locals 1

    .prologue
    .line 24358
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 24380
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->memoizedSerializedSize:I

    .line 24381
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 24390
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 24383
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 24384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getMappingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 24385
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    const/16 v4, 0x7a6

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 24388
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 24389
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->memoizedSerializedSize:I

    move v3, v2

    .line 24390
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 24348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$70400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 24364
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getMappingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 24365
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 24367
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24452
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24327
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24327
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24456
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24327
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24327
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

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
    .line 24372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getMappingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 24373
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    const/16 v2, 0x7a6

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 24375
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 24376
    return-void
.end method
