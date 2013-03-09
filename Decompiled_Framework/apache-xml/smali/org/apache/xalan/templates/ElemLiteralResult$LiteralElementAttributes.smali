.class public Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiteralElementAttributes"
.end annotation


# instance fields
.field private m_count:I

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    iget v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    return v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    goto :goto_0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v6, 0x0

    move-object v3, p1

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v7, v2, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v5, 0x0

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v7}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    if-eqz v6, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_5
    new-instance v5, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v8, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {v5, v7, v0, v8}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v4}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    new-instance v3, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
