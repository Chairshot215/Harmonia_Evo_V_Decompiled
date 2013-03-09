.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPersonAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    }
.end annotation


# static fields
.field public static final ADDRESSTYPE_FIELD_NUMBER:I = 0x631

.field public static final CITY_FIELD_NUMBER:I = 0x3fc

.field public static final COUNTRY_FIELD_NUMBER:I = 0x570

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final PERSONID_FIELD_NUMBER:I = 0x4a2

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final REGION_FIELD_NUMBER:I = 0xd3

.field public static final STATE_FIELD_NUMBER:I = 0x5a3

.field public static final STREET1_FIELD_NUMBER:I = 0x798

.field public static final STREET2_FIELD_NUMBER:I = 0x1c6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final ZIPCODE_FIELD_NUMBER:I = 0x1a6

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;


# instance fields
.field private addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

.field private city_:Ljava/lang/String;

.field private country_:Ljava/lang/String;

.field private hasAddressType:Z

.field private hasCity:Z

.field private hasCountry:Z

.field private hasId:Z

.field private hasPersonId:Z

.field private hasPriority:Z

.field private hasRegion:Z

.field private hasState:Z

.field private hasStreet1:Z

.field private hasStreet2:Z

.field private hasTimestamp:Z

.field private hasZipCode:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private priority_:I

.field private region_:Ljava/lang/String;

.field private state_:Ljava/lang/String;

.field private street1_:Ljava/lang/String;

.field private street2_:Ljava/lang/String;

.field private timestamp_:J

.field private zipCode_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26656
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 27490
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 27494
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 27495
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26654
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 26745
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 26752
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->city_:Ljava/lang/String;

    .line 26759
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->country_:Ljava/lang/String;

    .line 26766
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 26773
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 26780
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->priority_:I

    .line 26787
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->region_:Ljava/lang/String;

    .line 26794
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->state_:Ljava/lang/String;

    .line 26801
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street1_:Ljava/lang/String;

    .line 26808
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street2_:Ljava/lang/String;

    .line 26815
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->timestamp_:J

    .line 26822
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->zipCode_:Ljava/lang/String;

    .line 26877
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->memoizedSerializedSize:I

    .line 26654
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26651
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;-><init>()V

    return-void
.end method

.method static synthetic access$76702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType:Z

    return p1
.end method

.method static synthetic access$76802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    return-object p1
.end method

.method static synthetic access$76902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity:Z

    return p1
.end method

.method static synthetic access$77002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->city_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$77102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry:Z

    return p1
.end method

.method static synthetic access$77202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->country_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z

    return p1
.end method

.method static synthetic access$77400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26651
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$77600(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26651
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$77702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority:Z

    return p1
.end method

.method static synthetic access$77802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->priority_:I

    return p1
.end method

.method static synthetic access$77902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion:Z

    return p1
.end method

.method static synthetic access$78002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->region_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$78102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState:Z

    return p1
.end method

.method static synthetic access$78202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->state_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$78302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1:Z

    return p1
.end method

.method static synthetic access$78402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street1_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$78502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2:Z

    return p1
.end method

.method static synthetic access$78602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street2_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$78702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$78802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$78902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode:Z

    return p1
.end method

.method static synthetic access$79002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26651
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->zipCode_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 26658
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 26667
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$76200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1

    .prologue
    .line 26994
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76500()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 26997
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26972
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26978
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26939
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26945
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26984
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26990
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26961
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26967
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26950
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26956
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 1

    .prologue
    .line 26747
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26754
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26761
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 26662
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 26651
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 26651
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 26768
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 26775
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 26782
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->priority_:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26789
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->region_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 26879
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->memoizedSerializedSize:I

    .line 26880
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 26933
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 26882
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 26883
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26884
    const/16 v2, 0xd3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26887
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26888
    const/16 v2, 0x1a6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26891
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26892
    const/16 v2, 0x1c6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26895
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26896
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 26899
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26900
    const/16 v2, 0x3fc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26903
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26904
    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26907
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26908
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26911
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26912
    const/16 v2, 0x570

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26915
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 26916
    const/16 v2, 0x5a3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26919
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 26920
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 26923
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 26924
    const/16 v2, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 26927
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 26928
    const/16 v2, 0x798

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26931
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 26932
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 26933
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26796
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26803
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street1_:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26810
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street2_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 26817
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->timestamp_:J

    return-wide v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26824
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->zipCode_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddressType()Z
    .locals 1

    .prologue
    .line 26746
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType:Z

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 26753
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity:Z

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 26760
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 26767
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 26774
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 26781
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority:Z

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 26788
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 26795
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState:Z

    return v0
.end method

.method public hasStreet1()Z
    .locals 1

    .prologue
    .line 26802
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1:Z

    return v0
.end method

.method public hasStreet2()Z
    .locals 1

    .prologue
    .line 26809
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 26816
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp:Z

    return v0
.end method

.method public hasZipCode()Z
    .locals 1

    .prologue
    .line 26823
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 26672
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$76300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26827
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26828
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 26833
    :cond_0
    :goto_0
    return v0

    .line 26830
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26831
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26833
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1

    .prologue
    .line 26995
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 26651
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 26651
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1

    .prologue
    .line 26999
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 26651
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 26651
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 26838
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26839
    const/16 v0, 0xd3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 26841
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26842
    const/16 v0, 0x1a6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 26844
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26845
    const/16 v0, 0x1c6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 26847
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26848
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26850
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26851
    const/16 v0, 0x3fc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 26853
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26854
    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 26856
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26857
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 26859
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26860
    const/16 v0, 0x570

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 26862
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26863
    const/16 v0, 0x5a3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 26865
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26866
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 26868
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26869
    const/16 v0, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 26871
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26872
    const/16 v0, 0x798

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 26874
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 26875
    return-void
.end method
