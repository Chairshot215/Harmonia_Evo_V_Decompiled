.class public final Llibcore/io/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/DiskLruCache$Entry;,
        Llibcore/io/DiskLruCache$Editor;,
        Llibcore/io/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/io/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Llibcore/io/DiskLruCache$1;

    invoke-direct {v0, p0}, Llibcore/io/DiskLruCache$1;-><init>(Llibcore/io/DiskLruCache;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    iput p2, p0, Llibcore/io/DiskLruCache;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iput p3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    iput-wide p4, p0, Llibcore/io/DiskLruCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Llibcore/io/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Llibcore/io/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1400(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Llibcore/io/DiskLruCache;->completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$1800(Llibcore/io/DiskLruCache;)I
    .locals 1

    iget v0, p0, Llibcore/io/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Llibcore/io/DiskLruCache;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Llibcore/io/DiskLruCache;)Z
    .locals 1

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Llibcore/io/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Llibcore/io/DiskLruCache;I)I
    .locals 0

    iput p1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    #getter for: Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;
    invoke-static {p1}, Llibcore/io/DiskLruCache$Editor;->access$1300(Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Entry;

    move-result-object v2

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget v8, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Llibcore/io/DiskLruCache$Editor;->abort()V

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    iget-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    :cond_5
    iget v8, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    const/4 v8, 0x0

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v2, v8}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    #setter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Llibcore/io/DiskLruCache$Entry;->access$602(Llibcore/io/DiskLruCache$Entry;Z)Z

    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Llibcore/io/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    iget-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    iget-wide v10, p0, Llibcore/io/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_6

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iget-object v8, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    :try_start_2
    iget-object v8, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget v1, v0, Llibcore/io/ErrnoException;->errno:I

    sget v2, Llibcore/io/OsConstants;->ENOENT:I

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    const/16 v0, 0x7d0

    iget v1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Llibcore/io/DiskLruCache;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gtz p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Llibcore/io/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {v0}, Llibcore/io/DiskLruCache;->readJournal()V

    invoke-direct {v0}, Llibcore/io/DiskLruCache;->processJournal()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    :goto_0
    return-object v6

    :catch_0
    move-exception v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskLruCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->delete()V

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Llibcore/io/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Llibcore/io/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    goto :goto_0
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    iget-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Llibcore/io/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Llibcore/io/DiskLruCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Llibcore/io/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ge v3, v5, :cond_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    aget-object v1, v2, v8

    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    if-nez v0, :cond_3

    new-instance v0, Llibcore/io/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v7}, Llibcore/io/DiskLruCache$Entry;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;Llibcore/io/DiskLruCache$1;)V

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Llibcore/io/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    #setter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v8}, Llibcore/io/DiskLruCache$Entry;->access$602(Llibcore/io/DiskLruCache$Entry;Z)Z

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v7}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    array-length v3, v2

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    #calls: Llibcore/io/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$800(Llibcore/io/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    new-instance v3, Llibcore/io/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Llibcore/io/DiskLruCache$Editor;-><init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$1;)V

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    goto :goto_0

    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget v3, p0, Llibcore/io/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v1, p0, Llibcore/io/DiskLruCache;->size:J

    iget-wide v3, p0, Llibcore/io/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/io/DiskLruCache;->close()V

    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/io/DiskLruCache$Entry;

    if-nez v1, :cond_1

    new-instance v1, Llibcore/io/DiskLruCache$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Llibcore/io/DiskLruCache$Entry;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;Llibcore/io/DiskLruCache$1;)V

    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Llibcore/io/DiskLruCache$Editor;-><init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$1;)V

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v1, v0}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v1}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v5, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/io/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Llibcore/io/DiskLruCache;->valueCount:I

    new-array v3, v5, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_1
    :try_start_2
    iget v5, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v5, :cond_2

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v1, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    iget v4, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v4, Llibcore/io/DiskLruCache$Snapshot;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Llibcore/io/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;Llibcore/io/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    iget-wide v0, p0, Llibcore/io/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    if-eqz v0, :cond_0

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Llibcore/io/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
