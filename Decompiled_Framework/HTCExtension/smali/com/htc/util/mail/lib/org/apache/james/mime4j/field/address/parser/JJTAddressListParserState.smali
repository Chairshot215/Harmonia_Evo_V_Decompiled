.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
.super Ljava/lang/Object;
.source "JJTAddressListParserState.java"


# instance fields
.field private marks:Ljava/util/Stack;

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/Stack;

.field private sp:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    return-void
.end method


# virtual methods
.method clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    return-void
.end method

.method closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;I)V
    .locals 3

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    move v1, p2

    :goto_0
    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtSetParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-interface {p1, v0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtAddChild(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;I)V

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->pushNode(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    return-void
.end method

.method closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodeArity()I

    move-result v0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtSetParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-interface {p1, v2, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtAddChild(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;I)V

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->pushNode(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    goto :goto_1
.end method

.method nodeArity()I
    .locals 2

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method nodeCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    return v0
.end method

.method openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    invoke-interface {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtOpen()V

    return-void
.end method

.method peekNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .locals 2

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method pushNode(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    return-void
.end method

.method rootNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method
