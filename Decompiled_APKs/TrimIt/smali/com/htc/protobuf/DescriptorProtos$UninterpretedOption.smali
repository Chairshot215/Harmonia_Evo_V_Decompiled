.class public final Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;,
        Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    }
.end annotation


# static fields
.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x6

.field public static final IDENTIFIER_VALUE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NEGATIVE_INT_VALUE_FIELD_NUMBER:I = 0x5

.field public static final POSITIVE_INT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;


# instance fields
.field private doubleValue_:D

.field private hasDoubleValue:Z

.field private hasIdentifierValue:Z

.field private hasNegativeIntValue:Z

.field private hasPositiveIntValue:Z

.field private hasStringValue:Z

.field private identifierValue_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private negativeIntValue_:J

.field private positiveIntValue_:J

.field private stringValue_:Lcom/htc/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7458
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8274
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 8278
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 8279
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 7456
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 7790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 7803
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/String;

    .line 7810
    iput-wide v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    .line 7817
    iput-wide v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    .line 7824
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    .line 7831
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/htc/protobuf/ByteString;

    .line 7865
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->memoizedSerializedSize:I

    .line 7456
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7453
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    return-void
.end method

.method static synthetic access$18600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7453
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18702(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue:Z

    return p1
.end method

.method static synthetic access$18802(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$18902(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue:Z

    return p1
.end method

.method static synthetic access$19002(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-wide p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    return-wide p1
.end method

.method static synthetic access$19102(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue:Z

    return p1
.end method

.method static synthetic access$19202(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-wide p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    return-wide p1
.end method

.method static synthetic access$19302(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue:Z

    return p1
.end method

.method static synthetic access$19402(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-wide p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    return-wide p1
.end method

.method static synthetic access$19502(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue:Z

    return p1
.end method

.method static synthetic access$19602(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7453
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 7460
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7469
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$17200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .prologue
    .line 7958
    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18400()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7961
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7936
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7942
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7903
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7909
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7948
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7954
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7925
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7931
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7914
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7920
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->access$18300(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 7464
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7453
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7453
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 7826
    iget-wide v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7805
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getName(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "index"

    .prologue
    .line 7797
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method public getNameCount()I
    .locals 1

    .prologue
    .line 7795
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7793
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    return-object v0
.end method

.method public getNegativeIntValue()J
    .locals 2

    .prologue
    .line 7819
    iget-wide v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    return-wide v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    .prologue
    .line 7812
    iget-wide v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 7867
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->memoizedSerializedSize:I

    .line 7868
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 7897
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 7870
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 7871
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 7872
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 7875
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7876
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7879
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7880
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7883
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7884
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7887
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7888
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 7891
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7892
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/htc/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7895
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 7896
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->memoizedSerializedSize:I

    move v3, v2

    .line 7897
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getStringValue()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 7833
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public hasDoubleValue()Z
    .locals 1

    .prologue
    .line 7825
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue:Z

    return v0
.end method

.method public hasIdentifierValue()Z
    .locals 1

    .prologue
    .line 7804
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue:Z

    return v0
.end method

.method public hasNegativeIntValue()Z
    .locals 1

    .prologue
    .line 7818
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue:Z

    return v0
.end method

.method public hasPositiveIntValue()Z
    .locals 1

    .prologue
    .line 7811
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue:Z

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 7832
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7474
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$17300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 7836
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 7837
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 7839
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .prologue
    .line 7959
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7453
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7453
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .prologue
    .line 7963
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7453
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7453
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7844
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 7845
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 7847
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7848
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7850
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7851
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 7853
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7854
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7856
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7857
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 7859
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7860
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 7862
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 7863
    return-void
.end method
