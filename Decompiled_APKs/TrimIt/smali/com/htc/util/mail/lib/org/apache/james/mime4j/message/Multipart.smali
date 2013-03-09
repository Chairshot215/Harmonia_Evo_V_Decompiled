.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;


# instance fields
.field private bodyParts:Ljava/util/List;

.field private epilogue:Ljava/lang/String;

.field private parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

.field private preamble:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 50
    const-string v0, "alternative"

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    move-result-object v1

    .line 193
    .local v1, e:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;

    .line 195
    .local v0, cField:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCharset()Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    move-result-object v1

    .line 200
    .local v1, e:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, charString:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public addBodyPart(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;)V
    .locals 1
    .parameter "bodyPart"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;->setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V

    .line 144
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEpilogue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyParts(Ljava/util/List;)V
    .locals 3
    .parameter "bodyParts"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;->setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public setEpilogue(Ljava/lang/String;)V
    .locals 0
    .parameter "epilogue"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 92
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;

    invoke-virtual {v1, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;->setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .parameter "preamble"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->getBoundary()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, boundary:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, bodyParts:Ljava/util/List;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 174
    .local v3, writer:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->getPreamble()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;

    invoke-virtual {v4, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->getEpilogue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 184
    return-void
.end method
