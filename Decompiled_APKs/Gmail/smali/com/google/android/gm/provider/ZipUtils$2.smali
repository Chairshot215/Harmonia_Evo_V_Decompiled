.class final Lcom/google/android/gm/provider/ZipUtils$2;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/ZipUtils;->inflateToStream([B[B)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

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
    .line 111
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 112
    iget-object v0, p0, Lcom/google/android/gm/provider/ZipUtils$2;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 113
    return-void
.end method
