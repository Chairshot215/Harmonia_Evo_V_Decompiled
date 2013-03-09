.class public final Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;,
        Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0x7

.field public static final EXTENDEE_FIELD_NUMBER:I = 0x2

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field public static final TYPE_NAME_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;


# instance fields
.field private defaultValue_:Ljava/lang/String;

.field private extendee_:Ljava/lang/String;

.field private hasDefaultValue:Z

.field private hasExtendee:Z

.field private hasLabel:Z

.field private hasName:Z

.field private hasNumber:Z

.field private hasOptions:Z

.field private hasType:Z

.field private hasTypeName:Z

.field private label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private number_:I

.field private options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

.field private typeName_:Ljava/lang/String;

.field private type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/String;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    return-void
.end method

.method static synthetic access$5002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    return p1
.end method

.method static synthetic access$5402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType:Z

    return p1
.end method

.method static synthetic access$5702(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$4500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSerializedSize:I

    move v1, v0

    goto/16 :goto_0
.end method

.method public getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue:Z

    return v0
.end method

.method public hasExtendee()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber:Z

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType:Z

    return v0
.end method

.method public hasTypeName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$4600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_7
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
