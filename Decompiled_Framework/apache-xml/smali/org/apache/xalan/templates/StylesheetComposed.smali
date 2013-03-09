.class public Lorg/apache/xalan/templates/StylesheetComposed;
.super Lorg/apache/xalan/templates/Stylesheet;
.source "StylesheetComposed.java"


# static fields
.field static final serialVersionUID:J = -0x2fcbcd7627ab1243L


# instance fields
.field private m_endImportCountComposed:I

.field private m_importCountComposed:I

.field private m_importNumber:I

.field private transient m_includesComposed:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    return-void
.end method


# virtual methods
.method public getEndImportCountComposed()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    return v0
.end method

.method public getImportComposed(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iget v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    return-object v1
.end method

.method public getImportCountComposed()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    return v0
.end method

.method public getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    move-object p0, v0

    goto :goto_0
.end method

.method public getIncludeCountComposed()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAggregatedType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recompose(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v3

    const/4 v0, -0x1

    :goto_0
    if-ge v0, v3, :cond_9

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_4

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_5

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_6

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_7

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v4, :cond_8

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method recomposeImports()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I

    move-result v4

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    :goto_0
    if-lez v0, :cond_0

    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v2

    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    :goto_1
    if-lez v2, :cond_1

    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recomposeTemplates(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method
