.class public Lorg/apache/xalan/templates/ElemUse;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemUse.java"


# static fields
.field static final serialVersionUID:J = 0x50e886227b73bd18L


# instance fields
.field private m_attributeSetsNames:[Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-void
.end method

.method private applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p3, :cond_2

    array-length v4, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v6, p3, v2

    invoke-virtual {p2, v6}, Lorg/apache/xalan/templates/StylesheetRoot;->getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1
    if-ltz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    new-instance v7, Ljavax/xml/transform/TransformerException;

    const-string v8, "ER_NO_ATTRIB_SET"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemUse;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    :cond_0
    return-void
.end method

.method public getUseAttributeSets()[Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public setUseAttributeSets(Ljava/util/Vector;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lorg/apache/xml/utils/QName;

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/QName;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseAttributeSets([Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-void
.end method
