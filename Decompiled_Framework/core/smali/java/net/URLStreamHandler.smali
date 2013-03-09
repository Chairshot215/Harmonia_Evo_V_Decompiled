.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultPort()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected hashCode(Ljava/net/URL;)I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 23

    move-object/from16 v0, p1

    iget-object v3, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    move-object/from16 v0, p0

    if-eq v0, v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only a URL\'s stream handler is permitted to mutate it"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v4, p4, p3

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v3

    :cond_1
    const/4 v7, -0x1

    const-string v3, "//"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v13, p3, 0x2

    const-string v3, "/?#"

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v3, v13, v1}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v3, "@"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v15, :cond_2

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v17, v22, 0x1

    :goto_0
    move/from16 v14, v17

    const-string v3, "]"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v3, v1, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_4

    const-string v3, ":"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    move/from16 v0, v18

    if-ne v3, v0, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected an IPv6 address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v9, 0x0

    move/from16 v17, v13

    goto :goto_0

    :cond_3
    move/from16 v14, v18

    :cond_4
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v14, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v20, v16, 0x1

    move/from16 v0, v20

    if-ge v0, v15, :cond_5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_5

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    move/from16 v21, v15

    :goto_2
    move/from16 v0, v21

    move/from16 v1, p4

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, p4

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Ljava/net/URLStreamHandler;->relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    move/from16 v21, v19

    goto :goto_2

    :cond_6
    move/from16 v15, p3

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    const-string v6, ""

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :sswitch_0
    move/from16 v19, p4

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :sswitch_1
    const-string v3, "#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, p4

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    if-nez v10, :cond_9

    const-string v10, ""

    :cond_9
    invoke-static {v8, v10}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x3f -> :sswitch_1
    .end sparse-switch
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getEffectivePort()I

    move-result v0

    invoke-virtual {p2}, Ljava/net/URL;->getEffectivePort()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual/range {p1 .. p9}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    sget-object v4, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v0}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_4

    sget-object v4, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v1}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    sget-object v4, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v2}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
