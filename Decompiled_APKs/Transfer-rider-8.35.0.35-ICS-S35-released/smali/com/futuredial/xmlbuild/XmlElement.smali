.class public Lcom/futuredial/xmlbuild/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"


# instance fields
.field protected m_AttrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlAttr;",
            ">;"
        }
    .end annotation
.end field

.field protected m_ChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field protected m_ParentElement:Lcom/futuredial/xmlbuild/XmlElement;

.field protected m_nNameSpace:I

.field protected m_nValType:I

.field protected m_strName:Ljava/lang/String;

.field protected m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    .line 42
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ParentElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "strName"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    .line 72
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 74
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ParentElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "strName"
    .parameter "strValue"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-direct {v0, p2}, Lcom/futuredial/xmlbuild/XmlCDATA;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    .line 52
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ParentElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "strName"
    .parameter "binData"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-direct {v0, p2}, Lcom/futuredial/xmlbuild/XmlCDATA;-><init>([B)V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    .line 62
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ParentElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 65
    return-void
.end method


# virtual methods
.method public IsCDATA()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 312
    iget v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;
    .locals 2
    .parameter "strName"
    .parameter "strValue"

    .prologue
    .line 257
    new-instance v0, Lcom/futuredial/xmlbuild/XmlAttr;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlAttr;-><init>()V

    .line 258
    .local v0, attr:Lcom/futuredial/xmlbuild/XmlAttr;
    invoke-virtual {v0, p1}, Lcom/futuredial/xmlbuild/XmlAttr;->setName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p2}, Lcom/futuredial/xmlbuild/XmlAttr;->setValue(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    return-object v0
.end method

.method public addAttr(Lcom/futuredial/xmlbuild/XmlAttr;)V
    .locals 1
    .parameter "Attr"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;
    .locals 2
    .parameter "strName"

    .prologue
    .line 225
    new-instance v0, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 226
    .local v0, ele:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-virtual {v0, p1}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;
    .locals 2
    .parameter "strName"
    .parameter "strValue"

    .prologue
    .line 237
    new-instance v0, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v0, p1, p2}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v0, ele:Lcom/futuredial/xmlbuild/XmlElement;
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    return-object v0
.end method

.method public addElement(Lcom/futuredial/xmlbuild/XmlElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public addElement(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, eleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 222
    return-void
.end method

.method public findAttrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "attrName"

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 35
    :goto_0
    return-object v2

    .line 28
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nCount:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 30
    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/xmlbuild/XmlAttr;

    invoke-virtual {v2}, Lcom/futuredial/xmlbuild/XmlAttr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/xmlbuild/XmlAttr;

    invoke-virtual {v2}, Lcom/futuredial/xmlbuild/XmlAttr;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 35
    goto :goto_0
.end method

.method public getCDATAValue()[B
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->getCDATA()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;
    .locals 4
    .parameter "strChildNodeName"

    .prologue
    .line 336
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, nCount:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 338
    iget-object v3, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/xmlbuild/XmlElement;

    .line 339
    .local v0, cld:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 344
    .end local v0           #cld:Lcom/futuredial/xmlbuild/XmlElement;
    :goto_1
    return-object v0

    .line 336
    .restart local v0       #cld:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v0           #cld:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "strChildNodeName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    const/4 v3, 0x0

    .line 350
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, nCount:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 352
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/xmlbuild/XmlElement;

    .line 353
    .local v0, cld:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 355
    if-nez v3, :cond_0

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .restart local v3       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0           #cld:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    return-object v3
.end method

.method public getChildXmlElementList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSpace()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nNameSpace:I

    return v0
.end method

.method public getParentElement()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ParentElement:Lcom/futuredial/xmlbuild/XmlElement;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueType()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    return v0
.end method

.method public getXmlString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 150
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 151
    .local v4, strXml:Ljava/lang/String;
    const-string v4, "<"

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 156
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 158
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nCount:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/xmlbuild/XmlAttr;

    .line 162
    .local v0, attr:Lcom/futuredial/xmlbuild/XmlAttr;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlAttr;->getXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v0           #attr:Lcom/futuredial/xmlbuild/XmlAttr;
    .end local v2           #i:I
    .end local v3           #nCount:I
    :cond_0
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3       #nCount:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 172
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/xmlbuild/XmlElement;

    .line 173
    .local v1, ele:Lcom/futuredial/xmlbuild/XmlElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/futuredial/xmlbuild/XmlElement;->getXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v1           #ele:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .end local v2           #i:I
    .end local v3           #nCount:I
    :goto_2
    return-object v4

    .line 181
    :cond_2
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v5}, Lcom/futuredial/xmlbuild/XmlCDATA;->getLen()I

    move-result v5

    if-lez v5, :cond_5

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    iget v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    const-string v6, "Data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<![CDATA["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlCDATA;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]]>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 192
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlCDATA;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 200
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/>\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public getXmlString(Ljava/io/StringWriter;)V
    .locals 6
    .parameter "output"

    .prologue
    .line 95
    const-string v4, "<"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 96
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 102
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nCount:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 104
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_AttrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/xmlbuild/XmlAttr;

    .line 106
    .local v0, attr:Lcom/futuredial/xmlbuild/XmlAttr;
    invoke-virtual {v0, p1}, Lcom/futuredial/xmlbuild/XmlAttr;->getXmlString(Ljava/io/StringWriter;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0           #attr:Lcom/futuredial/xmlbuild/XmlAttr;
    .end local v2           #i:I
    .end local v3           #nCount:I
    :cond_0
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 113
    const-string v4, ">\r\n"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3       #nCount:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 116
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ChildList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/xmlbuild/XmlElement;

    .line 117
    .local v1, ele:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-virtual {v1, p1}, Lcom/futuredial/xmlbuild/XmlElement;->getXmlString(Ljava/io/StringWriter;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v1           #ele:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_1
    const-string v4, "</"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 121
    const-string v4, ">\r\n"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 147
    .end local v2           #i:I
    .end local v3           #nCount:I
    :goto_2
    return-void

    .line 125
    :cond_2
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlCDATA;->getLen()I

    move-result v4

    if-lez v4, :cond_5

    .line 127
    const-string v4, ">"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 128
    iget v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    const-string v5, "Data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 130
    const-string v4, "<![CDATA["

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlCDATA;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 132
    const-string v4, "]]>"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 138
    :goto_3
    const-string v4, "</"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 140
    const-string v4, ">\r\n"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 136
    :cond_4
    iget-object v4, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlCDATA;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 144
    :cond_5
    const-string v4, "/>\r\n"

    invoke-virtual {p1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setCDATABinHexValue([B)V
    .locals 1
    .parameter "binValue"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlCDATA;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v0, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->setCDATA([B)V

    .line 296
    const/4 v0, 0x2

    iput v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    .line 297
    return-void
.end method

.method public setCDATAValue(Ljava/lang/String;)V
    .locals 1
    .parameter "strValue"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlCDATA;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v0, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->setValue(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    .line 308
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "strName"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strName:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setNameSpace(I)V
    .locals 0
    .parameter "nNameSpace"

    .prologue
    .line 82
    iput p1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nNameSpace:I

    .line 83
    return-void
.end method

.method public setParentElement(Lcom/futuredial/xmlbuild/XmlElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_ParentElement:Lcom/futuredial/xmlbuild/XmlElement;

    .line 87
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "strValue"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlCDATA;-><init>()V

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_strValue:Lcom/futuredial/xmlbuild/XmlCDATA;

    invoke-virtual {v0, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->setValue(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/xmlbuild/XmlElement;->m_nValType:I

    .line 287
    return-void
.end method
