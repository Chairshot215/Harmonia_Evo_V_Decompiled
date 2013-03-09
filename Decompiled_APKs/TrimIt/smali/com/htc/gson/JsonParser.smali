.class public final Lcom/htc/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Lcom/htc/gson/JsonElement;
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Lcom/htc/gson/JsonParserJavacc;

    invoke-direct {v2, p1}, Lcom/htc/gson/JsonParserJavacc;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v2, parser:Lcom/htc/gson/JsonParserJavacc;
    invoke-virtual {v2}, Lcom/htc/gson/JsonParserJavacc;->parse()Lcom/htc/gson/JsonElement;
    :try_end_0
    .catch Lcom/htc/gson/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/gson/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/htc/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 68
    .end local v2           #parser:Lcom/htc/gson/JsonParserJavacc;
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Lcom/htc/gson/TokenMgrError;
    new-instance v3, Lcom/htc/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to Json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 60
    .end local v0           #e:Lcom/htc/gson/TokenMgrError;
    :catch_1
    move-exception v0

    .line 61
    .local v0, e:Lcom/htc/gson/ParseException;
    new-instance v3, Lcom/htc/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to Json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 62
    .end local v0           #e:Lcom/htc/gson/ParseException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/StackOverflowError;
    new-instance v3, Lcom/htc/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to Json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 64
    .end local v0           #e:Ljava/lang/StackOverflowError;
    :catch_3
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/OutOfMemoryError;
    new-instance v3, Lcom/htc/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to Json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 66
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v0

    .line 67
    .local v0, e:Lcom/htc/gson/JsonParseException;
    invoke-virtual {v0}, Lcom/htc/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/EOFException;

    if-eqz v3, :cond_0

    .line 68
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v1

    goto/16 :goto_0

    .line 70
    :cond_0
    throw v0
.end method

.method public parse(Ljava/lang/String;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
