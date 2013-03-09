.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field private static final FINISH:I = 0x4

.field public static final FULL_FLUSH:I = 0x3

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field public static final NO_FLUSH:I = 0x0

.field public static final SYNC_FLUSH:I = 0x2


# instance fields
.field private compressLevel:I

.field private finished:Z

.field private flushParm:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private inLength:I

.field private inRead:I

.field private inputBuffer:[B

.field private strategy:I

.field private streamHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    iput v2, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iput v0, p0, Ljava/util/zip/Deflater;->strategy:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-lt p1, v2, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/Deflater;->createStream(IIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private checkOpen()V
    .locals 4

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to use Deflater after calling end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private native createStream(IIZ)J
.end method

.method private declared-synchronized deflateImpl([BIII)I
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    :cond_0
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Deflater;->deflateImpl([BIIJI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native deflateImpl([BIIJI)I
.end method

.method private endImpl()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->endImpl(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    iput-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    :cond_0
    return-void
.end method

.method private native endImpl(J)V
.end method

.method private native getAdlerImpl(J)I
.end method

.method private native getTotalInImpl(J)J
.end method

.method private native getTotalOutImpl(J)J
.end method

.method private native resetImpl(J)V
.end method

.method private native setDictionaryImpl([BIIJ)V
.end method

.method private native setInputImpl([BIIJ)V
.end method

.method private native setLevelsImpl(IIJ)V
.end method


# virtual methods
.method public deflate([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized deflate([BII)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deflate([BIII)I
    .locals 3

    monitor-enter p0

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flush value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized end()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized finish()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finished()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdler()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getAdlerImpl(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalIn()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalOut()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v1, p0, Ljava/util/zip/Deflater;->inRead:I

    iget v2, p0, Ljava/util/zip/Deflater;->inLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->resetImpl(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDictionary([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    return-void
.end method

.method public declared-synchronized setDictionary([BII)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setDictionaryImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInput([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    return-void
.end method

.method public declared-synchronized setInput([BII)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iput p3, p0, Ljava/util/zip/Deflater;->inLength:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->inRead:I

    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_0

    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    iget-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/zip/Deflater;->setLevelsImpl(IIJ)V

    :cond_0
    iput-object p1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setInputImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLevel(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setLevel cannot be called after setInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setStrategy(I)V
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad strategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setStrategy cannot be called after setInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
