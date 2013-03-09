.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/AbstractContentHandler;
.source "SimpleContentHandler.java"


# instance fields
.field private currHeader:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final body(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 1
    .parameter "bd"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->isBase64Encoded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->bodyDecoded(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->bodyDecoded(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->bodyDecoded(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public abstract bodyDecoded(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final endHeader()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->currHeader:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    .line 82
    .local v0, tmp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->currHeader:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    .line 83
    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->headers(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;)V

    .line 84
    return-void
.end method

.method public final field(Ljava/lang/String;)V
    .locals 2
    .parameter "fieldData"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->currHeader:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->addField(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;)V

    .line 75
    return-void
.end method

.method public abstract headers(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;)V
.end method

.method public final startHeader()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/SimpleContentHandler;->currHeader:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    .line 68
    return-void
.end method
