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

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    .line 15
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    .line 16
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    .line 17
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 18
    return-void
.end method


# virtual methods
.method clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 2
    .parameter "n"

    .prologue
    .line 70
    :goto_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-le v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 74
    return-void
.end method

.method closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;I)V
    .locals 3
    .parameter "n"
    .parameter "num"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    move v1, p2

    .line 90
    .end local p2
    .local v1, num:I
    :goto_0
    add-int/lit8 p2, v1, -0x1

    .end local v1           #num:I
    .restart local p2
    if-lez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    .line 92
    .local v0, c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-interface {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtSetParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 93
    invoke-interface {p1, v0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtAddChild(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;I)V

    move v1, p2

    .line 94
    .end local p2
    .restart local v1       #num:I
    goto :goto_0

    .line 95
    .end local v0           #c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .end local v1           #num:I
    .restart local p2
    :cond_0
    invoke-interface {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtClose()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->pushNode(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    .line 98
    return-void
.end method

.method closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V
    .locals 4
    .parameter "n"
    .parameter "condition"

    .prologue
    .line 107
    if-eqz p2, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodeArity()I

    move-result v0

    .line 109
    .local v0, a:I
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    move v1, v0

    .line 110
    .end local v0           #a:I
    .local v1, a:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    if-lez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    .line 112
    .local v2, c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-interface {v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtSetParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 113
    invoke-interface {p1, v2, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtAddChild(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;I)V

    move v1, v0

    .line 114
    .end local v0           #a:I
    .restart local v1       #a:I
    goto :goto_0

    .line 115
    .end local v1           #a:I
    .end local v2           #c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .restart local v0       #a:I
    :cond_0
    invoke-interface {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtClose()V

    .line 116
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->pushNode(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 117
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    .line 122
    .end local v0           #a:I
    :goto_1
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 120
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    goto :goto_1
.end method

.method nodeArity()I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method nodeCreated()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    return v0
.end method

.method openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 3
    .parameter "n"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 80
    invoke-interface {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;->jjtOpen()V

    .line 81
    return-void
.end method

.method peekNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method pushNode(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    .line 46
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 31
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 32
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    .line 33
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 34
    return-void
.end method

.method rootNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method
