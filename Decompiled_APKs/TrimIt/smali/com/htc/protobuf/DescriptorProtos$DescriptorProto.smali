.class public final Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;,
        Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    }
.end annotation


# static fields
.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x4

.field public static final EXTENSION_FIELD_NUMBER:I = 0x6

.field public static final EXTENSION_RANGE_FIELD_NUMBER:I = 0x5

.field public static final FIELD_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NESTED_TYPE_FIELD_NUMBER:I = 0x3

.field public static final OPTIONS_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;


# instance fields
.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extensionRange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private field_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private hasName:Z

.field private hasOptions:Z

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private nestedType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1144
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 2215
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2219
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 2220
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 1472
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;

    .line 1478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 1490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 1502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 1514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 1526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 1539
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 1588
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->memoizedSerializedSize:I

    .line 1142
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1146
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1155
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$2200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .prologue
    .line 1685
    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3400()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1688
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1663
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1669
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1630
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1636
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1675
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1681
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1652
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1658
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1641
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1647
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1150
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionRange(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "index"

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public getExtensionRangeCount()I
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object v0
.end method

.method public getField(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNestedType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public getNestedTypeCount()I
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNestedTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1590
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->memoizedSerializedSize:I

    .line 1591
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 1624
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 1593
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 1594
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1595
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1598
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getFieldList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1599
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1602
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 1603
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 1606
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1607
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    .line 1610
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 1611
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1614
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1615
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v4, 0x6

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_5

    .line 1618
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1619
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1622
    :cond_7
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 1623
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->memoizedSerializedSize:I

    move v3, v2

    .line 1624
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 1540
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1160
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$2300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1544
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1545
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1559
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_1
    :goto_0
    return v2

    .line 1547
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1548
    .restart local v0       #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1550
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 1551
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1553
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1554
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 1556
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1557
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1559
    :cond_9
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .prologue
    .line 1690
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1565
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1567
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getFieldList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1568
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 1570
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 1571
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_1

    .line 1573
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1574
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_2

    .line 1576
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 1577
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_3

    .line 1579
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1580
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_4

    .line 1582
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1583
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 1585
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 1586
    return-void
.end method
