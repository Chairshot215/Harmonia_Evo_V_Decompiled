.class public interface abstract Lorg/apache/xml/utils/XMLString;
.super Ljava/lang/Object;
.source "XMLString.java"


# virtual methods
.method public abstract charAt(I)C
.end method

.method public abstract compareTo(Lorg/apache/xml/utils/XMLString;)I
.end method

.method public abstract compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
.end method

.method public abstract concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract endsWith(Ljava/lang/String;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract equals(Ljava/lang/String;)Z
.end method

.method public abstract equals(Lorg/apache/xml/utils/XMLString;)Z
.end method

.method public abstract equalsIgnoreCase(Ljava/lang/String;)Z
.end method

.method public abstract fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract getChars(II[CI)V
.end method

.method public abstract hasString()Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract indexOf(I)I
.end method

.method public abstract indexOf(II)I
.end method

.method public abstract indexOf(Ljava/lang/String;)I
.end method

.method public abstract indexOf(Ljava/lang/String;I)I
.end method

.method public abstract indexOf(Lorg/apache/xml/utils/XMLString;)I
.end method

.method public abstract lastIndexOf(I)I
.end method

.method public abstract lastIndexOf(II)I
.end method

.method public abstract lastIndexOf(Ljava/lang/String;)I
.end method

.method public abstract lastIndexOf(Ljava/lang/String;I)I
.end method

.method public abstract length()I
.end method

.method public abstract startsWith(Ljava/lang/String;)Z
.end method

.method public abstract startsWith(Ljava/lang/String;I)Z
.end method

.method public abstract startsWith(Lorg/apache/xml/utils/XMLString;)Z
.end method

.method public abstract startsWith(Lorg/apache/xml/utils/XMLString;I)Z
.end method

.method public abstract substring(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract substring(II)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract toDouble()D
.end method

.method public abstract toLowerCase()Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toUpperCase()Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract trim()Lorg/apache/xml/utils/XMLString;
.end method
