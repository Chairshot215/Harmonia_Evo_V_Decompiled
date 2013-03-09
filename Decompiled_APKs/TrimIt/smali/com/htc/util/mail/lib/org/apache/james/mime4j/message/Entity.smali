.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field private body:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;

.field private header:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

.field private parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->header:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    .line 37
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->body:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;

    .line 38
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public getBody()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->body:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;->getCharset(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;

    .line 134
    .local v0, f:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->header:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;

    .line 107
    .local v0, child:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;

    move-object v1, v2

    .line 112
    .local v1, parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;
    :goto_0
    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 107
    .end local v1           #parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;

    .line 159
    .local v0, f:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBody(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->body:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;

    .line 94
    invoke-interface {p1, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;->setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V

    .line 95
    return-void
.end method

.method public setHeader(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->header:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    .line 76
    return-void
.end method

.method public setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 58
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
