.class public Lcom/google/android/common/http/FilePartSource;
.super Ljava/lang/Object;
.source "FilePartSource.java"

# interfaces
.implements Lcom/google/android/common/http/PartSource;


# instance fields
.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "noname"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 104
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
