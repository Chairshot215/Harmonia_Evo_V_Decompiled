.class public interface abstract Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
.super Ljava/lang/Object;
.source "IncrementalSAXSource.java"


# virtual methods
.method public abstract deliverMoreNodes(Z)Ljava/lang/Object;
.end method

.method public abstract setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public abstract setDTDHandler(Lorg/xml/sax/DTDHandler;)V
.end method

.method public abstract setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
.end method

.method public abstract startParse(Lorg/xml/sax/InputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
