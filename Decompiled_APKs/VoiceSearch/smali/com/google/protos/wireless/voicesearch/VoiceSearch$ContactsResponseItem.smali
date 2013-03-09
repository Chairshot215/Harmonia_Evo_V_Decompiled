.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactsResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10778
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 11126
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 11127
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->initFields()V

    .line 11128
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

    .line 10735
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10841
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedIsInitialized:B

    .line 10865
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedSerializedSize:I

    .line 10736
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->initFields()V

    .line 10737
    const/4 v2, 0x0

    .line 10739
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 10740
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 10741
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 10742
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 10747
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 10749
    const/4 v0, 0x1

    goto :goto_0

    .line 10744
    :sswitch_0
    const/4 v0, 0x1

    .line 10745
    goto :goto_0

    .line 10754
    :sswitch_1
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    .line 10755
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 10769
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 10770
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10775
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->makeExtensionsImmutable()V

    throw v6

    .line 10759
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 10760
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v5

    .line 10761
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    if-eqz v5, :cond_0

    .line 10762
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    .line 10763
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 10771
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    :catch_1
    move-exception v1

    .line 10772
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

    .line 10775
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->makeExtensionsImmutable()V

    .line 10777
    return-void

    .line 10742
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xb0 -> :sswitch_2
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
    .line 10713
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10718
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10841
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedIsInitialized:B

    .line 10865
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedSerializedSize:I

    .line 10720
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10713
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10841
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedIsInitialized:B

    .line 10865
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedSerializedSize:I

    .line 10721
    return-void
.end method

.method static synthetic access$13100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10713
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10713
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10713
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10713
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1

    .prologue
    .line 10725
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;

    .line 10839
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 10840
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1

    .prologue
    .line 10942
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->access$12900()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10945
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10713
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1

    .prologue
    .line 10729
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10801
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;

    .line 10802
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10803
    check-cast v1, Ljava/lang/String;

    .line 10811
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10805
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10807
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10808
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10809
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10811
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10816
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;

    .line 10817
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10818
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10820
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;

    .line 10823
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

.method public getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .locals 1

    .prologue
    .line 10834
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 10867
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedSerializedSize:I

    .line 10868
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10880
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 10870
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 10871
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 10872
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10875
    :cond_1
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 10876
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10879
    :cond_2
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedSerializedSize:I

    move v1, v0

    .line 10880
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10798
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumberType()Z
    .locals 2

    .prologue
    .line 10831
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

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

    .line 10843
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedIsInitialized:B

    .line 10844
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 10851
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 10844
    goto :goto_0

    .line 10846
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->hasName()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10847
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedIsInitialized:B

    move v1, v2

    .line 10848
    goto :goto_0

    .line 10850
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10713
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1

    .prologue
    .line 10943
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10713
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1

    .prologue
    .line 10947
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

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
    .line 10886
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
    const/4 v1, 0x1

    .line 10856
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getSerializedSize()I

    .line 10857
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10858
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10860
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10861
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10863
    :cond_1
    return-void
.end method
