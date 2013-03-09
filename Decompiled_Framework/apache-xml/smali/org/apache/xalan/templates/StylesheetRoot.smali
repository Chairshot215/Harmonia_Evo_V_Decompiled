.class public Lorg/apache/xalan/templates/StylesheetRoot;
.super Lorg/apache/xalan/templates/StylesheetComposed;
.source "StylesheetRoot.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/xml/transform/Templates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35c805222327c5cfL


# instance fields
.field private m_attrSets:Ljava/util/HashMap;

.field private m_availElems:Ljava/util/HashMap;

.field private transient m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

.field private m_decimalFormatSymbols:Ljava/util/Hashtable;

.field private m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private transient m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

.field private m_extensionHandlerClass:Ljava/lang/String;

.field private m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_keyDecls:Ljava/util/Vector;

.field private m_namespaceAliasComposed:Ljava/util/Hashtable;

.field private m_optimizer:Z

.field private m_outputMethodSet:Z

.field private m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

.field m_selectDefault:Lorg/apache/xpath/XPath;

.field private m_source_location:Z

.field private m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_templateList:Lorg/apache/xalan/templates/TemplateList;

.field private m_variables:Ljava/util/Vector;

.field private m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v7}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    iput-object v7, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerExsltFunction"

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    invoke-virtual {p0, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V

    :try_start_0
    new-instance v0, Lorg/apache/xpath/XPath;

    const-string v1, "node()"

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/StylesheetRoot;->initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ER_CANNOT_INIT_DEFAULT_TEMPLATES"

    invoke-static {v1, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/XSLTSchema;->getElemsAvailable()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    return-void
.end method

.method private QuickSort2(Ljava/util/Vector;II)V
    .locals 5

    move v1, p2

    move v0, p3

    if-le p3, p2, :cond_5

    add-int v4, p2, p3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    :cond_0
    :goto_0
    if-gt v1, v0, :cond_3

    :goto_1
    if-ge v1, p3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-le v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    if-gt v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-ge p2, v0, :cond_4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    :cond_4
    if-ge v1, p3, :cond_5

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object v0
.end method

.method private clearComposeState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    return-void
.end method

.method private initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    new-instance v0, Lorg/apache/xpath/XPath;

    const-string v1, "*"

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    new-instance v12, Lorg/apache/xalan/templates/ElemApplyTemplates;

    invoke-direct {v12}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    invoke-virtual {v12, v4}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {v12, v1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setSelect(Lorg/apache/xpath/XPath;)V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v12}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    new-instance v0, Lorg/apache/xpath/XPath;

    const-string v1, "text() | @*"

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    new-instance v13, Lorg/apache/xalan/templates/ElemValueOf;

    invoke-direct {v13}, Lorg/apache/xalan/templates/ElemValueOf;-><init>()V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v13}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    new-instance v5, Lorg/apache/xpath/XPath;

    const-string v6, "."

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    invoke-virtual {v13, v5}, Lorg/apache/xalan/templates/ElemValueOf;->setSelect(Lorg/apache/xpath/XPath;)V

    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    new-instance v0, Lorg/apache/xpath/XPath;

    const-string v7, "/"

    move-object v6, v0

    move-object v8, p0

    move-object v9, p0

    move v10, v4

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    new-instance v12, Lorg/apache/xalan/templates/ElemApplyTemplates;

    invoke-direct {v12}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    invoke-virtual {v12, v4}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v12}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {v12, v1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setSelect(Lorg/apache/xpath/XPath;)V

    return-void
.end method


# virtual methods
.method protected addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public canStripWhiteSpace()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAvailableElements()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    return-object v0
.end method

.method getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    return-object v0
.end method

.method public getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public getDefaultOutputProps()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public final getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public final getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getExtensionHandlerClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    invoke-direct {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    invoke-virtual {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGlobalImportCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I
    .locals 3

    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIncremental()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    return v0
.end method

.method public getKeysComposed()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    return-object v0
.end method

.method public getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lorg/apache/xalan/templates/NamespaceAlias;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptimizer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    return v0
.end method

.method public getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultOutputProps()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public getSource_location()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    return v0
.end method

.method public final getStartRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    return-object v0
.end method

.method public final getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    return-object v0
.end method

.method public getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 4

    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

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

.method public getVariablesAndParamsComposed()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object v0
.end method

.method public getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method initComposeState()V
    .locals 1

    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    return-void
.end method

.method public isOutputMethodSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    return v0
.end method

.method public isRoot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    return v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    new-instance v0, Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/TransformerImpl;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-object v0
.end method

.method public recompose()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    if-nez v9, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {p0, p0, v9, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Lorg/apache/xalan/templates/StylesheetComposed;

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v0, v9, :cond_0

    iget-object v10, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xalan/templates/StylesheetComposed;

    aput-object v9, v10, v5

    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object v9, v9, v5

    iget-object v10, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    add-int/lit8 v6, v5, -0x1

    aget-object v9, v9, v5

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeImports()V

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/apache/xalan/templates/StylesheetComposed;->recompose(Ljava/util/Vector;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v8, v9, v10}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    new-instance v9, Lorg/apache/xalan/templates/OutputProperties;

    const-string v10, ""

    invoke-direct {v9, v10}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    new-instance v9, Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {v9}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :goto_2
    if-ltz v0, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->initComposeState()V

    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/TemplateList;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/OutputProperties;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/OutputProperties;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v7

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v4

    const/4 v5, -0x1

    :goto_4
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    invoke-virtual {v9}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerUnregisteredNamespaces()V

    :cond_5
    invoke-direct {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->clearComposeState()V

    return-void
.end method

.method recomposeAttributeSets(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .locals 3

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method recomposeDecimalFormats(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    new-instance v3, Lorg/apache/xml/utils/QName;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WG_ONE_DEFAULT_XSLDECIMALFORMAT_ALLOWED"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "WG_XSLDECIMALFORMAT_NAMES_MUST_BE_UNIQUE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method recomposeNamespaceAliases(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V

    return-void
.end method

.method recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method recomposeVariables(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {v0}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method public setExtensionHandlerClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    return-object v0
.end method

.method public setIncremental(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    return-void
.end method

.method public setOptimizer(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    return-void
.end method

.method public setSource_location(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    return-void
.end method

.method public final setTemplateListComposed(Lorg/apache/xalan/templates/TemplateList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    return-void
.end method

.method public shouldCheckWhitespace()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, -0x1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_0

    :goto_0
    if-eq v8, p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v6

    check-cast v6, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z

    move-result v4

    :cond_0
    return v4

    :cond_1
    invoke-interface {v5, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v7

    if-eq v8, v7, :cond_2

    const/4 v0, 0x1

    invoke-interface {v5, v7}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_2

    move p2, v7

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    goto :goto_0
.end method
