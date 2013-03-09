.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message$MessageBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;-><init>()V

    .line 65
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 66
    .local v0, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message$MessageBuilder;

    invoke-direct {v1, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message$MessageBuilder;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lcom/htc/util/mail/lib/org/apache/james/mime4j/ContentHandler;)V

    .line 67
    invoke-virtual {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getSubject()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Message;->getBody()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 89
    .local v0, body:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;
    instance-of v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 90
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;

    .line 91
    .local v1, mp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;
    invoke-virtual {v1, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;->writeTo(Ljava/io/OutputStream;)V

    .line 95
    .end local v1           #mp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Multipart;
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
