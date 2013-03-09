.class public final Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
.super Lcom/google/protobuf/GeneratedMessage;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VCardPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET_FIELD_NUMBER:I = 0x6

.field public static final ESC_CHAR_FIELD_NUMBER:I = 0x2

.field public static final ESC_ENCODE_FIELD_NUMBER:I = 0x3

.field public static final ESC_SINGLEFIELD_FIELD_NUMBER:I = 0x4

.field public static final POLICY_NAME_FIELD_NUMBER:I = 0x1

.field public static final QP_BEGIN_WITH_BLANK_FIELD_NUMBER:I = 0x7

.field public static final QUOTED_PRINT_CHARSET_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;


# instance fields
.field private defaultCharset_:Ljava/lang/String;

.field private escChar_:Ljava/lang/String;

.field private escEncode_:I

.field private escSinglefield_:Z

.field private hasDefaultCharset:Z

.field private hasEscChar:Z

.field private hasEscEncode:Z

.field private hasEscSinglefield:Z

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
    .line 534
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;-><init>(Z)V

    sput-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 535
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->internalForceInit()V

    .line 536
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->initFields()V

    .line 537
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->policyName_:Ljava/lang/String;

    .line 48
    const-string v0, ";\\"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escChar_:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escEncode_:I

    .line 62
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escSinglefield_:Z

    .line 69
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->quotedPrintCharset_:Ljava/lang/String;

    .line 76
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultCharset_:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->qpBeginWithBlank_:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->policyName_:Ljava/lang/String;

    .line 48
    const-string v0, ";\\"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escChar_:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escEncode_:I

    .line 62
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escSinglefield_:Z

    .line 69
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->quotedPrintCharset_:Ljava/lang/String;

    .line 76
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultCharset_:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->qpBeginWithBlank_:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escEncode_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escSinglefield_:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->quotedPrintCharset_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultCharset_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->qpBeginWithBlank_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName:Z

    return p1
.end method

.method static synthetic access$602(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->policyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar:Z

    return p1
.end method

.method static synthetic access$802(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escChar_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public static newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 1

    .prologue
    .line 227
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$300()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 230
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    .line 197
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    .line 208
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    .line 211
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    #calls: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultCharset_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultInstance:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getEscChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escChar_:Ljava/lang/String;

    return-object v0
.end method

.method public getEscEncode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escEncode_:I

    return v0
.end method

.method public getEscSinglefield()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escSinglefield_:Z

    return v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->policyName_:Ljava/lang/String;

    return-object v0
.end method

.method public getQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->qpBeginWithBlank_:Z

    return v0
.end method

.method public getQuotedPrintCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->quotedPrintCharset_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 123
    iget v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->memoizedSerializedSize:I

    .line 124
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 157
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 126
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscEncode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscSinglefield()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    :cond_6
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 152
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQpBeginWithBlank()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 155
    :cond_7
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 156
    iput v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->memoizedSerializedSize:I

    move v1, v0

    .line 157
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDefaultCharset()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset:Z

    return v0
.end method

.method public hasEscChar()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar:Z

    return v0
.end method

.method public hasEscEncode()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode:Z

    return v0
.end method

.method public hasEscSinglefield()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield:Z

    return v0
.end method

.method public hasPolicyName()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName:Z

    return v0
.end method

.method public hasQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank:Z

    return v0
.end method

.method public hasQuotedPrintCharset()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilderForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-static {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->toBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

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
    .line 96
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getSerializedSize()I

    .line 97
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscEncode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscSinglefield()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQpBeginWithBlank()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 118
    :cond_6
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 119
    return-void
.end method
