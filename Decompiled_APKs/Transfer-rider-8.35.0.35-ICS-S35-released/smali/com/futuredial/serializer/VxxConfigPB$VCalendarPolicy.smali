.class public final Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
.super Lcom/google/protobuf/GeneratedMessage;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VCalendarPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET_FIELD_NUMBER:I = 0x4

.field public static final ESC_CHAR_FIELD_NUMBER:I = 0x2

.field public static final POLICY_NAME_FIELD_NUMBER:I = 0x1

.field public static final QP_BEGIN_WITH_BLANK_FIELD_NUMBER:I = 0x5

.field public static final QUOTED_PRINT_CHARSET_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;


# instance fields
.field private defaultCharset_:Ljava/lang/String;

.field private escChar_:Ljava/lang/String;

.field private hasDefaultCharset:Z

.field private hasEscChar:Z

.field private hasPolicyName:Z

.field private hasQpBeginWithBlank:Z

.field private hasQuotedPrintCharset:Z

.field private memoizedSerializedSize:I

.field private policyName_:Ljava/lang/String;

.field private qpBeginWithBlank_:Z

.field private quotedPrintCharset_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 987
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;-><init>(Z)V

    sput-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 988
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->internalForceInit()V

    .line 989
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->initFields()V

    .line 990
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 572
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->policyName_:Ljava/lang/String;

    .line 579
    const-string v0, ";\\"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->escChar_:Ljava/lang/String;

    .line 586
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->quotedPrintCharset_:Ljava/lang/String;

    .line 593
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultCharset_:Ljava/lang/String;

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->qpBeginWithBlank_:Z

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->memoizedSerializedSize:I

    .line 546
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->initFields()V

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 572
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->policyName_:Ljava/lang/String;

    .line 579
    const-string v0, ";\\"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->escChar_:Ljava/lang/String;

    .line 586
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->quotedPrintCharset_:Ljava/lang/String;

    .line 593
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultCharset_:Ljava/lang/String;

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->qpBeginWithBlank_:Z

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->memoizedSerializedSize:I

    .line 548
    return-void
.end method

.method static synthetic access$2402(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->policyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->escChar_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->quotedPrintCharset_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultCharset_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->qpBeginWithBlank_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 605
    return-void
.end method

.method public static newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 1

    .prologue
    .line 730
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2200()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 733
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    .line 700
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    .line 703
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    .line 711
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    .line 714
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultCharset_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getEscChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->escChar_:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->policyName_:Ljava/lang/String;

    return-object v0
.end method

.method public getQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->qpBeginWithBlank_:Z

    return v0
.end method

.method public getQuotedPrintCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->quotedPrintCharset_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 634
    iget v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->memoizedSerializedSize:I

    .line 635
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 660
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 637
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 646
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 650
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 651
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 654
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 655
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQpBeginWithBlank()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 658
    :cond_5
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 659
    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->memoizedSerializedSize:I

    move v1, v0

    .line 660
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDefaultCharset()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset:Z

    return v0
.end method

.method public hasEscChar()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar:Z

    return v0
.end method

.method public hasPolicyName()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName:Z

    return v0
.end method

.method public hasQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank:Z

    return v0
.end method

.method public hasQuotedPrintCharset()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 1

    .prologue
    .line 731
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 1

    .prologue
    .line 735
    invoke-static {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

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
    .line 613
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getSerializedSize()I

    .line 614
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 626
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQpBeginWithBlank()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 629
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 630
    return-void
.end method
