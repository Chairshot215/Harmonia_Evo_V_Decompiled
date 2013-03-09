.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdatePeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    }
.end annotation


# static fields
.field public static final PEOPLEGROUP_FIELD_NUMBER:I = 0x6e3

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;


# instance fields
.field private hasPeopleGroup:Z

.field private memoizedSerializedSize:I

.field private peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24982
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 25262
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 25266
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 25267
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24980
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 25004
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 25022
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->memoizedSerializedSize:I

    .line 24980
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24977
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$72302(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24977
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup:Z

    return p1
.end method

.method static synthetic access$72400(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method static synthetic access$72402(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24977
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    .prologue
    .line 24984
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 24993
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$71800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 25095
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72100()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 25098
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25073
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25079
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25040
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25046
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25085
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25091
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25062
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25068
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25051
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25057
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->access$72000(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    .prologue
    .line 24988
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24977
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24977
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 25006
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 25024
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->memoizedSerializedSize:I

    .line 25025
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 25034
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 25027
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 25028
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25029
    const/16 v2, 0x6e3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25032
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 25033
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->memoizedSerializedSize:I

    move v1, v0

    .line 25034
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPeopleGroup()Z
    .locals 1

    .prologue
    .line 25005
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 24998
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$71900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25009
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup:Z

    if-nez v1, :cond_1

    .line 25011
    :cond_0
    :goto_0
    return v0

    .line 25010
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25011
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 25096
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24977
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24977
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 25100
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24977
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24977
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

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
    .line 25016
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->hasPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25017
    const/16 v0, 0x6e3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 25019
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 25020
    return-void
.end method
