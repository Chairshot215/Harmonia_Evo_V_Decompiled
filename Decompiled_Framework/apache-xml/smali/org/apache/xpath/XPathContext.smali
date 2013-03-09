.class public Lorg/apache/xpath/XPathContext;
.super Lorg/apache/xml/dtm/DTMManager;
.source "XPathContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/XPathContext$XPathExpressionContext;
    }
.end annotation


# static fields
.field public static final RECURSIONLIMIT:I = 0x1000


# instance fields
.field expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

.field private m_DTMXRTreeFrags:Ljava/util/HashMap;

.field private m_axesIteratorStack:Ljava/util/Stack;

.field private m_contextNodeLists:Ljava/util/Stack;

.field private m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

.field private m_currentNodes:Lorg/apache/xml/utils/IntStack;

.field private m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

.field protected m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

.field private m_isSecureProcessing:Z

.field private m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

.field m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

.field private m_owner:Ljava/lang/Object;

.field private m_ownerGetErrorListener:Ljava/lang/reflect/Method;

.field private m_predicatePos:Lorg/apache/xml/utils/IntStack;

.field private m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

.field private m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

.field public m_primaryReader:Lorg/xml/sax/XMLReader;

.field private m_rtfdtm_stack:Ljava/util/Vector;

.field m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

.field private m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

.field private m_uriResolver:Ljavax/xml/transform/URIResolver;

.field private m_variableStacks:Lorg/apache/xpath/VariableStack;

.field private m_which_rtfdtm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getErrorListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 4

    const/4 v3, -0x1

    const/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    new-instance v0, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    new-instance v0, Lorg/apache/xpath/SourceTreeManager;

    invoke-direct {v0}, Lorg/apache/xpath/SourceTreeManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    new-instance v0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext$XPathExpressionContext;-><init>(Lorg/apache/xpath/XPathContext;)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/xpath/VariableStack;

    invoke-direct {v0}, Lorg/apache/xpath/VariableStack;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-void

    :cond_0
    new-instance v0, Lorg/apache/xpath/VariableStack;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/VariableStack;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-object v0
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v2, v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method

.method private final releaseDTMXRTreeFrags()V
    .locals 3

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2

    new-instance v0, Lorg/apache/xpath/axes/OneStepIteratorForward;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    invoke-interface {v0, p1, p0}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    return-object v0
.end method

.method public createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    return-object v0
.end method

.method public createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/DTMManager;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getAxesIteratorStackStacks()Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-object v0
.end method

.method public final getContextNode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    return v0
.end method

.method public final getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContextNodeListsStack()Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-object v0
.end method

.method public final getContextNodes()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getCurrentExpressionNode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    return-object v0
.end method

.method public final getCurrentNode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/SubContextList;

    goto :goto_0
.end method

.method public getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    return-object v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .locals 6

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method public getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v0

    return v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;
    .locals 3

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-direct {v0, p1, p0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;)V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0
.end method

.method public final getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 5

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavax/xml/transform/ErrorListener;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-nez v1, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v2}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    :cond_3
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    return-object v0
.end method

.method public getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    const/4 v2, 0x1

    move-object v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    return-object v0
.end method

.method public final getIteratorRoot()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    move-result v0

    return v0
.end method

.method public final getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/PrefixResolver;

    return-object v0
.end method

.method public getOwnerObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPredicatePos()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public final getPredicateRoot()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    move-result v0

    return v0
.end method

.method public final getPrimaryReader()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public getRTFDTM()Lorg/apache/xml/dtm/DTM;
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    move-object v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    move-object v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getSAXLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public final getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    return-object v0
.end method

.method public getSubContextList()Lorg/apache/xpath/axes/SubContextList;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/SubContextList;

    goto :goto_0
.end method

.method public final getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public final getVarStack()Lorg/apache/xpath/VariableStack;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-object v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    return v0
.end method

.method public final popContextNodeList()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: popContextNodeList when stack is empty!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final popCurrentExpressionNode()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final popCurrentNode()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final popCurrentNodeAndExpression()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final popExpressionState()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final popIteratorRoot()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    return-void
.end method

.method public final popNamespaceContext()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final popPredicatePos()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->pop()I

    return-void
.end method

.method public final popPredicateRoot()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    return-void
.end method

.method public popRTFContext()V
    .locals 4

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-ne v2, v1, :cond_2

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    goto :goto_0

    :cond_2
    :goto_1
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    move-result v0

    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    goto :goto_1
.end method

.method public popSAXLocator()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final popSubContextList()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushCurrentExpressionNode(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushCurrentNode(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushCurrentNodeAndExpression(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushExpressionState(IILorg/apache/xml/utils/PrefixResolver;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushIteratorRoot(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    return-void
.end method

.method public final pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushNamespaceContextNull()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushPredicatePos(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final pushPredicateRoot(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    return-void
.end method

.method public pushRTFContext()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->pushRewindMark()V

    :cond_0
    return-void
.end method

.method public pushSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushSAXLocatorNull()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release(Lorg/apache/xml/dtm/DTM;Z)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/xpath/XPathContext;->releaseDTMXRTreeFrags()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTM;

    invoke-virtual {v2, v1, v5}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iput v4, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v1, v2, v5}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    :cond_1
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAxesIteratorStackStacks(Ljava/util/Stack;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-void
.end method

.method public setContextNodeListsStack(Ljava/util/Stack;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-void
.end method

.method public setCurrentExpressionNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    return-void
.end method

.method public setCurrentNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NULL_ERROR_HANDLER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method public final setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public setPrimaryReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    return-void
.end method

.method public setSourceTreeManager(Lorg/apache/xpath/SourceTreeManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public final setVarStack(Lorg/apache/xpath/VariableStack;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-void
.end method
