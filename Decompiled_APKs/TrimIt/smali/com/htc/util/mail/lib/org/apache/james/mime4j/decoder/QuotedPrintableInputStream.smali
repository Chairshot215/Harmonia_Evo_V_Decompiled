.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

.field pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    .line 40
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 44
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    .line 45
    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .locals 3
    .parameter "c"

    .prologue
    .line 211
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 212
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    .line 216
    :goto_0
    return v0

    .line 213
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 214
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 215
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 216
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/16 v9, 0xd

    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, msdChar:B
    :goto_0
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 120
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 203
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 126
    .local v0, b:B
    iget-byte v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    packed-switch v4, :pswitch_data_0

    .line 197
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 198
    iput-byte v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 199
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 128
    :pswitch_0
    if-eq v0, v8, :cond_2

    .line 129
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 132
    :cond_2
    const/4 v4, 0x1

    iput-byte v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 136
    :pswitch_1
    if-ne v0, v9, :cond_3

    .line 137
    const/4 v4, 0x2

    iput-byte v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 139
    :cond_3
    if-lt v0, v10, :cond_4

    if-le v0, v11, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x46

    if-le v0, v4, :cond_6

    :cond_5
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7

    const/16 v4, 0x66

    if-gt v0, v4, :cond_7

    .line 140
    :cond_6
    const/4 v4, 0x3

    iput-byte v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 141
    move v3, v0

    .line 142
    goto :goto_0

    .line 143
    :cond_7
    if-ne v0, v8, :cond_9

    .line 148
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 149
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Malformed MIME; got =="

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 151
    :cond_8
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 154
    :cond_9
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 155
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 158
    :cond_a
    iput-byte v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 159
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 160
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 164
    :pswitch_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_b

    .line 165
    iput-byte v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    .line 168
    :cond_b
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 169
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected 10, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 172
    :cond_c
    iput-byte v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 173
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 174
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 175
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 179
    :pswitch_3
    if-lt v0, v10, :cond_d

    if-le v0, v11, :cond_f

    :cond_d
    const/16 v4, 0x41

    if-lt v0, v4, :cond_e

    const/16 v4, 0x46

    if-le v0, v4, :cond_f

    :cond_e
    const/16 v4, 0x61

    if-lt v0, v4, :cond_10

    const/16 v4, 0x66

    if-gt v0, v4, :cond_10

    .line 180
    :cond_f
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v2

    .line 181
    .local v2, msd:B
    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v1

    .line 182
    .local v1, low:B
    iput-byte v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 183
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 186
    .end local v1           #low:B
    .end local v2           #msd:B
    :cond_10
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 187
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 190
    :cond_11
    iput-byte v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 191
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 192
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 193
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populatePushbackQueue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 93
    .local v0, i:I
    :sswitch_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 85
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 86
    .restart local v0       #i:I
    sparse-switch v0, :sswitch_data_0

    .line 101
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->clear()V

    goto :goto_0

    .line 97
    :sswitch_2
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->clear()V

    .line 98
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->fillBuffer()V

    .line 58
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const/4 v0, -0x1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 62
    .local v0, val:B
    if-gez v0, :cond_0

    .line 65
    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
