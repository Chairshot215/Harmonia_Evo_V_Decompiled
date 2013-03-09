.class public Lcom/google/android/common/SafeXmlSerializer;
.super Ljava/lang/Object;
.source "SafeXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private final serializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .parameter "xmlSerializer"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    return-void
.end method

.method static getSafeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    .line 23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 25
    .local v1, c:C
    if-ge v1, v7, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v6, :cond_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 33
    if-ge v1, v7, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    if-ne v1, v6, :cond_3

    .line 34
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #c:C
    .end local p0
    :cond_5
    return-object p0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "namespace"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p3}, Lcom/google/android/common/SafeXmlSerializer;->getSafeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 74
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 91
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getDepth()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "namespace"
    .parameter "generatePrefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "os"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 152
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "encoding"
    .parameter "standalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Lcom/google/android/common/SafeXmlSerializer;->getSafeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "buf"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/google/android/common/SafeXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method
