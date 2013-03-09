.class public Lcom/futuredial/pim/G2File;
.super Lcom/futuredial/pim/CPim;
.source "G2File.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/futuredial/pim/CPim;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private getFileCount(Ljava/lang/String;)I
    .locals 9
    .parameter "spath"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, count:I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, dir:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 52
    :cond_0
    const-string v6, "G2File"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 73
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    return v1

    .line 56
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 57
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_4

    .line 59
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 61
    aget-object v3, v4, v5

    .line 62
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/futuredial/pim/G2File;->getFileCount(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_2

    .end local v3           #file:Ljava/io/File;
    .end local v5           #i:I
    :cond_4
    move v1, v0

    .line 73
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0
.end method

.method static getSDfreesize()J
    .locals 12

    .prologue
    .line 78
    const-wide/16 v4, 0x0

    .line 80
    .local v4, lfreesize:J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 83
    .local v6, path:Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 85
    .local v7, statfs:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 87
    .local v2, blocSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    .line 89
    .local v8, totalBlocks:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 91
    .local v0, availaBlock:J
    sub-long v10, v8, v0

    mul-long v4, v10, v2

    .line 106
    .end local v0           #availaBlock:J
    .end local v2           #blocSize:J
    .end local v6           #path:Ljava/io/File;
    .end local v7           #statfs:Landroid/os/StatFs;
    .end local v8           #totalBlocks:J
    :cond_0
    :goto_0
    return-wide v4

    .line 103
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "removed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public DeleteAll()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public addnewItem(Lcom/futuredial/publicobj/Item;Z)I
    .locals 1
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getCounts()I
    .locals 8

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, count:I
    iget-object v3, p0, Lcom/futuredial/pim/G2File;->sCfgPhoneInfo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v0

    .line 42
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    return v1

    .line 37
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/futuredial/pim/G2File;->sCfgPhoneInfo:Ljava/lang/String;

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, targetFolder:Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/futuredial/pim/G2File;->getFileCount(Ljava/lang/String;)I

    move-result v0

    .line 40
    const-string v3, "[file query]"

    const-string v4, "file count:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 42
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0
.end method
