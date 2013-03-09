.class public Ljava/util/jar/JarOutputStream;
.super Ljava/util/zip/ZipOutputStream;
.source "JarOutputStream.java"


# instance fields
.field private manifest:Ljava/util/jar/Manifest;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iput-object p2, p0, Ljava/util/jar/JarOutputStream;->manifest:Ljava/util/jar/Manifest;

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    iget-object v1, p0, Ljava/util/jar/JarOutputStream;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v1, p0}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    return-void
.end method


# virtual methods
.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    return-void
.end method
