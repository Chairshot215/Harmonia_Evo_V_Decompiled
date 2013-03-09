.class public abstract Lcom/google/wireless/gdata2/client/GDataServiceClient;
.super Ljava/lang/Object;
.source "GDataServiceClient.java"


# static fields
.field protected static DEFAULT_GDATA_VERSION:Ljava/lang/String;


# instance fields
.field private final gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

.field private final gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "2.0"

    sput-object v0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V
    .locals 0
    .parameter "gDataClient"
    .parameter "gDataParserFactory"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    .line 32
    iput-object p2, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    .line 33
    return-void
.end method

.method private parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 2
    .parameter "entryClass"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v1, p1, p2}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseStandaloneEntry()Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 392
    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    :cond_0
    return-object v1

    .line 392
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 393
    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method protected convertHttpExceptionForEntryReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    .locals 4
    .parameter "message"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 459
    new-instance v0, Lcom/google/wireless/gdata2/client/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v0

    .line 451
    :sswitch_0
    new-instance v0, Lcom/google/wireless/gdata2/client/ForbiddenException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ForbiddenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 453
    :sswitch_1
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 455
    :sswitch_2
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 457
    :sswitch_3
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_3
        0x191 -> :sswitch_1
        0x193 -> :sswitch_0
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method protected convertHttpExceptionForFeedReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    .locals 4
    .parameter "message"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/ResourceGoneException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 441
    new-instance v0, Lcom/google/wireless/gdata2/client/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v0

    .line 433
    :sswitch_0
    new-instance v0, Lcom/google/wireless/gdata2/client/ForbiddenException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ForbiddenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 435
    :sswitch_1
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 437
    :sswitch_2
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceGoneException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceGoneException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 439
    :sswitch_3
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_3
        0x191 -> :sswitch_1
        0x193 -> :sswitch_0
        0x19a -> :sswitch_2
    .end sparse-switch
.end method

.method protected convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    .locals 6
    .parameter "entryClass"
    .parameter "message"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 506
    :pswitch_0
    new-instance v2, Lcom/google/wireless/gdata2/client/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v2

    .line 487
    :pswitch_1
    const/4 v0, 0x0

    .line 488
    .local v0, entry:Lcom/google/wireless/gdata2/data/Entry;
    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v1

    .line 490
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    .line 494
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    new-instance v2, Lcom/google/wireless/gdata2/ConflictDetectedException;

    invoke-direct {v2, v0}, Lcom/google/wireless/gdata2/ConflictDetectedException;-><init>(Lcom/google/wireless/gdata2/data/Entry;)V

    throw v2

    .line 496
    .end local v0           #entry:Lcom/google/wireless/gdata2/data/Entry;
    :pswitch_2
    new-instance v2, Lcom/google/wireless/gdata2/client/BadRequestException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 498
    :pswitch_3
    new-instance v2, Lcom/google/wireless/gdata2/client/ForbiddenException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/ForbiddenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 500
    :pswitch_4
    new-instance v2, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 502
    :pswitch_5
    new-instance v2, Lcom/google/wireless/gdata2/client/PreconditionFailedException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/PreconditionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 504
    :pswitch_6
    new-instance v2, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 7
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v4, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v4, p3}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;

    move-result-object v3

    .line 176
    .local v3, serializer:Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    :try_start_0
    iget-object v4, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, p2, v5, v3}, Lcom/google/wireless/gdata2/client/GDataClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v2

    .line 178
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 187
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    :try_end_1
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    const/4 v4, 0x0

    goto :goto_0

    .line 183
    :catch_1
    move-exception v1

    .line 185
    .local v1, e1:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    throw v0
.end method

.method public createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-interface {v0}, Lcom/google/wireless/gdata2/client/GDataClient;->createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v0

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "editUri"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/wireless/gdata2/client/GDataClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    .line 382
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 4
    .parameter "entryClass"
    .parameter "id"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getGDataClient()Lcom/google/wireless/gdata2/client/GDataClient;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, p3, p4, v3}, Lcom/google/wireless/gdata2/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 216
    .local v1, is:Ljava/io/InputStream;
    invoke-direct {p0, p1, v1}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 219
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not fetch entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForEntryReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 219
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getGDataClient()Lcom/google/wireless/gdata2/client/GDataClient;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    return-object v0
.end method

.method protected getGDataParserFactory()Lcom/google/wireless/gdata2/client/GDataParserFactory;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    return-object v0
.end method

.method public getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 4
    .parameter "feedEntryClass"
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/ResourceGoneException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, p3, p4, v3}, Lcom/google/wireless/gdata2/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 109
    .local v1, is:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v2, p1, v1}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not fetch feed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForFeedReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 112
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getProtocolVersion()Ljava/lang/String;
.end method

.method public updateEntry(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 8
    .parameter "entry"
    .parameter "oldEntry"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, editUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "No edit URI -- cannot update."

    invoke-direct {v0, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v0, p1, p2}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;

    move-result-object v5

    .line 292
    .local v5, serializer:Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v4

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/wireless/gdata2/client/GDataClient;->updateEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v7

    .line 295
    .local v7, is:Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    .end local v7           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v6

    .line 297
    .local v6, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v6}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method
