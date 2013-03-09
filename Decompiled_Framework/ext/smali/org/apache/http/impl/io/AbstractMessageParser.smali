.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParser;


# instance fields
.field protected final lineParser:Lorg/apache/http/message/LineParser;

.field private final maxHeaderCount:I

.field private final maxLineLen:I

.field private final sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    const-string v0, "http.connection.max-header-count"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    const-string v0, "http.connection.max-line-length"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    if-eqz p2, :cond_2

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    return-void

    :cond_2
    sget-object p2, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Session input buffer may not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v8, 0x0

    :cond_2
    if-nez v2, :cond_4

    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v9, 0x40

    invoke-direct {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    :goto_0
    invoke-interface {p0, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_5

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [Lorg/apache/http/Header;

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_b

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/util/CharArrayBuffer;

    :try_start_0
    invoke-interface {p3, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v9

    aput-object v9, v5, v6
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_a

    :cond_6
    if-eqz v8, :cond_a

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    if-ge v6, v9, :cond_7

    invoke-virtual {v2, v6}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v9, 0x20

    if-eq v1, v9, :cond_8

    const/16 v9, 0x9

    if-eq v1, v9, :cond_8

    :cond_7
    if-lez p2, :cond_9

    invoke-virtual {v8}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v6

    if-le v9, p2, :cond_9

    new-instance v9, Ljava/io/IOException;

    const-string v10, "Maximum line length limit exceeded"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v8, v2, v6, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    :goto_3
    if-lez p1, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, p1, :cond_2

    new-instance v9, Ljava/io/IOException;

    const-string v10, "Maximum header count exceeded"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v2

    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v9, Lorg/apache/http/ProtocolException;

    invoke-virtual {v3}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_b
    return-object v5
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v5, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method
