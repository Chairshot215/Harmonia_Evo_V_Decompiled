.class Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;
.super Ljava/io/InputStream;
.source "RollingFileStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/RollingFileStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFileInputStream"
.end annotation


# instance fields
.field private mFileInputStream:Ljava/io/FileInputStream;

.field private final mFileReadingFrom:Ljava/io/File;

.field final synthetic this$0:Lcom/google/android/play/analytics/RollingFileStream;


# direct methods
.method public constructor <init>(Lcom/google/android/play/analytics/RollingFileStream;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter "fileReadingFrom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->mFileReadingFrom:Ljava/io/File;

    .line 263
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    .line 264
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use MultipleFileStream.closeInputStream to close this stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Z)V
    .locals 3
    .parameter "deleteFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$500(Lcom/google/android/play/analytics/RollingFileStream;)Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 288
    iput-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    .line 289
    if-eqz p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->mFileReadingFrom:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream;->access$300(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->mFileReadingFrom:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->this$0:Lcom/google/android/play/analytics/RollingFileStream;

    #setter for: Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;
    invoke-static {v0, v2}, Lcom/google/android/play/analytics/RollingFileStream;->access$502(Lcom/google/android/play/analytics/RollingFileStream;Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;)Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    .line 294
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
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use read(byte[]).  It\'s more efficient"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method
