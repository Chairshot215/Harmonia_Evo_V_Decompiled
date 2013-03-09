.class public Lorg/apache/xalan/templates/ElemExsltFuncResult;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemExsltFuncResult.java"


# static fields
.field static final serialVersionUID:J = -0x3045724a014950b3L


# instance fields
.field private m_callerFrameSize:I

.field private m_isResultSet:Z

.field private m_result:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_isResultSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_result:Lorg/apache/xpath/objects/XObject;

    iput v1, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_callerFrameSize:I

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentFuncResultSeen()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljavax/xml/transform/TransformerException;

    const-string v4, "An EXSLT function cannot set more than one result!"

    invoke-direct {v3, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/templates/ElemExsltFuncResult;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentFuncResult()Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentFuncResult(Ljava/lang/Object;)V

    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "result"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method
