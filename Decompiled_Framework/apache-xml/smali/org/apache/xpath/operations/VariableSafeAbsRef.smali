.class public Lorg/apache/xpath/operations/VariableSafeAbsRef;
.super Lorg/apache/xpath/operations/Variable;
.source "VariableSafeAbsRef.java"


# static fields
.field static final serialVersionUID:J = -0x7f52f278a11a31dcL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/operations/Variable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->getRoot()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v4

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    :cond_0
    return-object v3
.end method
