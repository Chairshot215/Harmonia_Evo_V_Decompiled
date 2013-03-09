.class public final Lcom/google/protos/MobileappsExtensions$TextModification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$TextModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextModification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$TextModification$Builder;,
        Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$TextModification;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;


# instance fields
.field private bitField0_:I

.field private inputLength_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8557
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    .line 8890
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8891
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$TextModification;->initFields()V

    .line 8892
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 8514
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8647
    iput-byte v6, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8667
    iput v6, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8515
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->initFields()V

    .line 8516
    const/4 v2, 0x0

    .line 8518
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8519
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8520
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 8521
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 8526
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/MobileappsExtensions$TextModification;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8528
    const/4 v0, 0x1

    goto :goto_0

    .line 8523
    :sswitch_0
    const/4 v0, 0x1

    .line 8524
    goto :goto_0

    .line 8533
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8534
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    move-result-object v5

    .line 8535
    .local v5, value:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    if-eqz v5, :cond_0

    .line 8536
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    .line 8537
    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8548
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    :catch_0
    move-exception v1

    .line 8549
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8554
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->makeExtensionsImmutable()V

    throw v6

    .line 8542
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    .line 8543
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8550
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 8551
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8554
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->makeExtensionsImmutable()V

    .line 8556
    return-void

    .line 8521
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 8492
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8497
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8647
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8667
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8499
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8492
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8500
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8647
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8667
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8500
    return-void
.end method

.method static synthetic access$9702(Lcom/google/protos/MobileappsExtensions$TextModification;Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8492
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/protos/MobileappsExtensions$TextModification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8492
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/protos/MobileappsExtensions$TextModification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8492
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 8504
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8644
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8645
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    .line 8646
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8744
    #calls: Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->create()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->access$9500()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8747
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8492
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 8508
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object v0
.end method

.method public getInputLength()I
    .locals 1

    .prologue
    .line 8640
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    return v0
.end method

.method public getModification()Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 1

    .prologue
    .line 8630
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8669
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8670
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8682
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8672
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8673
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8674
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8677
    :cond_1
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 8678
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8681
    :cond_2
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    move v1, v0

    .line 8682
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasInputLength()Z
    .locals 2

    .prologue
    .line 8637
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

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

.method public hasModification()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8627
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 8649
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8650
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 8653
    :goto_0
    return v1

    .line 8650
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 8652
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8492
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8745
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8492
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->toBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8749
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

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
    .line 8688
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8658
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->getSerializedSize()I

    .line 8659
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8660
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8662
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8663
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8665
    :cond_1
    return-void
.end method
