.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLClassLoader$URLFileHandler;,
        Ljava/net/URLClassLoader$URLJarHandler;,
        Ljava/net/URLClassLoader$URLHandler;,
        Ljava/net/URLClassLoader$IndexFile;
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DMI_COLLECTION_OF_URLS",
        "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"
    }
.end annotation


# instance fields
.field private factory:Ljava/net/URLStreamHandlerFactory;

.field handlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field originalUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/net/URL;)V
    .locals 2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .locals 4

    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    iput-object p3, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    array-length v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v2, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic access$000(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/net/URLClassLoader;Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1

    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1

    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    return-object v0
.end method

.method private createSearchURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v3, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/URL;

    const-string v1, "jar"

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/URL;

    const-string v1, "jar"

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    const-string v7, "jar"

    invoke-interface {v5, v7}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1

    new-instance v0, Ljava/net/URLClassLoader$URLFileHandler;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLFileHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    return-object v0
.end method

.method private createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1

    new-instance v0, Ljava/net/URLClassLoader$URLHandler;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    return-object v0
.end method

.method private createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 14

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v5, ""

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    new-instance v1, Ljava/net/URL;

    const-string v2, "jar"

    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v2, v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/JarURLConnection;

    invoke-virtual {v8}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v4

    new-instance v0, Ljava/net/URLClassLoader$URLJarHandler;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/net/URLClassLoader$URLJarHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLClassLoader$URLJarHandler;->getIndex()Ljava/net/URLClassLoader$IndexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    sget-object v2, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v6}, Ljava/net/URLClassLoader;->getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-interface {v1, v2, v11}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v1, "!/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v1, -0x1

    if-ne v10, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getHandler(I)Ljava/net/URLClassLoader$URLHandler;
    .locals 1

    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader$URLHandler;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/net/URLClassLoader;->makeNewHandler()V

    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader$URLHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v7, "!/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    const-string v7, "/"

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    if-nez v3, :cond_0

    const-string v7, "file.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static isDirectory(Ljava/net/URL;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized makeNewHandler()V
    .locals 5

    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "A URL is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "jar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .locals 2

    new-instance v0, Ljava/net/URLClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .locals 1

    new-instance v0, Ljava/net/URLClassLoader;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v12

    const/4 v11, 0x0

    if-nez v12, :cond_0

    const/4 v11, 0x1

    move-object v12, v10

    :cond_0
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    if-nez v11, :cond_1

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    if-nez v11, :cond_2

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    if-nez v11, :cond_3

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    if-nez v11, :cond_4

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    if-nez v11, :cond_5

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    if-nez v11, :cond_6

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    invoke-direct {p0, p2, v9}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v8, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v10, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v2}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v8, Ljava/lang/ClassNotFoundException;

    invoke-direct {v8, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {v1, v4, v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_2

    return-object v7

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, v3}, Ljava/net/URLClassLoader$URLHandler;->findResources(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v1, v2

    goto :goto_1
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 7

    const/16 v6, 0x2f

    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/JarURLConnection;

    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v4, v6, :cond_2

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v3}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/FilePermission;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "read"

    invoke-direct {v4, v5, v6}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    :goto_1
    return-object v2

    :cond_3
    new-instance v4, Ljava/io/FilePermission;

    const-string v5, "read"

    invoke-direct {v4, v1, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    const-string v0, "localhost"

    :cond_5
    new-instance v4, Ljava/net/SocketPermission;

    const-string v5, "connect, accept"

    invoke-direct {v4, v0, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 2

    iget-object v0, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method
