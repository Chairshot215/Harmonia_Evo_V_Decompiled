.class public Lcom/htc/utils/ulog/io/SafeZipInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "SafeZipInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SafeZipInputStream"


# instance fields
.field private mReturnedZeroCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/utils/ulog/io/SafeZipInputStream;->mReturnedZeroCount:I

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "SafeZipInputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[read()] return 0, buffer start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/htc/utils/ulog/io/SafeZipInputStream;->mReturnedZeroCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/utils/ulog/io/SafeZipInputStream;->mReturnedZeroCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iput v4, p0, Lcom/htc/utils/ulog/io/SafeZipInputStream;->mReturnedZeroCount:I

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/utils/ulog/io/SafeZipInputStream;->mReturnedZeroCount:I

    if-eqz v1, :cond_0

    iput v4, p0, Lcom/htc/utils/ulog/io/SafeZipInputStream;->mReturnedZeroCount:I

    goto :goto_0
.end method
