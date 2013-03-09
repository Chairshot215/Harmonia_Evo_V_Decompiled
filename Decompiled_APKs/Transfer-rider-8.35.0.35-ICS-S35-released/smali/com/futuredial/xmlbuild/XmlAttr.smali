.class public Lcom/futuredial/xmlbuild/XmlAttr;
.super Ljava/lang/Object;
.source "XmlAttr.java"


# instance fields
.field protected m_strName:Ljava/lang/String;

.field protected m_strValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "strName"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "strName"
    .parameter "strValue"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    .line 57
    .local v0, strRet:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    goto :goto_0
.end method

.method public getXmlString(Ljava/io/StringWriter;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 43
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 48
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "strName"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "strValue"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlAttr;->m_strValue:Ljava/lang/String;

    .line 31
    return-void
.end method
