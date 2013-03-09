.class public final Lcom/google/protos/speech/common/Alternates$AlternateSpan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;


# instance fields
.field private alternates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private confidence_:F

.field private length_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1097
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    .line 1588
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    .line 1589
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->initFields()V

    .line 1590
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x4

    .line 1042
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1170
    iput-byte v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1210
    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1043
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->initFields()V

    .line 1044
    const/4 v2, 0x0

    .line 1046
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1047
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1048
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1049
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1054
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1056
    const/4 v0, 0x1

    goto :goto_0

    .line 1051
    :sswitch_0
    const/4 v0, 0x1

    .line 1052
    goto :goto_0

    .line 1061
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 1062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1085
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 1086
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x4

    if-ne v5, v6, :cond_1

    .line 1092
    iget-object v5, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1094
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->makeExtensionsImmutable()V

    throw v4

    .line 1066
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 1067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1087
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 1088
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1071
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v6, :cond_2

    .line 1072
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1073
    or-int/lit8 v2, v2, 0x4

    .line 1075
    :cond_2
    iget-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1079
    :sswitch_4
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 1080
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1091
    .end local v3           #tag:I
    :cond_3
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v6, :cond_4

    .line 1092
    iget-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1094
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->makeExtensionsImmutable()V

    .line 1096
    return-void

    .line 1049
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1025
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1170
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1210
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1027
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1028
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1170
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1210
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1028
    return-void
.end method

.method static synthetic access$1702(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    return p1
.end method

.method static synthetic access$1900(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protos/speech/common/Alternates$AlternateSpan;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/protos/speech/common/Alternates$AlternateSpan;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    return p1
.end method

.method static synthetic access$2102(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 1032
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1165
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    .line 1166
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    .line 1167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1168
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 1169
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1295
    #calls: Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->access$1500()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1298
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter "index"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method public getAlternatesCount()I
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 1036
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1212
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1213
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1233
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1215
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1216
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1217
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1220
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1221
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1224
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1225
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 1229
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 1232
    :cond_4
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    move v2, v1

    .line 1233
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLength()Z
    .locals 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1117
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1172
    iget-byte v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1173
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :goto_0
    move v3, v2

    .line 1190
    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 1173
    goto :goto_0

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasStart()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1176
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    goto :goto_1

    .line 1179
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasLength()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1180
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    goto :goto_1

    .line 1183
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternatesCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1184
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1185
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    goto :goto_1

    .line 1183
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1189
    :cond_5
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    move v3, v2

    .line 1190
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1296
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1300
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1195
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getSerializedSize()I

    .line 1196
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1197
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1199
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1200
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1202
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1203
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1205
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1206
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1208
    :cond_3
    return-void
.end method
