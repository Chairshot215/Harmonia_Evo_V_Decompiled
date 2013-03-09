.class public Lcom/android/smith/Device$FsInfo;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FsInfo"
.end annotation


# instance fields
.field private f_bavail:J

.field private f_bfree:J

.field private f_blocks:J

.field private f_bsize:J

.field private f_ffree:J

.field private f_files:J

.field private f_namelen:J

.field private f_type:J

.field private mEmpty:Z

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 588
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/smith/Device$FsInfo;->restat(Ljava/lang/String;)V

    .line 590
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 609
    iget-boolean v7, p0, Lcom/android/smith/Device$FsInfo;->mEmpty:Z

    if-nez v7, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v5

    .line 614
    :cond_1
    const-string v7, "logctl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":statfs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/smith/Device$FsInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, result:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 618
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, fields:[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 622
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v1

    if-ge v2, v7, :cond_2

    .line 624
    aget-object v7, v1, v2

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, pairs:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v7, v3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    .line 668
    .end local v3           #pairs:[Ljava/lang/String;
    :cond_2
    iput-boolean v6, p0, Lcom/android/smith/Device$FsInfo;->mEmpty:Z

    .line 672
    .end local v1           #fields:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_3
    iget-boolean v7, p0, Lcom/android/smith/Device$FsInfo;->mEmpty:Z

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 629
    .restart local v1       #fields:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #pairs:[Ljava/lang/String;
    :cond_4
    const-string v7, "SM:Device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FsInfo: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v7, "f_type"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 633
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_type:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 633
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_type:J

    goto :goto_2

    .line 635
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const-string v7, "f_bsize"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 637
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_bsize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_bsize:J

    goto :goto_2

    .line 639
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const-string v7, "f_blocks"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 641
    const/4 v7, 0x1

    :try_start_2
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_blocks:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_blocks:J

    goto :goto_2

    .line 643
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    const-string v7, "f_bfree"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 645
    const/4 v7, 0x1

    :try_start_3
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_bfree:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_bfree:J

    goto :goto_2

    .line 647
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    const-string v7, "f_bavail"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 649
    const/4 v7, 0x1

    :try_start_4
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_bavail:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_bavail:J

    goto :goto_2

    .line 651
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    const-string v7, "f_files"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 653
    const/4 v7, 0x1

    :try_start_5
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_files:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_5
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_files:J

    goto :goto_2

    .line 655
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    const-string v7, "f_ffree"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 657
    const/4 v7, 0x1

    :try_start_6
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_ffree:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_ffree:J

    goto/16 :goto_2

    .line 659
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b
    const-string v7, "f_namelen"

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 661
    const/4 v7, 0x1

    :try_start_7
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/Device$FsInfo;->f_namelen:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iput-wide v10, p0, Lcom/android/smith/Device$FsInfo;->f_namelen:J

    goto/16 :goto_2

    .line 665
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c
    const-string v7, "SM:Device"

    const-string v8, "unknown pairs!"

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getAvailableBlocks()J
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 720
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_bavail:J

    return-wide v0
.end method

.method public getBlockCount()J
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 708
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_blocks:J

    return-wide v0
.end method

.method public getBlockSize()J
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 702
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_bsize:J

    return-wide v0
.end method

.method public getFreeBlocks()J
    .locals 2

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 714
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_bfree:J

    return-wide v0
.end method

.method public getFreeFileNodes()J
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 690
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_ffree:J

    return-wide v0
.end method

.method public getMaxFilenameLength()J
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 696
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_namelen:J

    return-wide v0
.end method

.method public getTotalFileNodes()J
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 684
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_files:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/android/smith/Device$FsInfo;->get()Z

    .line 678
    iget-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_type:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restat(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    const-wide/16 v0, 0x0

    .line 594
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_type:J

    .line 595
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_bsize:J

    .line 596
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_blocks:J

    .line 597
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_bfree:J

    .line 598
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_bavail:J

    .line 599
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_files:J

    .line 600
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_ffree:J

    .line 601
    iput-wide v0, p0, Lcom/android/smith/Device$FsInfo;->f_namelen:J

    .line 603
    iput-object p1, p0, Lcom/android/smith/Device$FsInfo;->mPath:Ljava/lang/String;

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/smith/Device$FsInfo;->mEmpty:Z

    .line 605
    return-void
.end method
