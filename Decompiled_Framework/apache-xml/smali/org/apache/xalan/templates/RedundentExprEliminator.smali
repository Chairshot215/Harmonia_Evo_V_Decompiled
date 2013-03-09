.class public Lorg/apache/xalan/templates/RedundentExprEliminator;
.super Lorg/apache/xalan/templates/XSLTVisitor;
.source "RedundentExprEliminator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DIAGNOSE_MULTISTEPLIST:Z = false

.field public static final DIAGNOSE_NUM_PATHS_REDUCED:Z = false

.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field private static m_uniquePseudoVarID:I


# instance fields
.field m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

.field m_absPaths:Ljava/util/Vector;

.field m_isSameContext:Z

.field m_paths:Ljava/util/Vector;

.field m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/XSLTVisitor;-><init>()V

    new-instance v0, Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-direct {v0}, Lorg/apache/xalan/templates/AbsPathChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    new-instance v0, Lorg/apache/xalan/templates/VarNameCollector;

    invoke-direct {v0}, Lorg/apache/xalan/templates/VarNameCollector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    return-void
.end method

.method private final assertIsLocPathIterator(Lorg/apache/xpath/Expression;Lorg/apache/xpath/ExpressionOwner;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v1, p1, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/apache/xpath/operations/Variable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Programmer\'s assertion: expr1 not an iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lorg/apache/xpath/operations/Variable;

    invoke-virtual {v1}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Programmer\'s assertion: expr1 not an iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static assertion(ZLjava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_ASSERT_REDUNDENT_EXPR_ELIMINATOR"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static declared-synchronized getPseudoVarID()I
    .locals 3

    const-class v1, Lorg/apache/xalan/templates/RedundentExprEliminator;

    monitor-enter v1

    :try_start_0
    sget v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static validateNewAddition(Ljava/util/Vector;Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    if-ne v3, p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "owner.getExpression() != path!!!"

    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    if-eq v0, p1, :cond_1

    move v3, v4

    :goto_2
    const-string v6, "duplicate owner on the list!!!"

    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    if-eq v3, p2, :cond_2

    move v3, v4

    :goto_3
    const-string v6, "duplicate expression on the list!!!"

    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method protected addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v6, 0x29

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {p2, v3, v4}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/VarNameCollector;->getVarCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/VarNameCollector;->doesOccur(Lorg/apache/xml/utils/QName;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v4

    if-ne v6, v4, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isParam(Lorg/apache/xpath/ExpressionNode;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p3, v3

    :goto_1
    return-object p3

    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    if-eq v6, v3, :cond_2

    :cond_3
    invoke-virtual {p1, p3, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/VarNameCollector;->reset()V

    goto :goto_1
.end method

.method protected changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;
    .locals 10

    new-instance v5, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v5}, Lorg/apache/xpath/operations/Variable;-><init>()V

    invoke-virtual {v5, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    invoke-virtual {v5, p4}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    :cond_0
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    :goto_1
    const-string v9, "Walker should not be null!"

    invoke-static {v8, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    invoke-virtual {v7}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    invoke-virtual {v2, v5}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    invoke-virtual {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    invoke-virtual {v2, v7}, Lorg/apache/xpath/axes/FilterExprWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {v7, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {p2, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    :goto_2
    return-object p2

    :cond_3
    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-direct {v1, v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;-><init>(Lorg/apache/xpath/Expression;)V

    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    move-object p2, v1

    goto :goto_2
.end method

.method protected changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 4

    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v3, :cond_1

    new-instance v2, Lorg/apache/xpath/operations/VariableSafeAbsRef;

    invoke-direct {v2}, Lorg/apache/xpath/operations/VariableSafeAbsRef;-><init>()V

    :goto_0
    invoke-virtual {v2, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v3, :cond_0

    move-object v1, p4

    check-cast v1, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    :cond_0
    invoke-interface {p2, v2}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    return-void

    :cond_1
    new-instance v2, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v2}, Lorg/apache/xpath/operations/Variable;-><init>()V

    goto :goto_0
.end method

.method protected countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I
    .locals 4

    instance-of v3, p1, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz v3, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {v2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v1, Lorg/apache/xalan/templates/ElemVariable;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    new-instance v2, Lorg/apache/xpath/XPath;

    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    invoke-virtual {p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;
    .locals 6

    new-instance v2, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v4}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    move-object v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/templates/ElemVariablePsuedo;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemVariablePsuedo;-><init>()V

    new-instance v2, Lorg/apache/xpath/XPath;

    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/ElemVariablePsuedo;->setSelect(Lorg/apache/xpath/XPath;)V

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-object v1
.end method

.method protected createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v5

    if-le v5, v8, :cond_0

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v1, p0, v0, v5, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v7

    if-gt v7, v8, :cond_5

    :cond_4
    move-object v1, v6

    :cond_5
    return-object v1
.end method

.method protected createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/utils/QName;

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPseudoVarID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    check-cast p1, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    goto :goto_0
.end method

.method protected diagnoseLineNumber(Lorg/apache/xpath/Expression;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected diagnoseMultistepList(IIZ)V
    .locals 3

    if-lez p1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found multistep matches: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " (global)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_0
.end method

.method protected diagnoseNumPaths(Ljava/util/Vector;II)V
    .locals 3

    if-lez p2, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-ne p1, v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eliminated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consolodated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redundent paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eliminated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total global paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consolodated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redundent global paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .locals 10

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/ExpressionOwner;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I

    move-result v6

    if-lez v6, :cond_0

    add-int/lit8 v9, v9, 0x1

    :cond_0
    add-int/2addr v8, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method public eleminateRedundentGlobals(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method public eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method protected eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p2, v0, :cond_1

    move v3, v7

    :goto_0
    iget v6, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    add-int/lit8 v4, v6, -0x1

    :goto_1
    if-lt v4, v7, :cond_3

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_0

    iget v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-ge v0, v4, :cond_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v2

    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v12

    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    :goto_0
    move-object v10, v4

    check-cast v10, Lorg/apache/xpath/axes/LocPathIterator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v18

    move/from16 v9, p1

    :goto_1
    if-ge v9, v12, :cond_3

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/xpath/ExpressionOwner;

    if-eqz v15, :cond_1

    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v11, v5

    check-cast v11, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v6, :cond_0

    new-instance v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    move-object/from16 v19, v6

    add-int/lit8 v13, v13, 0x1

    :cond_0
    new-instance v22, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v13, v13, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    if-nez v13, :cond_4

    if-eqz v8, :cond_4

    new-instance v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    add-int/lit8 v13, v13, 0x1

    :cond_4
    if-eqz v6, :cond_7

    if-eqz v8, :cond_5

    move-object/from16 v16, p4

    :goto_2
    iget-object v0, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v17

    check-cast v17, Lorg/apache/xpath/axes/LocPathIterator;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v20

    :goto_3
    if-eqz v6, :cond_6

    iget-object v14, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v14, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    iget-object v6, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v16

    goto :goto_2

    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v22

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_7
    return v13
.end method

.method protected findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v11

    new-array v5, v11, [Lorg/apache/xalan/templates/ElemTemplateElement;

    new-array v2, v11, [I

    move-object/from16 v9, p1

    const/16 v13, 0x2710

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v11, :cond_1

    iget-object v15, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    aput-object v4, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result v10

    aput v10, v2, v7

    if-ge v10, v13, :cond_0

    move v13, v10

    :cond_0
    iget-object v9, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_3

    aget v15, v2, v7

    if-le v15, v13, :cond_2

    aget v15, v2, v7

    sub-int v12, v15, v13

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_2

    aget-object v15, v5, v7

    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    aput-object v15, v5, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    move v14, v13

    :goto_3
    add-int/lit8 v13, v14, -0x1

    if-ltz v14, :cond_8

    const/4 v3, 0x1

    const/4 v15, 0x0

    aget-object v6, v5, v15

    const/4 v7, 0x1

    :goto_4
    if-ge v7, v11, :cond_4

    aget-object v15, v5, v7

    if-eq v6, v15, :cond_5

    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->canAcceptVariables()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v6

    :goto_5
    return-object v15

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v11, :cond_7

    aget-object v15, v5, v7

    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    aput-object v15, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    move v14, v13

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    const-string v16, "Could not find common ancestor!!!"

    invoke-static/range {v15 .. v16}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_5
.end method

.method protected getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_ASSERT_NO_TEMPLATE_PARENT"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x1c

    if-eq v2, v1, :cond_1

    const/16 v2, 0x13

    if-eq v2, v1, :cond_1

    const/16 v2, 0x19

    if-ne v2, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x49

    if-eq v1, v0, :cond_1

    const/16 v1, 0x29

    if-ne v1, v0, :cond_0

    :cond_1
    check-cast p1, Lorg/apache/xalan/templates/ElemVariable;

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    move-result v0

    const/high16 v2, 0x800

    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AbsPathChecker;->checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 3

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v2}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected isParam(Lorg/apache/xpath/ExpressionNode;)Z
    .locals 4

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p1

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x1

    :cond_2
    :sswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x19 -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch
.end method

.method protected matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 18

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    return-object p2

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/WalkingIterator;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z

    move-result v17

    if-nez v17, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p2

    :goto_0
    if-eqz v10, :cond_4

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_3

    iget-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v6

    check-cast v6, Lorg/apache/xpath/axes/WalkingIterator;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v5, v6, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z

    move-result v17

    if-eqz v17, :cond_3

    if-nez v8, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v8, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v9, v8

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    :cond_2
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object/from16 v0, v17

    iput-object v0, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v9, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    :cond_3
    iget-object v10, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    if-eqz v8, :cond_0

    if-eqz p3, :cond_5

    move-object/from16 v14, p5

    :goto_3
    iget-object v0, v8, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v15

    check-cast v15, Lorg/apache/xpath/axes/WalkingIterator;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v15, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v14, v11, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v16

    :goto_4
    if-eqz v8, :cond_0

    iget-object v13, v8, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v13}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v12

    invoke-interface {v13, v12}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    iget-object v8, v8, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v14

    goto :goto_3

    :catch_0
    move-exception v17

    goto :goto_2

    :catch_1
    move-exception v17

    goto :goto_1
.end method

.method protected oldFindAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v12

    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object v10, v4

    check-cast v10, Lorg/apache/xpath/axes/LocPathIterator;

    move/from16 v9, p1

    :goto_1
    if-ge v9, v12, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/xpath/ExpressionOwner;

    if-eqz v14, :cond_3

    invoke-interface {v14}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v11, v5

    check-cast v11, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v6, :cond_2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v10, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v16

    if-nez v16, :cond_1

    const/16 v17, 0x0

    :goto_2
    return v17

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v17

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v13, v13, 0x1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v15, v14, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    const/16 v17, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v13, v13, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v10, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v16

    if-nez v16, :cond_5

    const/16 v17, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v17

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v13, v13, 0x1

    :cond_6
    move/from16 v17, v13

    goto :goto_2
.end method

.method partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z
    .locals 3

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    iget-object v2, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v2}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    const-string v5, "Total match is incorrect!"

    invoke-static {v3, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    move v3, v4

    goto :goto_1
.end method

.method public visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :sswitch_0
    const/16 v6, 0x1c

    if-ne v4, v6, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemForEach;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemForEach;->getSelect()Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {p1, p0, v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    iput-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    iput-boolean v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x13 -> :sswitch_0
        0x1c -> :sswitch_0
        0x23 -> :sswitch_1
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 6

    const/4 v5, 0x1

    instance-of v4, p2, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v4, p2, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz v4, :cond_2

    move-object v3, p2

    check-cast v3, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-virtual {v2}, Lorg/apache/xpath/axes/FilterExprWalker;->getInnerExpression()Lorg/apache/xpath/Expression;

    move-result-object v1

    instance-of v4, v1, Lorg/apache/xpath/operations/Variable;

    if-nez v4, :cond_0

    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    return v1
.end method

.method public visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
