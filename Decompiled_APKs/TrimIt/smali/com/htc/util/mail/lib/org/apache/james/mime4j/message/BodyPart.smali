.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
.source "BodyPart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;->getHeader()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    .line 40
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BodyPart;->getBody()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 41
    return-void
.end method
