.class public Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;
.super Ljava/lang/Object;
.source "ProtoBufStreamParserImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$1;,
        Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;
    }
.end annotation


# instance fields
.field private mBytes:Ljava/io/ByteArrayOutputStream;

.field private final mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;

.field private final mHandler:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;

.field private mLength:I

.field private mLengthBytesRead:B

.field private mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

.field private mTag:B


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;)V
    .locals 2
    .parameter "config"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_TAG:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 37
    iput-byte v1, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mTag:B

    .line 38
    iput-byte v1, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLengthBytesRead:B

    .line 39
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    .line 55
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;

    .line 56
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mHandler:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;

    .line 57
    return-void
.end method

.method private static final dumpBytes([BII)Ljava/lang/String;
    .locals 3
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, sb:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v2, p2, p1

    if-ge v0, v2, :cond_0

    .line 191
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseData([BII)V
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v5, "ProtoBuf"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 200
    .local v2, log:Z
    if-eqz v2, :cond_0

    const-string v5, "ProtoBuf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Have length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;

    iget-byte v6, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mTag:B

    invoke-interface {v5, v6}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;->isKnownTag(B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    if-eqz v2, :cond_1

    const-string v5, "ProtoBuf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mTag:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    if-eqz v2, :cond_3

    .line 210
    const-string v5, "ProtoBuf"

    const-string v6, "Attempting to parse."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v5, "ProtoBuf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->dumpBytes([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;

    iget-byte v6, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mTag:B

    invoke-interface {v5, v6}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;->getProtoBuf(B)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    .line 215
    .local v4, type:Lcom/google/common/io/protocol/ProtoBufType;
    :try_start_0
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 216
    .local v3, proto:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 217
    .local v0, in:Ljava/io/InputStream;
    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 218
    if-eqz v2, :cond_4

    const-string v5, "ProtoBuf"

    const-string v6, "Parsed data."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_4
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mHandler:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;

    if-eqz v5, :cond_1

    .line 221
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mHandler:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;

    int-to-long v6, p3

    invoke-interface {v5, v3, v6, v7}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;->handleProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0           #in:Ljava/io/InputStream;
    .end local v3           #proto:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_0
    move-exception v1

    .line 224
    .local v1, ioe:Ljava/io/IOException;
    const-string v5, "ProtoBuf"

    const-string v6, "Unable to parse protobuf."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 227
    throw v1
.end method


# virtual methods
.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 12
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 61
    const-string v8, "ProtoBuf"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 63
    .local v4, log:Z
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    sget-object v9, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    if-ne v8, v9, :cond_1

    .line 64
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot parse -- previously encountered error.  Must call reset() and parse new stream."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 78
    .local v0, available:I
    :cond_0
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$1;->$SwitchMap$com$google$android$gsf$gtalkservice$proto$ProtoBufStreamParserImpl$State:[I

    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 69
    .end local v0           #available:I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 74
    .restart local v0       #available:I
    if-gtz v0, :cond_0

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    sget-object v9, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_DATA:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    if-ne v8, v9, :cond_2

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    if-eqz v8, :cond_0

    .line 172
    :cond_2
    :goto_1
    return-void

    .line 80
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot parse -- previously encountered error.  Must call reset() and parse new stream."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 83
    :pswitch_1
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_TAG:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    iput-byte v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mTag:B

    .line 87
    if-eqz v4, :cond_3

    const-string v8, "ProtoBuf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mTag:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_3
    iput v11, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    .line 89
    iput-byte v11, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLengthBytesRead:B

    .line 90
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_LENGTH:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    goto :goto_0

    .line 98
    :pswitch_3
    iget-byte v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLengthBytesRead:B

    const/4 v9, 0x5

    if-le v8, v9, :cond_4

    .line 99
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 100
    new-instance v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;

    const-string v9, "Attempting to read more than 5 bytes of length.  Should not happen."

    invoke-direct {v8, v9}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 105
    :cond_4
    iget-byte v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLengthBytesRead:B

    mul-int/lit8 v7, v8, 0x7

    .line 106
    .local v7, shift:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 107
    .local v3, lenByte:B
    iget-byte v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLengthBytesRead:B

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLengthBytesRead:B

    .line 110
    iget v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    and-int/lit8 v9, v3, 0x7f

    shl-int/2addr v9, v7

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    .line 112
    and-int/lit16 v8, v3, 0x80

    if-nez v8, :cond_1

    .line 114
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_DATA:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    goto :goto_0

    .line 119
    .end local v3           #lenByte:B
    .end local v7           #shift:I
    :pswitch_4
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 120
    .local v5, numBytesThusFar:I
    if-lez v5, :cond_7

    .line 123
    iget v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    sub-int v6, v8, v5

    .line 124
    .local v6, remainingData:I
    if-lt v0, v6, :cond_6

    .line 126
    new-array v1, v6, [B

    .line 127
    .local v1, buf:[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 129
    :try_start_0
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-direct {p0, v8, v11, v9}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->parseData([BII)V

    .line 176
    .end local v1           #buf:[B
    .end local v6           #remainingData:I
    :goto_2
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 177
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    .line 179
    :cond_5
    iput-byte v11, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mTag:B

    .line 180
    iput v11, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    .line 181
    iput-byte v11, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLengthBytesRead:B

    .line 182
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_TAG:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    goto/16 :goto_0

    .line 130
    .restart local v1       #buf:[B
    .restart local v6       #remainingData:I
    :catch_0
    move-exception v2

    .line 132
    .local v2, ioe:Ljava/io/IOException;
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 133
    throw v2

    .line 138
    .end local v1           #buf:[B
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_6
    new-array v1, v0, [B

    .line 139
    .restart local v1       #buf:[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 141
    :try_start_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 142
    :catch_1
    move-exception v2

    .line 144
    .restart local v2       #ioe:Ljava/io/IOException;
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 145
    throw v2

    .line 150
    .end local v1           #buf:[B
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v6           #remainingData:I
    :cond_7
    iget v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    if-lt v0, v8, :cond_a

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 153
    if-eqz v4, :cond_8

    const-string v8, "ProtoBuf"

    const-string v9, "Parsing data in one shot."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    iget v10, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->parseData([BII)V

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    iget v9, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    add-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 157
    :cond_9
    iget v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mLength:I

    new-array v1, v8, [B

    .line 158
    .restart local v1       #buf:[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 159
    array-length v8, v1

    invoke-direct {p0, v1, v11, v8}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->parseData([BII)V

    goto :goto_2

    .line 163
    .end local v1           #buf:[B
    :cond_a
    new-array v1, v0, [B

    .line 164
    .restart local v1       #buf:[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    :try_start_2
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 167
    :catch_2
    move-exception v2

    .line 169
    .restart local v2       #ioe:Ljava/io/IOException;
    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    iput-object v8, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;->mState:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 170
    throw v2

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
