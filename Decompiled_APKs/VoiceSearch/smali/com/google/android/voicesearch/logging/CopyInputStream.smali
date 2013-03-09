.class public Lcom/google/android/voicesearch/logging/CopyInputStream;
.super Ljava/io/FilterInputStream;
.source "CopyInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/voicesearch/logging/CopyInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/logging/CopyInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "in"
    .parameter "out"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    iput-object p2, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->mOut:Ljava/io/OutputStream;

    .line 46
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
    .line 50
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 51
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 52
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 57
    .local v0, x:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 62
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/logging/CopyInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 73
    .local v0, readCount:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 78
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
