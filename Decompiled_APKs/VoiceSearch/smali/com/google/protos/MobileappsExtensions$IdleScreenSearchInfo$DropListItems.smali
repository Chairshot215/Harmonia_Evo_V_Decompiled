.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DropListItems"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;


# instance fields
.field private bitField0_:I

.field private droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4563
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    .line 4798
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    .line 4799
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->initFields()V

    .line 4800
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

    .line 4525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4592
    iput-byte v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4609
    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4526
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->initFields()V

    .line 4527
    const/4 v2, 0x0

    .line 4529
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 4530
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4531
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 4532
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 4537
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4539
    const/4 v0, 0x1

    goto :goto_0

    .line 4534
    :sswitch_0
    const/4 v0, 0x1

    .line 4535
    goto :goto_0

    .line 4544
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4545
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v5

    .line 4546
    .local v5, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    if-eqz v5, :cond_0

    .line 4547
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    .line 4548
    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4554
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    :catch_0
    move-exception v1

    .line 4555
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4560
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->makeExtensionsImmutable()V

    throw v6

    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->makeExtensionsImmutable()V

    .line 4562
    return-void

    .line 4556
    :catch_1
    move-exception v1

    .line 4557
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4532
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x68 -> :sswitch_1
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
    .line 4503
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4508
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4592
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4609
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4510
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4503
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4511
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4592
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4609
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4511
    return-void
.end method

.method static synthetic access$3702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4503
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4503
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1

    .prologue
    .line 4515
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4590
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4591
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4682
    #calls: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->access$3500()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4685
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4503
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1

    .prologue
    .line 4519
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object v0
.end method

.method public getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4611
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4612
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4620
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4614
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4615
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4616
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4619
    :cond_1
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    move v1, v0

    .line 4620
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDroplistType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4583
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

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

    .line 4594
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4595
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 4598
    :goto_0
    return v1

    .line 4595
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4597
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4503
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4683
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4503
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4687
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

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
    .line 4626
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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
    .line 4603
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getSerializedSize()I

    .line 4604
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4605
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4607
    :cond_0
    return-void
.end method
