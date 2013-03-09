.class Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EASByteArrayOutputStream"
.end annotation


# instance fields
.field fileOutput:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 1
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 652
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    .line 653
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;I)V
    .locals 1
    .parameter
    .parameter "size"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 655
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    .line 656
    return-void
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
    .line 686
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 687
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 689
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 691
    :cond_0
    return-void
.end method

.method public setOutputFile(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 659
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EAS_SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EASByteArrayOutputStream(): Error create file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .parameter "oneByte"

    .prologue
    .line 676
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 677
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 666
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 667
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    if-lez p3, :cond_0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASByteArrayOutputStream;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
