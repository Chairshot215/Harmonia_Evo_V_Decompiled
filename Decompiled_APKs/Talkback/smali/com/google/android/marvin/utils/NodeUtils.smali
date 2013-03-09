.class public Lcom/google/android/marvin/utils/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asXmlString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .parameter "node"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/android/marvin/utils/NodeUtils;->asXmlStringRecursive(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static asXmlStringRecursive(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "node"
    .parameter "stringBuilder"

    .prologue
    .line 49
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    .line 51
    .local v4, nodeType:I
    packed-switch v4, :pswitch_data_0

    .line 75
    :goto_0
    :pswitch_0
    return-void

    .line 53
    :pswitch_1
    const-string v6, "<"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 59
    .local v1, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, count:I
    :goto_1
    if-lt v3, v2, :cond_0

    .line 64
    const-string v6, "</"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 61
    .local v0, childNode:Lorg/w3c/dom/Node;
    invoke-static {v0, p1}, Lcom/google/android/marvin/utils/NodeUtils;->asXmlStringRecursive(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #childNode:Lorg/w3c/dom/Node;
    .end local v1           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v2           #count:I
    .end local v3           #i:I
    :pswitch_2
    move-object v5, p0

    .line 70
    check-cast v5, Lorg/w3c/dom/Text;

    .line 71
    .local v5, text:Lorg/w3c/dom/Text;
    invoke-interface {v5}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
