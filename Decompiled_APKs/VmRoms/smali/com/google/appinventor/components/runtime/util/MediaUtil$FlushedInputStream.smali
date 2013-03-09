.class Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-wide v0, v5

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->read()I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    const-wide/16 v2, 0x1

    :cond_2
    add-long/2addr v0, v2

    goto :goto_0
.end method
