.class public interface abstract Lorg/apache/xml/serializer/ExtendedContentHandler;
.super Ljava/lang/Object;
.source "ExtendedContentHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# static fields
.field public static final HTML_ATTREMPTY:I = 0x2

.field public static final HTML_ATTRURL:I = 0x4

.field public static final NO_BAD_CHARS:I = 0x1


# virtual methods
.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract addAttributes(Lorg/xml/sax/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract characters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract characters(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract endElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract entityReference(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
.end method

.method public abstract getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
.end method

.method public abstract startElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
