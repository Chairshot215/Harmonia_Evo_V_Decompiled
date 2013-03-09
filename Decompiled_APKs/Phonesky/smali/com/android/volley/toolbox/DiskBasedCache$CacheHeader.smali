.class Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheHeader"
.end annotation


# instance fields
.field public etag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 2
    .parameter "key"
    .parameter "entry"

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 352
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 353
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 354
    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 355
    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->ttl:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 356
    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 357
    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>()V

    .line 366
    .local v0, entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 367
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v2

    .line 368
    .local v2, version:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 370
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 372
    :cond_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 373
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 374
    iget-object v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 377
    :cond_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 378
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 379
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 380
    return-object v0
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    .locals 3
    .parameter "data"

    .prologue
    .line 387
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 388
    .local v0, e:Lcom/android/volley/Cache$Entry;
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 389
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 390
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 391
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 392
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 393
    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .locals 6
    .parameter "os"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 401
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 402
    .local v1, oos:Ljava/io/ObjectOutputStream;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 403
    iget-object v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 405
    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 406
    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 407
    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 408
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 412
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    :goto_1
    return v2

    .line 404
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    :cond_0
    iget-object v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/io/IOException;
    const-string v4, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 412
    goto :goto_1
.end method
