.class public interface abstract Lorg/apache/xml/serializer/SerializationHandler;
.super Ljava/lang/Object;
.source "SerializationHandler.java"

# interfaces
.implements Lorg/apache/xml/serializer/ExtendedContentHandler;
.implements Lorg/apache/xml/serializer/ExtendedLexicalHandler;
.implements Lorg/apache/xml/serializer/XSLOutputAttributes;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/apache/xml/serializer/DOMSerializer;
.implements Lorg/apache/xml/serializer/Serializer;


# virtual methods
.method public abstract close()V
.end method

.method public abstract flushPending()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract getTransformer()Ljavax/xml/transform/Transformer;
.end method

.method public abstract serialize(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public abstract setDTDEntityExpansion(Z)V
.end method

.method public abstract setEscaping(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setIndentAmount(I)V
.end method

.method public abstract setNamespaceMappings(Lorg/apache/xml/serializer/NamespaceMappings;)V
.end method

.method public abstract setTransformer(Ljavax/xml/transform/Transformer;)V
.end method
