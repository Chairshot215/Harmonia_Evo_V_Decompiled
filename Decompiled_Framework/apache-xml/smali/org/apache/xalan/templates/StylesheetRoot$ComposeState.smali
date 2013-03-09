.class Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
.super Ljava/lang/Object;
.source "StylesheetRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/StylesheetRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposeState"
.end annotation


# instance fields
.field private m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field m_marks:Lorg/apache/xml/utils/IntStack;

.field private m_maxStackFrameSize:I

.field private m_variableNames:Ljava/util/Vector;

.field final synthetic this$0:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5

    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    new-instance v3, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v3}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    #getter for: Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    #getter for: Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addVariableName(Lorg/apache/xml/utils/QName;)I
    .locals 4

    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    sub-int v0, v2, v3

    iget v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    if-le v0, v2, :cond_0

    iget v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    :cond_0
    return v1
.end method

.method getCurrentStackFrameSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method getFrameSize()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    return v0
.end method

.method getGlobalsSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    #getter for: Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;
    invoke-static {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getQNameID(Lorg/apache/xml/utils/QName;)I
    .locals 4

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getVariableNames()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    return-object v0
.end method

.method popStackMark()V
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->setCurrentStackFrameSize(I)V

    return-void
.end method

.method pushStackMark()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getCurrentStackFrameSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method resetStackFrameSize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    return-void
.end method

.method setCurrentStackFrameSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method
