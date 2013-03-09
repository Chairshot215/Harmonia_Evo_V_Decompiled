.class Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private addDummyByte:Z

.field private loc:J

.field private remaining:J

.field final synthetic this$0:Lcom/htc/htccompressviewer/zip/ZipFile;


# direct methods
.method constructor <init>(Lcom/htc/htccompressviewer/zip/ZipFile;JJ)V
    .locals 1
    .parameter
    .parameter "start"
    .parameter "remaining"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->this$0:Lcom/htc/htccompressviewer/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 631
    iput-wide p4, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    .line 632
    iput-wide p2, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->loc:J

    .line 633
    return-void
.end method


# virtual methods
.method addDummy()V
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 684
    return-void
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x1

    const/4 v0, 0x0

    .line 636
    iget-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    sub-long v3, v1, v5

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 637
    iget-boolean v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz v1, :cond_0

    .line 638
    iput-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 645
    :goto_0
    return v0

    .line 641
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->this$0:Lcom/htc/htccompressviewer/zip/ZipFile;

    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;
    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ZipFile;->access$300(Lcom/htc/htccompressviewer/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->this$0:Lcom/htc/htccompressviewer/zip/ZipFile;

    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;
    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ZipFile;->access$300(Lcom/htc/htccompressviewer/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->loc:J

    add-long v4, v2, v5

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 645
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->this$0:Lcom/htc/htccompressviewer/zip/ZipFile;

    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;
    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ZipFile;->access$300(Lcom/htc/htccompressviewer/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 650
    iget-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 651
    iget-boolean v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz v1, :cond_1

    .line 652
    iput-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 653
    aput-byte v0, p1, p2

    .line 654
    const/4 v0, 0x1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 656
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 659
    :cond_2
    if-lez p3, :cond_0

    .line 663
    int-to-long v1, p3

    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 664
    iget-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    long-to-int p3, v1

    .line 666
    :cond_3
    const/4 v0, -0x1

    .line 667
    .local v0, ret:I
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->this$0:Lcom/htc/htccompressviewer/zip/ZipFile;

    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/htc/htccompressviewer/zip/ZipFile;->access$300(Lcom/htc/htccompressviewer/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v2

    monitor-enter v2

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->this$0:Lcom/htc/htccompressviewer/zip/ZipFile;

    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/htc/htccompressviewer/zip/ZipFile;->access$300(Lcom/htc/htccompressviewer/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 669
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->this$0:Lcom/htc/htccompressviewer/zip/ZipFile;

    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/htc/htccompressviewer/zip/ZipFile;->access$300(Lcom/htc/htccompressviewer/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 670
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    if-lez v0, :cond_0

    .line 672
    iget-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->loc:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->loc:J

    .line 673
    iget-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->remaining:J

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
