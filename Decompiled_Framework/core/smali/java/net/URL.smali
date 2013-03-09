.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

.field private static final streamHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private transient hashCode:I

.field private host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field transient streamHandler:Ljava/net/URLStreamHandler;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Ljava/net/URL;->port:I

    if-ge p3, v3, :cond_0

    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port < -1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput p3, p0, Ljava/net/URL;->port:I

    invoke-static {p2, p4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "#"

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v4}, Ljava/net/URL;->fixURL(Z)V

    if-nez p5, :cond_4

    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v1, :cond_5

    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p5, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->port:I

    if-nez p2, :cond_0

    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    iput-object p3, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Llibcore/net/url/UrlUtils;->getSchemePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    :goto_0
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    if-eqz p1, :cond_5

    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_3

    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    iput-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    :cond_3
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_6

    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :try_start_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, p2, v10, v1}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v9

    new-instance v0, Ljava/net/MalformedURLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/URL;->fixURL(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    iget-object v2, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-le v1, v4, :cond_2

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v4, :cond_3

    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Ljava/net/URL;->hashCode:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public static declared-synchronized setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 3

    const-class v1, Ljava/net/URL;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sput-object p0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    check-cast p1, Ljava/net/URL;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    goto :goto_0
.end method

.method fixURL(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    iget v1, p0, Ljava/net/URL;->port:I

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URL;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-le v0, v3, :cond_2

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v3, :cond_3

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    :goto_1
    return-void

    :cond_2
    iput-object v5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v5, p0, Ljava/net/URL;->query:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getEffectivePort()I
    .locals 2

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget v1, p0, Ljava/net/URL;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/net/URL;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    :cond_0
    iget v0, p0, Ljava/net/URL;->hashCode:I

    return v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput p3, p0, Ljava/net/URL;->port:I

    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URL;->fixURL(Z)V

    return-void
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v4, p6

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-void
.end method

.method setupStreamHandler()V
    .locals 11

    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v8, :cond_2

    sget-object v8, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v8

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_2

    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v8, "java.protocol.handler.pkgs"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    const-string v8, "\\|"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v7, v0, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".Handler"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_0

    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Llibcore/net/url/FileHandler;

    invoke-direct {v8}, Llibcore/net/url/FileHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    :cond_4
    :goto_3
    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_0

    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "ftp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Llibcore/net/url/FtpHandler;

    invoke-direct {v8}, Llibcore/net/url/FtpHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_3

    :cond_6
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Llibcore/net/http/HttpHandler;

    invoke-direct {v8}, Llibcore/net/http/HttpHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_3

    :cond_7
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Llibcore/net/http/HttpsHandler;

    invoke-direct {v8}, Llibcore/net/http/HttpsHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_3

    :cond_8
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "jar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Llibcore/net/url/JarHandler;

    invoke-direct {v8}, Llibcore/net/url/JarHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_3

    :catch_1
    move-exception v8

    goto :goto_2

    :catch_2
    move-exception v8

    goto :goto_2
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown protocol("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toURILenient()Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
