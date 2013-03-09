.class public Lcom/htc/reportagent/cache/LogCacheManager;
.super Ljava/lang/Object;
.source "LogCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/cache/LogCacheManager$1;,
        Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;
    }
.end annotation


# static fields
.field private static sLogCacheManager:Lcom/htc/reportagent/cache/LogCacheManager;


# instance fields
.field private mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;

.field private mSize:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;-><init>(Lcom/htc/reportagent/cache/LogCacheManager;Lcom/htc/reportagent/cache/LogCacheManager$1;)V

    iput-object v0, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mListener:Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/htc/reportagent/cache/LogCacheManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/reportagent/cache/LogCacheManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J

    return-wide v0
.end method

.method static synthetic access$214(Lcom/htc/reportagent/cache/LogCacheManager;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J

    return-wide v0
.end method

.method static synthetic access$222(Lcom/htc/reportagent/cache/LogCacheManager;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J

    return-wide v0
.end method

.method private getFilesFromFS(Landroid/content/Context;)[Ljava/io/File;
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v1, "logs"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, logFolder:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v2, [Ljava/io/File;

    goto :goto_0
.end method

.method private getFolderSize()J
    .locals 6

    .prologue
    .line 104
    const-wide/16 v2, 0x0

    .line 105
    .local v2, size:J
    iget-object v4, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 106
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 108
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method public static getInstance()Lcom/htc/reportagent/cache/LogCacheManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/reportagent/cache/LogCacheManager;->sLogCacheManager:Lcom/htc/reportagent/cache/LogCacheManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/htc/reportagent/cache/LogCacheManager;

    invoke-direct {v0}, Lcom/htc/reportagent/cache/LogCacheManager;-><init>()V

    sput-object v0, Lcom/htc/reportagent/cache/LogCacheManager;->sLogCacheManager:Lcom/htc/reportagent/cache/LogCacheManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/htc/reportagent/cache/LogCacheManager;->sLogCacheManager:Lcom/htc/reportagent/cache/LogCacheManager;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/htc/reportagent/cache/LogCacheManager;->getFilesFromFS(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, files:[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 92
    invoke-direct {p0}, Lcom/htc/reportagent/cache/LogCacheManager;->getFolderSize()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J

    .line 94
    .end local v0           #files:[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private trimFiles(J)V
    .locals 4
    .parameter "limit"

    .prologue
    .line 112
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mSize:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 114
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mListener:Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;

    invoke-virtual {v2, v0}, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->onDelete(Ljava/io/File;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeNewFile(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "logBuf"
    .parameter "tag"

    .prologue
    .line 120
    invoke-static {p1, p2, p3}, Lcom/htc/reportagent/cache/EntryFile;->writeNewFileEx(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 121
    .local v0, file:Ljava/io/File;
    iget-object v1, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mListener:Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;

    invoke-virtual {v1, v0}, Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;->onAdd(Ljava/io/File;)V

    .line 122
    return-void
.end method


# virtual methods
.method public getFiles(Landroid/content/Context;)[Lcom/htc/reportagent/cache/EntryFile;
    .locals 6
    .parameter "ctx"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/reportagent/cache/LogCacheManager;->init(Landroid/content/Context;)V

    .line 72
    iget-object v3, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/htc/reportagent/cache/EntryFile;

    .line 73
    .local v1, entryFiles:[Lcom/htc/reportagent/cache/EntryFile;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 75
    :try_start_0
    new-instance v4, Lcom/htc/reportagent/cache/EntryFile;

    iget-object v3, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/reportagent/cache/LogCacheManager;->mListener:Lcom/htc/reportagent/cache/LogCacheManager$MyFileChangedListener;

    invoke-direct {v4, v3, v5}, Lcom/htc/reportagent/cache/EntryFile;-><init>(Ljava/io/File;Lcom/htc/reportagent/cache/FileChangdListener;)V

    aput-object v4, v1, v2
    :try_end_0
    .catch Lcom/htc/reportagent/util/UReportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lcom/htc/reportagent/util/UReportException;
    invoke-virtual {v0}, Lcom/htc/reportagent/util/UReportException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v0           #e:Lcom/htc/reportagent/util/UReportException;
    :cond_0
    return-object v1
.end method

.method public onNewPolicyArrival(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 39
    const-string v2, "onNewPolicyArrival"

    invoke-static {v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/reportagent/cache/LogCacheManager;->init(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/htc/reportagent/cache/LogCacheUtil;->getCacheLimitFromPolicy()J

    move-result-wide v0

    .line 42
    .local v0, cacheSize:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/htc/reportagent/cache/LogCacheManager;->trimFiles(J)V

    .line 45
    :cond_0
    return-void
.end method

.method public putFile(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "logBuf"
    .parameter "tag"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/reportagent/cache/LogCacheManager;->init(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/htc/reportagent/cache/LogCacheUtil;->getCacheLimitFromPolicy()J

    move-result-wide v0

    .line 55
    .local v0, limit:J
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    array-length v2, p2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[putFile] new file size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 59
    array-length v2, p2

    int-to-long v2, v2

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/htc/reportagent/cache/LogCacheManager;->trimFiles(J)V

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/reportagent/cache/LogCacheManager;->writeNewFile(Landroid/content/Context;[BLjava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new file size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is greater than total limited size !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method
