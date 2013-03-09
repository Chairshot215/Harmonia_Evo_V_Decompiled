.class public Lgnu/kawa/xml/HttpPrinter;
.super Lgnu/lists/FilterConsumer;
.source "HttpPrinter.java"


# instance fields
.field currentHeader:Ljava/lang/Object;

.field private elementNesting:I

.field headers:Ljava/util/Vector;

.field protected ostream:Ljava/io/OutputStream;

.field protected sawContentType:Ljava/lang/String;

.field sbuf:Ljava/lang/StringBuilder;

.field private seenStartDocument:I

.field seenXmlHeader:Z

.field writer:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Lgnu/mapping/OutPort;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 42
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 36
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    .line 37
    return-void
.end method

.method public static make(Lgnu/mapping/OutPort;)Lgnu/kawa/xml/HttpPrinter;
    .locals 1
    .parameter "out"

    .prologue
    .line 47
    new-instance v0, Lgnu/kawa/xml/HttpPrinter;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/HttpPrinter;-><init>(Lgnu/mapping/OutPort;)V

    return-object v0
.end method

.method private writeRaw(Ljava/lang/String;)V
    .locals 4
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-virtual {v2, p1}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 58
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "value"

    .prologue
    .line 91
    const-string v0, "Content-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method protected beforeNode()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "Content-type"

    const-string v1, "text/xml"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 68
    return-void
.end method

.method public beginData()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v2, :cond_4

    .line 123
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 124
    const-string v2, "Content-type"

    const-string v3, "text/plain"

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-nez v2, :cond_1

    .line 126
    new-instance v2, Lgnu/mapping/OutPort;

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 127
    :cond_1
    const/4 v1, 0x0

    .line 128
    .local v1, style:Ljava/lang/String;
    const-string v2, "text/html"

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    const-string v1, "html"

    .line 134
    :cond_2
    :goto_0
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-static {v2, v1}, Lgnu/xml/XMLPrinter;->make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;

    move-result-object v2

    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    .line 135
    iget v2, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    if-nez v2, :cond_3

    .line 137
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v2}, Lgnu/lists/Consumer;->startDocument()V

    .line 138
    const/4 v2, 0x1

    iput v2, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    .line 142
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->printHeaders()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #style:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/HttpPrinter;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    .line 154
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    return-void

    .line 130
    .restart local v1       #style:Ljava/lang/String;
    :cond_5
    const-string v2, "application/xhtml+xml"

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    const-string v1, "xhtml"

    goto :goto_0

    .line 132
    :cond_6
    const-string v2, "text/plain"

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const-string v1, "plain"

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public endAttribute()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endAttribute()V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endDocument()V

    .line 228
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 229
    const-string v1, "Content-type"

    const-string v2, "text/plain"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 232
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_5

    .line 235
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-virtual {v1, v0}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 240
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->close()V

    .line 242
    :cond_3
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    if-eqz v1, :cond_4

    .line 243
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 248
    :cond_4
    :goto_1
    return-void

    .line 237
    .restart local v0       #str:Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public endElement()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->endElement()V

    .line 179
    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 180
    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->endDocument()V

    .line 182
    :cond_0
    return-void
.end method

.method public printHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 74
    const-string v0, ": "

    invoke-direct {p0, v0}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p2}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 76
    const-string v0, "\n"

    invoke-direct {p0, v0}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public printHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 83
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 84
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/xml/HttpPrinter;->printHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 86
    :cond_0
    const-string v2, "\n"

    invoke-direct {p0, v2}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public reset(Z)Z
    .locals 4
    .parameter "headersAlso"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 256
    if-eqz p1, :cond_0

    .line 258
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 259
    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 260
    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 261
    iput v3, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 263
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    .line 265
    const/4 v0, 0x1

    .line 266
    .local v0, ok:Z
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 269
    :goto_0
    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 271
    :cond_1
    return v0

    :cond_2
    move v0, v3

    .line 268
    goto :goto_0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .parameter "attrType"

    .prologue
    .line 99
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 100
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    .line 219
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    .line 220
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 159
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 162
    iget-boolean v2, p0, Lgnu/kawa/xml/HttpPrinter;->seenXmlHeader:Z

    if-nez v2, :cond_1

    .line 163
    const-string v1, "text/html"

    .line 169
    .local v1, mimeType:Ljava/lang/String;
    :goto_0
    const-string v2, "Content-type"

    invoke-virtual {p0, v2, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 172
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v2, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 173
    iget v2, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 174
    return-void

    .line 164
    :cond_1
    instance-of v2, p1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_2

    const-string v3, "html"

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const-string v1, "text/xhtml"

    .restart local v1       #mimeType:Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_2
    const-string v1, "text/xml"

    .restart local v1       #mimeType:Ljava/lang/String;
    goto :goto_0
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "str"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 201
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    add-int v1, p2, p3

    invoke-virtual {v0, p1, p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 209
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 186
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-nez v0, :cond_0

    .line 187
    check-cast p1, Lgnu/lists/Consumable;

    .end local p1
    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 193
    :goto_0
    return-void

    .line 190
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 191
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
