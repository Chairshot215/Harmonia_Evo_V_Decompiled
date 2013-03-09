.class public final Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RecognitionContextProto.java"

# interfaces
.implements Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/RecognitionContextProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;


# instance fields
.field private applicationName_:Ljava/lang/Object;

.field private bitField0_:I

.field private clientApplicationId_:Ljava/lang/Object;

.field private clientId_:Ljava/lang/Object;

.field private enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

.field private fieldId_:Ljava/lang/Object;

.field private fieldName_:Ljava/lang/Object;

.field private hardware_:Ljava/lang/Object;

.field private hasGrxmlGrammar_:Z

.field private hint_:Ljava/lang/Object;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private referer_:Ljava/lang/Object;

.field private selectedKeyboardLanguage_:Ljava/lang/Object;

.field private singleLine_:Z

.field private userAgent_:Ljava/lang/Object;

.field private voiceSearchLanguage_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->PARSER:Lcom/google/protobuf/Parser;

    .line 2233
    new-instance v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->defaultInstance:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 2234
    sget-object v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->defaultInstance:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-direct {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->initFields()V

    .line 2235
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

    const/16 v6, 0x2000

    .line 143
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 830
    iput-byte v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedIsInitialized:B

    .line 901
    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedSerializedSize:I

    .line 144
    invoke-direct {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->initFields()V

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 148
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 150
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 155
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :sswitch_0
    const/4 v0, 0x1

    .line 153
    goto :goto_0

    .line 162
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 163
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 261
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit16 v5, v2, 0x2000

    if-ne v5, v6, :cond_1

    .line 268
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->makeExtensionsImmutable()V

    throw v4

    .line 167
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 168
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 263
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 264
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

    .line 172
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;

    goto :goto_0

    .line 177
    :sswitch_4
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 178
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    goto :goto_0

    .line 182
    :sswitch_5
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 183
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 187
    :sswitch_6
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 188
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 192
    :sswitch_7
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 193
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->inputType_:I

    goto/16 :goto_0

    .line 197
    :sswitch_8
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 198
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    goto/16 :goto_0

    .line 202
    :sswitch_9
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 203
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 207
    :sswitch_a
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 208
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 212
    :sswitch_b
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 213
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 217
    :sswitch_c
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 218
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    goto/16 :goto_0

    .line 222
    :sswitch_d
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 223
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 227
    :sswitch_e
    and-int/lit16 v4, v2, 0x2000

    if-eq v4, v6, :cond_2

    .line 228
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 229
    or-int/lit16 v2, v2, 0x2000

    .line 231
    :cond_2
    iget-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 235
    :sswitch_f
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 236
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 240
    :sswitch_10
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 241
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 245
    :sswitch_11
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 246
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 250
    :sswitch_12
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 251
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 255
    :sswitch_13
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 256
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 267
    .end local v3           #tag:I
    :cond_3
    and-int/lit16 v4, v2, 0x2000

    if-ne v4, v6, :cond_4

    .line 268
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 270
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->makeExtensionsImmutable()V

    .line 272
    return-void

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/RecognitionContextProto$1;)V
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
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 126
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 830
    iput-byte v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedIsInitialized:B

    .line 901
    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedSerializedSize:I

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/RecognitionContextProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 830
    iput-byte v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedIsInitialized:B

    .line 901
    iput v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedSerializedSize:I

    .line 129
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->inputType_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->defaultInstance:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;

    .line 811
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;

    .line 812
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;

    .line 813
    iput-boolean v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 814
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;

    .line 815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;

    .line 816
    iput v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 817
    iput v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 818
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;

    .line 819
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;

    .line 820
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;

    .line 821
    iput-boolean v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 822
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 823
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    .line 824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;

    .line 826
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;

    .line 827
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;

    .line 828
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;

    .line 829
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1051
    #calls: Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->create()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->access$100()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1054
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;

    .line 312
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 313
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 315
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/Object;

    .line 318
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

.method public getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 798
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;

    .line 799
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 800
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 802
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/Object;

    .line 805
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

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 572
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;

    .line 573
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 574
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 576
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/Object;

    .line 579
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->defaultInstance:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public getEnabledKeyboardLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getFieldIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;

    .line 378
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 379
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 381
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/Object;

    .line 384
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

.method public getFieldNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;

    .line 345
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 346
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 348
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/Object;

    .line 351
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

.method public getHardwareBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 765
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;

    .line 766
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 767
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 769
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/Object;

    .line 772
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

.method public getHasGrxmlGrammar()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    return v0
.end method

.method public getHintBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;

    .line 454
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 455
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 457
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/Object;

    .line 460
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

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->inputType_:I

    return v0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;

    .line 421
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 422
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 424
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/Object;

    .line 427
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

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;

    .line 540
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 541
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 543
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/Object;

    .line 546
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

.method public getLanguageModelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;

    .line 507
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 508
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 510
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/Object;

    .line 513
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

.method public getRefererBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 699
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;

    .line 700
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 701
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 703
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/Object;

    .line 706
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

.method public getSelectedKeyboardLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 616
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 617
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 619
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/Object;

    .line 622
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
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 903
    iget v2, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedSerializedSize:I

    .line 904
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 989
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 906
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 907
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getApplicationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 911
    :cond_1
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 912
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getFieldNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 915
    :cond_2
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3

    .line 916
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getFieldIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 919
    :cond_3
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_4

    .line 920
    iget-boolean v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 923
    :cond_4
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v9, :cond_5

    .line 924
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 927
    :cond_5
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6

    .line 928
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 931
    :cond_6
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    .line 932
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->inputType_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 935
    :cond_7
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_8

    .line 936
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 939
    :cond_8
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_9

    .line 940
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 943
    :cond_9
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_a

    .line 944
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 947
    :cond_a
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_b

    .line 948
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 951
    :cond_b
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_c

    .line 952
    const/16 v4, 0xc

    iget-boolean v5, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 955
    :cond_c
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_d

    .line 956
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getSelectedKeyboardLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 960
    :cond_d
    const/4 v0, 0x0

    .line 961
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 962
    iget-object v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 965
    :cond_e
    add-int/2addr v2, v0

    .line 966
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 968
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_f

    .line 969
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 972
    :cond_f
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_10

    .line 973
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getRefererBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 976
    :cond_10
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_11

    .line 977
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 980
    :cond_11
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 981
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHardwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 984
    :cond_12
    iget v4, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_13

    .line 985
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 988
    :cond_13
    iput v2, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedSerializedSize:I

    move v3, v2

    .line 989
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getSingleLine()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    return v0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 732
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;

    .line 733
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 734
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 736
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/Object;

    .line 739
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

.method public getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 666
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 667
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 668
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 670
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 673
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

.method public hasApplicationName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 293
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientApplicationId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 780
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldId()Z
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public hasFieldName()Z
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public hasHardware()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 747
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasGrxmlGrammar()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHint()Z
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImeOptions()Z
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguageModel()Z
    .locals 2

    .prologue
    .line 488
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReferer()Z
    .locals 2

    .prologue
    .line 681
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectedKeyboardLanguage()Z
    .locals 2

    .prologue
    .line 597
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSingleLine()Z
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public hasUserAgent()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 714
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchLanguage()Z
    .locals 2

    .prologue
    .line 648
    iget v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

    .line 832
    iget-byte v0, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedIsInitialized:B

    .line 833
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 836
    :goto_0
    return v1

    .line 833
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 835
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilderForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1052
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->toBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    .locals 1

    .prologue
    .line 1056
    invoke-static {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilder(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

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
    .line 995
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 841
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getSerializedSize()I

    .line 842
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getApplicationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 845
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 846
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getFieldNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 848
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 849
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getFieldIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 851
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 852
    iget-boolean v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 854
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_4

    .line 855
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 857
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 858
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 860
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 861
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->inputType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 863
    :cond_6
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 864
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 866
    :cond_7
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 867
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 869
    :cond_8
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 870
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 872
    :cond_9
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 873
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 875
    :cond_a
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b

    .line 876
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 878
    :cond_b
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c

    .line 879
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getSelectedKeyboardLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 881
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 882
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 884
    :cond_d
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 885
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 887
    :cond_e
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 888
    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getRefererBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 890
    :cond_f
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 891
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 893
    :cond_10
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 894
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getHardwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 896
    :cond_11
    iget v1, p0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 897
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 899
    :cond_12
    return-void
.end method
