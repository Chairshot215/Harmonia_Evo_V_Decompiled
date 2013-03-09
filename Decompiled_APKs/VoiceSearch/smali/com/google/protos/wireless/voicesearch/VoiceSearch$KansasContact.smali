.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KansasContact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5599
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->PARSER:Lcom/google/protobuf/Parser;

    .line 5990
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    .line 5991
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->initFields()V

    .line 5992
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x2

    .line 5533
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5665
    iput-byte v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedIsInitialized:B

    .line 5689
    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedSerializedSize:I

    .line 5534
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->initFields()V

    .line 5535
    const/4 v3, 0x0

    .line 5537
    .local v3, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 5538
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 5539
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 5540
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 5545
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5547
    const/4 v0, 0x1

    goto :goto_0

    .line 5542
    :sswitch_0
    const/4 v0, 0x1

    .line 5543
    goto :goto_0

    .line 5552
    :sswitch_1
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->bitField0_:I

    .line 5553
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5587
    .end local v6           #tag:I
    :catch_0
    move-exception v1

    .line 5588
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5593
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x2

    if-ne v9, v10, :cond_1

    .line 5594
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    .line 5596
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->makeExtensionsImmutable()V

    throw v8

    .line 5557
    .restart local v6       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 5558
    .local v5, rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v7

    .line 5559
    .local v7, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    if-eqz v7, :cond_0

    .line 5560
    and-int/lit8 v8, v3, 0x2

    if-eq v8, v10, :cond_2

    .line 5561
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    .line 5562
    or-int/lit8 v3, v3, 0x2

    .line 5564
    :cond_2
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5589
    .end local v5           #rawValue:I
    .end local v6           #tag:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    :catch_1
    move-exception v1

    .line 5590
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5569
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 5570
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 5571
    .local v4, oldLimit:I
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_5

    .line 5572
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 5573
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v7

    .line 5574
    .restart local v7       #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    if-eqz v7, :cond_3

    .line 5575
    and-int/lit8 v8, v3, 0x2

    if-eq v8, v10, :cond_4

    .line 5576
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    .line 5577
    or-int/lit8 v3, v3, 0x2

    .line 5579
    :cond_4
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5582
    .end local v5           #rawValue:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    :cond_5
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 5593
    .end local v2           #length:I
    .end local v4           #oldLimit:I
    .end local v6           #tag:I
    :cond_6
    and-int/lit8 v8, v3, 0x2

    if-ne v8, v10, :cond_7

    .line 5594
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    .line 5596
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->makeExtensionsImmutable()V

    .line 5598
    return-void

    .line 5540
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 5511
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5516
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5665
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedIsInitialized:B

    .line 5689
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedSerializedSize:I

    .line 5518
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5511
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5665
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedIsInitialized:B

    .line 5689
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedSerializedSize:I

    .line 5519
    return-void
.end method

.method static synthetic access$6700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5511
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5511
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5511
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5511
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5511
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 1

    .prologue
    .line 5523
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5662
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;

    .line 5663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    .line 5664
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 1

    .prologue
    .line 5771
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->access$6500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5774
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5511
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 1

    .prologue
    .line 5527
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5637
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;

    .line 5638
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5639
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5641
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;

    .line 5644
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5691
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedSerializedSize:I

    .line 5692
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 5709
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 5694
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 5695
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 5696
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 5700
    :cond_1
    const/4 v0, 0x0

    .line 5701
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 5702
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 5701
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5705
    :cond_2
    add-int/2addr v2, v0

    .line 5706
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 5708
    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedSerializedSize:I

    move v3, v2

    .line 5709
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5619
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5667
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedIsInitialized:B

    .line 5668
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 5675
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 5668
    goto :goto_0

    .line 5670
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->hasName()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5671
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedIsInitialized:B

    move v1, v2

    .line 5672
    goto :goto_0

    .line 5674
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5511
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 1

    .prologue
    .line 5772
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5511
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

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
    .line 5715
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
    const/4 v2, 0x1

    .line 5680
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->getSerializedSize()I

    .line 5681
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 5682
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5684
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5685
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5687
    :cond_1
    return-void
.end method
