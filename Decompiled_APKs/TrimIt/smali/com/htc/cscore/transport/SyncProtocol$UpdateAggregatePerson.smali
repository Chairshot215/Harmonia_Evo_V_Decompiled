.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAggregatePerson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    }
.end annotation


# static fields
.field public static final PERSON_FIELD_NUMBER:I = 0x38

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;


# instance fields
.field private hasPerson:Z

.field private memoizedSerializedSize:I

.field private person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3406
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 3686
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 3690
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 3691
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3404
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 3428
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 3446
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->memoizedSerializedSize:I

    .line 3404
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3401
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;-><init>()V

    return-void
.end method

.method static synthetic access$9202(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3401
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3401
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    .prologue
    .line 3408
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3417
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$8700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 3519
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$9000()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3522
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3497
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3503
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3464
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3470
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3509
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3515
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3486
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3492
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3475
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3481
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    .prologue
    .line 3412
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3448
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->memoizedSerializedSize:I

    .line 3449
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3458
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3451
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3452
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3453
    const/16 v2, 0x38

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3456
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 3457
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->memoizedSerializedSize:I

    move v1, v0

    .line 3458
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPerson()Z
    .locals 1

    .prologue
    .line 3429
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3422
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$8800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3433
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson:Z

    if-nez v1, :cond_1

    .line 3435
    :cond_0
    :goto_0
    return v0

    .line 3434
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3435
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 3520
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 3524
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

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
    .line 3440
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3441
    const/16 v0, 0x38

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 3443
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 3444
    return-void
.end method
