.class public final Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;


# instance fields
.field private bitField0_:I

.field private debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

.field private errorDetail_:Ljava/lang/Object;

.field private header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/protos/speech/service/SpeechService$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7320
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 7829
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .line 7830
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->initFields()V

    .line 7831
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 7251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 7405
    iput-byte v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    .line 7447
    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedSerializedSize:I

    .line 7252
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->initFields()V

    .line 7253
    const/4 v2, 0x0

    .line 7255
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 7256
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 7257
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 7258
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 7263
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7265
    const/4 v0, 0x1

    goto :goto_0

    .line 7260
    :sswitch_0
    const/4 v0, 0x1

    .line 7261
    goto :goto_0

    .line 7270
    :sswitch_1
    const/4 v4, 0x0

    .line 7271
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 7272
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v4

    .line 7274
    :cond_1
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7275
    if-eqz v4, :cond_2

    .line 7276
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 7277
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7279
    :cond_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7311
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .end local v5           #tag:I
    :catch_0
    move-exception v1

    .line 7312
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7317
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->makeExtensionsImmutable()V

    throw v7

    .line 7283
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 7284
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$Status;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v6

    .line 7285
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$Status;
    if-eqz v6, :cond_0

    .line 7286
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    .line 7287
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->status_:Lcom/google/protos/speech/service/SpeechService$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 7313
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$Status;
    :catch_1
    move-exception v1

    .line 7314
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7292
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    .line 7293
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;

    goto :goto_0

    .line 7297
    :sswitch_4
    const/4 v4, 0x0

    .line 7298
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 7299
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->toBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v4

    .line 7301
    :cond_3
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7302
    if-eqz v4, :cond_4

    .line 7303
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    .line 7304
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7306
    :cond_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 7317
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .end local v5           #tag:I
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->makeExtensionsImmutable()V

    .line 7319
    return-void

    .line 7258
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 7229
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;*>;"
    const/4 v0, -0x1

    .line 7234
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 7405
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    .line 7447
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedSerializedSize:I

    .line 7236
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7229
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7237
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 7405
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    .line 7447
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedSerializedSize:I

    .line 7237
    return-void
.end method

.method static synthetic access$8602(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7229
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$Status;)Lcom/google/protos/speech/service/SpeechService$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7229
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7229
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7229
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7229
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7229
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 1

    .prologue
    .line 7241
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7400
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7401
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;

    .line 7403
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7404
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7533
    #calls: Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->access$8400()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7536
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7509
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7499
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    return-object v0
.end method


# virtual methods
.method public getDebugEvent()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 7396
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7229
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 1

    .prologue
    .line 7245
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    return-object v0
.end method

.method public getErrorDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7378
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;

    .line 7379
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7380
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7382
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;

    .line 7385
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

.method public getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 7343
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7449
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedSerializedSize:I

    .line 7450
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7471
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7452
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7453
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 7454
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7457
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 7458
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$Status;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7461
    :cond_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 7462
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getErrorDetailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7465
    :cond_3
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 7466
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7469
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 7470
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 7471
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStatus()Lcom/google/protos/speech/service/SpeechService$Status;
    .locals 1

    .prologue
    .line 7353
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    return-object v0
.end method

.method public hasDebugEvent()Z
    .locals 2

    .prologue
    .line 7393
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorDetail()Z
    .locals 2

    .prologue
    .line 7360
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

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

.method public hasHeader()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7340
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 7350
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7407
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    .line 7408
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 7423
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 7408
    goto :goto_0

    .line 7410
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasHeader()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7411
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 7414
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 7415
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 7418
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 7419
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 7422
    :cond_4
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->memoizedIsInitialized:B

    move v2, v1

    .line 7423
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7229
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7534
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7229
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7538
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

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
    .line 7477
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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

    .line 7428
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getSerializedSize()I

    .line 7430
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 7432
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;>.ExtensionWriter;"
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 7433
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7435
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 7436
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$Status;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7438
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 7439
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getErrorDetailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7441
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 7442
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7444
    :cond_3
    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 7445
    return-void
.end method
