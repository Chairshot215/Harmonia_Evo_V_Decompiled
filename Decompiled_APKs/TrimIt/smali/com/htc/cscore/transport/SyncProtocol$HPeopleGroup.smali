.class public final Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    }
.end annotation


# static fields
.field public static final ACCOUNTTYPE_FIELD_NUMBER:I = 0x8f

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final ISDEFAULT_FIELD_NUMBER:I = 0x550

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final PERSONCOUNT_FIELD_NUMBER:I = 0x247

.field public static final ROLLUPGROUPID_FIELD_NUMBER:I = 0x691

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;


# instance fields
.field private accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

.field private hasAccountType:Z

.field private hasId:Z

.field private hasIsDefault:Z

.field private hasName:Z

.field private hasPersonCount:Z

.field private hasRollupGroupId:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private isDefault_:Z

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private personCount_:I

.field private rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22769
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 23392
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 23396
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 23397
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22767
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 22860
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    .line 22867
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22874
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isDefault_:Z

    .line 22881
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->name_:Ljava/lang/String;

    .line 22888
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->personCount_:I

    .line 22895
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22902
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->timestamp_:J

    .line 22942
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->memoizedSerializedSize:I

    .line 22767
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22764
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$67002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType:Z

    return p1
.end method

.method static synthetic access$67102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    return-object p1
.end method

.method static synthetic access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z

    return p1
.end method

.method static synthetic access$67300(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$67402(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault:Z

    return p1
.end method

.method static synthetic access$67502(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isDefault_:Z

    return p1
.end method

.method static synthetic access$67602(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName:Z

    return p1
.end method

.method static synthetic access$67702(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$67802(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount:Z

    return p1
.end method

.method static synthetic access$67902(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->personCount_:I

    return p1
.end method

.method static synthetic access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z

    return p1
.end method

.method static synthetic access$68100(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$68202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$68302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22764
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 22771
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 22780
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$66500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 23039
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66800()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 23042
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23017
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23023
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22984
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22990
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23029
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23035
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23006
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23012
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22995
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23001
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    .locals 1

    .prologue
    .line 22862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 22775
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 22764
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22764
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 22869
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 22876
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isDefault_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22883
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCount()I
    .locals 1

    .prologue
    .line 22890
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->personCount_:I

    return v0
.end method

.method public getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 22897
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 22944
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->memoizedSerializedSize:I

    .line 22945
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 22978
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 22947
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 22948
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22949
    const/16 v2, 0x8f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22952
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22953
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22956
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22957
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22960
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22961
    const/16 v2, 0x247

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getPersonCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22964
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22965
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22968
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22969
    const/16 v2, 0x550

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getIsDefault()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22972
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22973
    const/16 v2, 0x691

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22976
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 22977
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->memoizedSerializedSize:I

    move v1, v0

    .line 22978
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 22904
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->timestamp_:J

    return-wide v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 22861
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 22868
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z

    return v0
.end method

.method public hasIsDefault()Z
    .locals 1

    .prologue
    .line 22875
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 22882
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName:Z

    return v0
.end method

.method public hasPersonCount()Z
    .locals 1

    .prologue
    .line 22889
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount:Z

    return v0
.end method

.method public hasRollupGroupId()Z
    .locals 1

    .prologue
    .line 22896
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 22903
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 22785
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$66600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22908
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 22913
    :cond_0
    :goto_0
    return v0

    .line 22910
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22911
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22913
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 23040
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22764
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22764
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 23044
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22764
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22764
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 22918
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22919
    const/16 v0, 0x8f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 22921
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22922
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 22924
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22925
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22927
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22928
    const/16 v0, 0x247

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getPersonCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22930
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22931
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 22933
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22934
    const/16 v0, 0x550

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getIsDefault()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22936
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22937
    const/16 v0, 0x691

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 22939
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 22940
    return-void
.end method
