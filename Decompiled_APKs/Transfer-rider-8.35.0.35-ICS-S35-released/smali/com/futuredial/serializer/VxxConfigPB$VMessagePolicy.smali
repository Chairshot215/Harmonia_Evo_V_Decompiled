.class public final Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
.super Lcom/google/protobuf/GeneratedMessage;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VMessagePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    }
.end annotation


# static fields
.field public static final DATE_IS_UTC_FIELD_NUMBER:I = 0x3

.field public static final HAS_X_NOK_DT_FIELD_NUMBER:I = 0x2

.field public static final POLICY_NAME_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;


# instance fields
.field private dateIsUtc_:Z

.field private hasDateIsUtc:Z

.field private hasHasXNokDt:Z

.field private hasPolicyName:Z

.field private hasXNokDt_:Z

.field private memoizedSerializedSize:I

.field private policyName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1353
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;-><init>(Z)V

    sput-object v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1354
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->internalForceInit()V

    .line 1355
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->initFields()V

    .line 1356
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 998
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1025
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->policyName_:Ljava/lang/String;

    .line 1032
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasXNokDt_:Z

    .line 1039
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->dateIsUtc_:Z

    .line 1065
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->memoizedSerializedSize:I

    .line 999
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->initFields()V

    .line 1000
    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x1

    .line 1001
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1025
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->policyName_:Ljava/lang/String;

    .line 1032
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasXNokDt_:Z

    .line 1039
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->dateIsUtc_:Z

    .line 1065
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->memoizedSerializedSize:I

    .line 1001
    return-void
.end method

.method static synthetic access$3902(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->policyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasXNokDt_:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->dateIsUtc_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1

    .prologue
    .line 1005
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1014
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public static newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 1

    .prologue
    .line 1155
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3700()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1158
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    .line 1125
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v1

    .line 1128
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1135
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    .line 1136
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v1

    .line 1139
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1091
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1097
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1145
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1119
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDateIsUtc()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->dateIsUtc_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1

    .prologue
    .line 1009
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getHasXNokDt()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasXNokDt_:Z

    return v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->policyName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1067
    iget v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->memoizedSerializedSize:I

    .line 1068
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1085
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1070
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1072
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1076
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getHasXNokDt()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1079
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1080
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDateIsUtc()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1083
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1084
    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->memoizedSerializedSize:I

    move v1, v0

    .line 1085
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDateIsUtc()Z
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc:Z

    return v0
.end method

.method public hasHasXNokDt()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt:Z

    return v0
.end method

.method public hasPolicyName()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1019
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$3500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1046
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1047
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 1

    .prologue
    .line 1156
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 1

    .prologue
    .line 1160
    invoke-static {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getSerializedSize()I

    .line 1053
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getHasXNokDt()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDateIsUtc()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1062
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1063
    return-void
.end method
