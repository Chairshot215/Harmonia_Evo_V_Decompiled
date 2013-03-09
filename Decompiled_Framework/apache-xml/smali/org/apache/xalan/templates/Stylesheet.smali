.class public Lorg/apache/xalan/templates/Stylesheet;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "Stylesheet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STYLESHEET_EXT:Ljava/lang/String; = ".lxc"

.field static final serialVersionUID:J = 0x1cf09b35c6c706c0L


# instance fields
.field m_DecimalFormatDeclarations:Ljava/util/Stack;

.field private m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

.field private m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private m_Id:Ljava/lang/String;

.field private m_NonXslTopLevel:Ljava/util/Hashtable;

.field private m_Version:Ljava/lang/String;

.field private m_XmlnsXsl:Ljava/lang/String;

.field private m_attributeSets:Ljava/util/Vector;

.field private m_href:Ljava/lang/String;

.field private m_imports:Ljava/util/Vector;

.field private m_includes:Ljava/util/Vector;

.field private m_isCompatibleMode:Z

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_output:Ljava/util/Vector;

.field private m_prefix_aliases:Ljava/util/Vector;

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_systemId:Ljava/lang/String;

.field private m_templates:Ljava/util/Vector;

.field private m_topLevelVariables:Ljava/util/Vector;

.field private m_whitespacePreservingElements:Ljava/util/Vector;

.field private m_whitespaceStrippingElements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitStylesheet(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v0

    return v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/StylesheetComposed;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/Stylesheet;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_7

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_9

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6, p1}, Lorg/apache/xalan/templates/ElemTemplate;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_0
    move-exception v5

    new-instance v8, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v8, v5}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_b

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelVariableOrParamDecl(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7, p1}, Lorg/apache/xalan/templates/ElemVariable;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_c

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_d

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_d
    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_e
    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p1, v1}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    goto :goto_b

    :cond_f
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    return-object v0
.end method

.method public getAttributeSetCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompatibleMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    return v0
.end method

.method public getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/DecimalFormatProperties;

    return-object v0
.end method

.method public getDecimalFormat(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v4, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public getDecimalFormatCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExcludeResultPrefix(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeResultPrefixCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionElementPrefixCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/StylesheetComposed;

    return-object v0
.end method

.method public getImportCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInclude(I)Lorg/apache/xalan/templates/Stylesheet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getIncludeCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/KeyDeclaration;

    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/NamespaceAlias;

    return-object v0
.end method

.method public getNamespaceAliasCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "stylesheet"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getNonXslTopLevel(Lorg/apache/xml/utils/QName;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutput(I)Lorg/apache/xalan/templates/OutputProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    return-object v0
.end method

.method public getOutputCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemParam;
    .locals 5

    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/xalan/templates/ElemParam;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object v0
.end method

.method public getPreserveSpaceCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object v0
.end method

.method public getStripSpaceCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 0

    return-object p0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->isAggregatedType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xalan/templates/StylesheetComposed;

    return-object v0
.end method

.method public getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method public getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getTemplateCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVariable(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 5

    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    return-object v0
.end method

.method public getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 4

    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVariableOrParamCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public getXmlnsXsl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-object v0
.end method

.method public isAggregatedType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public replaceTemplate(Lorg/apache/xalan/templates/ElemTemplate;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method

.method public setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-void
.end method

.method public setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_publicId:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setNonXslTopLevel(Lorg/apache/xml/utils/QName;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Lorg/apache/xalan/templates/ElemParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;->setVariable(Lorg/apache/xalan/templates/ElemVariable;)V

    return-void
.end method

.method public setPreserveSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setStylesheetParent(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    return-void
.end method

.method public setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-void
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method

.method public setVariable(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXmlnsXsl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-void
.end method
