.class Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;
.super Ljava/io/BufferedInputStream;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EASBufferedInputStream"
.end annotation


# instance fields
.field fileOutput:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 696
    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    .line 697
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;Ljava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter "in"
    .parameter "size"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 699
    invoke-direct {p0, p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    .line 700
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
    .line 732
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 733
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 711
    .local v0, oneByte:I
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 712
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 714
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    .line 718
    .local v0, len:I
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 721
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
    .line 724
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 725
    .local v0, len:I
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 728
    :cond_0
    return v0
.end method

.method public setOutputFile(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 703
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EAS_SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EASBufferedInputStream.setOutputFile(): Error create file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASBufferedInputStream;->fileOutput:Ljava/io/FileOutputStream;

    goto :goto_0
.end method
