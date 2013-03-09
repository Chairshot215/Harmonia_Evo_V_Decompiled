.class Ljava/net/URLClassLoader$URLHandler;
.super Ljava/lang/Object;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLHandler"
.end annotation


# instance fields
.field codeSourceUrl:Ljava/net/URL;

.field final synthetic this$0:Ljava/net/URLClassLoader;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz p2, :cond_1

    const/16 v0, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    #calls: Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;
    invoke-static {v0, v1}, Ljava/net/URLClassLoader;->access$000(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v11

    if-nez v11, :cond_2

    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    #calls: Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    invoke-static/range {v0 .. v8}, Ljava/net/URLClassLoader;->access$100(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    :cond_1
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    const/4 v5, 0x0

    array-length v6, v9

    new-instance v7, Ljava/security/CodeSource;

    iget-object v3, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    check-cast v2, [Ljava/security/cert/Certificate;

    invoke-direct {v7, v3, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    move-object v2, v0

    move-object v3, p3

    move-object v4, v9

    #calls: Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    invoke-static/range {v2 .. v7}, Ljava/net/URLClassLoader;->access$200(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Package;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Package is sealed"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v2, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v2, p2}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Ljava/net/URLClassLoader$URLHandler;->createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v5, p1}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/16 v5, 0xc8

    if-lt v0, v5, :cond_2

    const/16 v5, 0x12c

    if-lt v0, v5, :cond_0

    :cond_2
    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v4

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v4

    goto :goto_0
.end method

.method findResources(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v0, v7, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    move-object v0, v8

    goto :goto_0
.end method
