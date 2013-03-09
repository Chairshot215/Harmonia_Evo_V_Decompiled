.class Lcom/android/voicedialer/RecognizerLogger$2;
.super Ljava/io/InputStream;
.source "RecognizerLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/RecognizerLogger;->logInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/RecognizerLogger;

.field final synthetic val$baos:Ljava/io/ByteArrayOutputStream;

.field final synthetic val$inputStream:Ljava/io/InputStream;

.field final synthetic val$sampleRate:I


# direct methods
.method constructor <init>(Lcom/android/voicedialer/RecognizerLogger;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->this$0:Lcom/android/voicedialer/RecognizerLogger;

    iput-object p2, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$baos:Ljava/io/ByteArrayOutputStream;

    iput p4, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$sampleRate:I

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/voicedialer/RecognizerLogger$2;->this$0:Lcom/android/voicedialer/RecognizerLogger;

    #getter for: Lcom/android/voicedialer/RecognizerLogger;->mDatedPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/voicedialer/RecognizerLogger;->access$000(Lcom/android/voicedialer/RecognizerLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    .local v6, out:Ljava/io/OutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 251
    .local v7, pcm:[B
    new-instance v0, Landroid/speech/srec/WaveHeader;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$sampleRate:I

    const/16 v4, 0x10

    array-length v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/speech/srec/WaveHeader;-><init>(SSISI)V

    .line 253
    .local v0, hdr:Landroid/speech/srec/WaveHeader;
    invoke-virtual {v0, v6}, Landroid/speech/srec/WaveHeader;->write(Ljava/io/OutputStream;)I

    .line 254
    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 262
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 264
    return-void

    .line 257
    .end local v0           #hdr:Landroid/speech/srec/WaveHeader;
    .end local v7           #pcm:[B
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    .end local v6           #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 262
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 261
    throw v1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 238
    .local v0, rtn:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 232
    .local v0, rtn:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$baos:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 233
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 226
    .local v0, rtn:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$2;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 227
    :cond_0
    return v0
.end method

.method public skip(J)J
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
