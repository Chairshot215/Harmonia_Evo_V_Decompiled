.class public Lcom/futuredial/xmlbuild/XmlDoc;
.super Ljava/lang/Object;
.source "XmlDoc.java"


# instance fields
.field protected m_RootElement:Lcom/futuredial/xmlbuild/XmlElement;

.field protected m_strDocType:Ljava/lang/String;

.field protected m_strFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_RootElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 20
    return-void
.end method


# virtual methods
.method public addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 41
    const-string v0, "<!DOCTYPE "

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public clearContent()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_RootElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 38
    return-void
.end method

.method public getDocTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_RootElement:Lcom/futuredial/xmlbuild/XmlElement;

    return-object v0
.end method

.method public getXmlString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 81
    .local v0, strRet:Ljava/lang/String;
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    const-string v0, "<?xml version=\"1.0\" "

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "encoding=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" ?>\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_RootElement:Lcom/futuredial/xmlbuild/XmlElement;

    invoke-virtual {v2}, Lcom/futuredial/xmlbuild/XmlElement;->getXmlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    return-object v0

    .line 90
    :cond_1
    const-string v0, "<?xml version=\"1.0\" ?>\r\n"

    goto :goto_0
.end method

.method public getXmlString(Ljava/io/StringWriter;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    const-string v0, "<?xml version=\"1.0\" "

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 62
    const-string v0, "encoding=\""

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 64
    const-string v0, "\" ?>\r\n"

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 73
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_RootElement:Lcom/futuredial/xmlbuild/XmlElement;

    invoke-virtual {v0, p1}, Lcom/futuredial/xmlbuild/XmlElement;->getXmlString(Ljava/io/StringWriter;)V

    .line 77
    return-void

    .line 68
    :cond_1
    const-string v0, "<?xml version=\"1.0\" ?>\r\n"

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDocTypeString(Ljava/lang/String;)V
    .locals 0
    .parameter "strDocType"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strDocType:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "strFormat"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_strFormat:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setRootElement(Lcom/futuredial/xmlbuild/XmlElement;)V
    .locals 0
    .parameter "ele"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlDoc;->m_RootElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 52
    return-void
.end method
