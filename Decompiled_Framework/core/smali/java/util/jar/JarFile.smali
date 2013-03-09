.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileInputStream;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private closed:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private manifestEntry:Ljava/util/zip/ZipEntry;

.field verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    :cond_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    :cond_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-direct {v0, p1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    :cond_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    return-void
.end method

.method private static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "META-INF/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/util/zip/ZipEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1
.end method

.method private readMetaEntries()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_1

    iput-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    move-object v0, v6

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-nez v8, :cond_3

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-object v1, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-nez v8, :cond_5

    :cond_2
    if-nez v7, :cond_0

    iput-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    goto :goto_0

    :cond_3
    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v8, :cond_5

    const-string v8, ".SF"

    invoke-static {v2, v8}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".DSA"

    invoke-static {v2, v8}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".RSA"

    invoke-static {v2, v8}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/jar/JarFile$1JarFileEnumerator;

    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Ljava/util/jar/JarFile$1JarFileEnumerator;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2

    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    iput-object p0, v0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    move-object v1, v0

    goto :goto_0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    :cond_0
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/jar/JarVerifier;->setManifest(Ljava/util/jar/Manifest;)V

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v4, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v4}, Ljava/util/jar/Manifest;->getMainAttributesEnd()I

    move-result v4

    iput v4, v3, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    :cond_1
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->removeMetaEntries()V

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->removeChunks()V

    :cond_2
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    move-result v3

    if-nez v3, :cond_3

    iput-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    :cond_3
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v2

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/jar/JarFile$JarFileInputStream;

    invoke-direct {v2, v1, p1, v0}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier$VerifierEntry;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v2, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "JarFile has been closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/jar/Manifest;

    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v3, v1, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;Z)V

    iput-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iput-object v5, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    goto :goto_2
.end method
