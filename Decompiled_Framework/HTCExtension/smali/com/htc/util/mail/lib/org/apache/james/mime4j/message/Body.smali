.class public interface abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;
.super Ljava/lang/Object;
.source "Body.java"


# virtual methods
.method public abstract getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
.end method

.method public abstract setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
