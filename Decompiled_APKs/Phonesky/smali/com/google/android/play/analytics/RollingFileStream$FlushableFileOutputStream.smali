.class Lcom/google/android/play/analytics/RollingFileStream$FlushableFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "RollingFileStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/RollingFileStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlushableFileOutputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0
    .parameter "file"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 305
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
    .line 309
    invoke-virtual {p0}, Lcom/google/android/play/analytics/RollingFileStream$FlushableFileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 310
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 311
    return-void
.end method
