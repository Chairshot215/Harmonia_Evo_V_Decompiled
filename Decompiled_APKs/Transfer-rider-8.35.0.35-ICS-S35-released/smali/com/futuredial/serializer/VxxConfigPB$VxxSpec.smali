.class public final Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
.super Lcom/google/protobuf/GeneratedMessage;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VxxSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    }
.end annotation


# static fields
.field public static final VCALENDAR_POLICY_FIELD_NUMBER:I = 0x3

.field public static final VCARD_POLICY_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field public static final VMESSAGE_POLICY_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;


# instance fields
.field private hasVersion:Z

.field private memoizedSerializedSize:I

.field private vcalendarPolicy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private vcardPolicy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/lang/String;

.field private vmessagePolicy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1908
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;-><init>(Z)V

    sput-object v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    .line 1909
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->internalForceInit()V

    .line 1910
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->initFields()V

    .line 1911
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->version_:Ljava/lang/String;

    .line 1397
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;

    .line 1409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;

    .line 1421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;

    .line 1465
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->memoizedSerializedSize:I

    .line 1365
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->initFields()V

    .line 1366
    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1361
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->version_:Ljava/lang/String;

    .line 1397
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;

    .line 1409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;

    .line 1421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;

    .line 1465
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->memoizedSerializedSize:I

    .line 1367
    return-void
.end method

.method static synthetic access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1361
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion:Z

    return p1
.end method

.method static synthetic access$5402(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->version_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1

    .prologue
    .line 1371
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1380
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1432
    return-void
.end method

.method public static newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1

    .prologue
    .line 1559
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4800()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1562
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1528
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    .line 1529
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1530
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v1

    .line 1532
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1539
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    .line 1540
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v1

    .line 1543
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1495
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1549
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1555
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1506
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1

    .prologue
    .line 1375
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1467
    iget v2, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->memoizedSerializedSize:I

    .line 1468
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 1489
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 1470
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 1471
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1472
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1475
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcardPolicyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 1476
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1479
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcalendarPolicyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 1480
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 1483
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVmessagePolicyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1484
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    .line 1487
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 1488
    iput v2, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->memoizedSerializedSize:I

    move v3, v2

    .line 1489
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getVcalendarPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "index"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    return-object v0
.end method

.method public getVcalendarPolicyCount()I
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVcalendarPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;

    return-object v0
.end method

.method public getVcardPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "index"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    return-object v0
.end method

.method public getVcardPolicyCount()I
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVcardPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVmessagePolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "index"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    return-object v0
.end method

.method public getVmessagePolicyCount()I
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVmessagePolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;

    return-object v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1392
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1385
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1434
    iget-boolean v3, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion:Z

    if-nez v3, :cond_0

    .line 1444
    :goto_0
    return v2

    .line 1435
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcardPolicyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 1436
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1438
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcalendarPolicyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 1439
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1441
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVmessagePolicyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1442
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1444
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1

    .prologue
    .line 1560
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1

    .prologue
    .line 1564
    invoke-static {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getSerializedSize()I

    .line 1450
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1451
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcardPolicyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 1454
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 1456
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcalendarPolicyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 1457
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_1

    .line 1459
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVmessagePolicyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1460
    .local v0, element:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_2

    .line 1462
    .end local v0           #element:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1463
    return-void
.end method
