.class public Lcom/google/android/voicesearch/speechservice/AudioBuffer;
.super Ljava/lang/Object;
.source "AudioBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mAudioException:Ljava/lang/Exception;

.field private final mAudioPacketSize:I

.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureThread:Ljava/lang/Thread;

.field private final mIn:Ljava/io/InputStream;

.field private volatile mStopRecording:Z

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private readPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 2
    .parameter "packetSize"
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 74
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    .line 82
    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 95
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    .line 96
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    .line 97
    new-instance v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;-><init>(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    .line 103
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->captureLoop()V

    return-void
.end method

.method private addPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private captureLoop()V
    .locals 7

    .prologue
    .line 112
    :try_start_0
    iget v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    new-array v0, v4, [B

    .line 113
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 114
    .local v3, index:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    if-nez v4, :cond_3

    .line 116
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    iget v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v0, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 118
    .local v1, bytesRead:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 120
    if-lez v3, :cond_1

    .line 121
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V

    .line 122
    const/4 v3, 0x0

    .line 125
    :cond_1
    sget-object v4, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    :try_start_1
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #index:I
    :goto_1
    return-void

    .line 146
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #index:I
    :catch_0
    move-exception v2

    .line 147
    .local v2, e:Ljava/io/IOException;
    const-string v4, "AudioBuffer"

    const-string v5, "Closing input stream failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    add-int/2addr v3, v1

    .line 129
    :try_start_2
    iget v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    if-ne v3, v4, :cond_0

    .line 131
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V

    .line 132
    iget v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    new-array v0, v4, [B

    .line 133
    const/4 v3, 0x0

    goto :goto_0

    .line 137
    .end local v1           #bytesRead:I
    :cond_3
    sget-object v4, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    :try_start_3
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 146
    :catch_1
    move-exception v2

    .line 147
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "AudioBuffer"

    const-string v5, "Closing input stream failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 138
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #index:I
    :catch_2
    move-exception v2

    .line 139
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    if-nez v4, :cond_4

    .line 140
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->setAudioException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 146
    :catch_3
    move-exception v2

    .line 147
    .local v2, e:Ljava/io/IOException;
    const-string v4, "AudioBuffer"

    const-string v5, "Closing input stream failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 143
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 145
    :try_start_6
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 148
    :goto_2
    throw v4

    .line 146
    :catch_4
    move-exception v2

    .line 147
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "AudioBuffer"

    const-string v6, "Closing input stream failed"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setAudioException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 165
    :try_start_0
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    .line 166
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public getAudio()[B
    .locals 6

    .prologue
    .line 176
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 179
    const/4 v3, 0x0

    .line 187
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v3

    .line 181
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 183
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 187
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 185
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 187
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 245
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 248
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 249
    new-instance v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;

    const-string v1, "Audio capture threw exception"

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public restartBuffersToBackup()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 229
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "AudioBuffer"

    const-string v2, "Interrupted in #stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
