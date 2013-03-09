.class public Lorg/apache/xalan/templates/ElemVariablePsuedo;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemVariablePsuedo.java"


# static fields
.field static final serialVersionUID:J = 0x99b8743bcdbe1c6L


# instance fields
.field m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    iget v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemVariablePsuedo;->m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    new-instance v0, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;-><init>(Lorg/apache/xalan/templates/ElemVariable;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariablePsuedo;->m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    return-void
.end method
