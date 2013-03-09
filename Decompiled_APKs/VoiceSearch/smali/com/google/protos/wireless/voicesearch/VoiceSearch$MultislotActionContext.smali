.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultislotActionContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;


# instance fields
.field private actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private selectedSlot_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11617
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->PARSER:Lcom/google/protobuf/Parser;

    .line 11965
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 11966
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->initFields()V

    .line 11967
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

    .line 11574
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11680
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedIsInitialized:B

    .line 11704
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedSerializedSize:I

    .line 11575
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->initFields()V

    .line 11576
    const/4 v2, 0x0

    .line 11578
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 11579
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 11580
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 11581
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 11586
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 11588
    const/4 v0, 0x1

    goto :goto_0

    .line 11583
    :sswitch_0
    const/4 v0, 0x1

    .line 11584
    goto :goto_0

    .line 11593
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11594
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v5

    .line 11595
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v5, :cond_0

    .line 11596
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    .line 11597
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 11608
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :catch_0
    move-exception v1

    .line 11609
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11614
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->makeExtensionsImmutable()V

    throw v6

    .line 11602
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    .line 11603
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 11610
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 11611
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

    .line 11614
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->makeExtensionsImmutable()V

    .line 11616
    return-void

    .line 11581
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 11552
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11557
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11680
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedIsInitialized:B

    .line 11704
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedSerializedSize:I

    .line 11559
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11552
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11560
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11680
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedIsInitialized:B

    .line 11704
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedSerializedSize:I

    .line 11560
    return-void
.end method

.method static synthetic access$14102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11552
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object p1
.end method

.method static synthetic access$14200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11552
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11552
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11552
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 1

    .prologue
    .line 11564
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11677
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 11678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;

    .line 11679
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1

    .prologue
    .line 11781
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->access$13900()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 11784
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1

    .prologue
    .line 11640
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 1

    .prologue
    .line 11568
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    return-object v0
.end method

.method public getSelectedSlotBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 11665
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;

    .line 11666
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11667
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11669
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;

    .line 11672
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
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11706
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedSerializedSize:I

    .line 11707
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 11719
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 11709
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 11710
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 11711
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11714
    :cond_1
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 11715
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getSelectedSlotBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11718
    :cond_2
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedSerializedSize:I

    move v1, v0

    .line 11719
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11637
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectedSlot()Z
    .locals 2

    .prologue
    .line 11647
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11682
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedIsInitialized:B

    .line 11683
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 11690
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 11683
    goto :goto_0

    .line 11685
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->hasActionType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11686
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedIsInitialized:B

    move v1, v2

    .line 11687
    goto :goto_0

    .line 11689
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1

    .prologue
    .line 11782
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1

    .prologue
    .line 11786
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

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
    .line 11725
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

    .line 11695
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getSerializedSize()I

    .line 11696
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 11697
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11699
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 11700
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getSelectedSlotBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11702
    :cond_1
    return-void
.end method
