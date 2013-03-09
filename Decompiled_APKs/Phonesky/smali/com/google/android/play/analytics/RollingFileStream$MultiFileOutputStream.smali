.class Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;
.super Ljava/io/OutputStream;
.source "RollingFileStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/RollingFileStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFileOutputStream"
.end annotation


# instance fields
.field private mClosed:Z

.field private mCurrentFileWritingTo:Ljava/io/File;

.field private mFileOutputStream:Ljava/io/OutputStream;

.field private mFileSize:J

.field final synthetic this$0:Lcom/google/android/play/analytics/RollingFileStream;


# direct methods
.method public constructor <init>(Lcom/google/android/play/analytics/RollingFileStream;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mClosed:Z

    .line 171
    invoke-virtual {p0}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->rotateFiles()V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-boolean v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mClosed:Z

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mClosed:Z

    .line 244
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 245
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 246
    iput-object v4, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    .line 247
    iget-wide v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$200(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #setter for: Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;
    invoke-static {v0, v4}, Lcom/google/android/play/analytics/RollingFileStream;->access$402(Lcom/google/android/play/analytics/RollingFileStream;Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;)Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    .line 253
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$300(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public rotateFileIfLargerThan(J)V
    .locals 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->rotateFiles()V

    .line 202
    :cond_0
    return-void
.end method

.method public rotateFiles()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 210
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$200(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$300(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$300(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    .line 232
    :goto_1
    iput-wide v2, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J

    .line 233
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Lcom/google/android/play/analytics/RollingFileStream$FlushableFileOutputStream;

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/play/analytics/RollingFileStream$FlushableFileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    .line 235
    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$300(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$200(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    .line 227
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mCurrentFileWritingTo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public write(I)V
    .locals 2
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use write(byte[])... it\'s more efficient"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mClosed:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 188
    iget-wide v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J

    .line 189
    iget-wide v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mMaxFileSize:J
    invoke-static {v2}, Lcom/google/android/play/analytics/RollingFileStream;->access$100(Lcom/google/android/play/analytics/RollingFileStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->rotateFiles()V

    .line 196
    :cond_1
    return-void
.end method
