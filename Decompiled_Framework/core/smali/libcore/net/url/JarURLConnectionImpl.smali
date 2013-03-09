.class public Llibcore/net/url/JarURLConnectionImpl;
.super Ljava/net/JarURLConnection;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;
    }
.end annotation


# static fields
.field static jarCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarInput:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    return-void
.end method

.method static synthetic access$002(Llibcore/net/url/JarURLConnectionImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    return p1
.end method

.method public static closeCachedFiles()V
    .locals 5

    sget-object v3, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v4, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private findJarEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findJarFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getUseCaches()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_1

    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_1
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_2
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarFile()V

    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarEntry()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "x-java/jar"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Llibcore/net/url/JarURLConnectionImpl;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "content/unknown"

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    iget-object v2, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JarURLConnection InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Jar entry not specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;

    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-direct {v0, p0, v1, v2}, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;-><init>(Llibcore/net/url/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method openJarFile()Ljava/util/jar/JarFile;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    const-string v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v10, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/util/jar/JarFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v13, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    iget-object v11, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v11, "hyjar_"

    const-string v12, ".tmp"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v11, 0x1000

    :try_start_1
    new-array v0, v11, [B

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v11, -0x1

    if-le v7, v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    new-instance v11, Ljava/util/jar/JarFile;

    const/4 v12, 0x1

    const/4 v13, 0x5

    invoke-direct {v11, v9, v12, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_5
    move-object v10, v11

    goto :goto_0

    :catch_1
    move-exception v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_2
    move-exception v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :try_start_6
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v10

    :goto_4
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v10

    :catch_3
    move-exception v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_2
    move-exception v10

    move-object v4, v5

    goto :goto_4

    :catchall_3
    move-exception v11

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method
