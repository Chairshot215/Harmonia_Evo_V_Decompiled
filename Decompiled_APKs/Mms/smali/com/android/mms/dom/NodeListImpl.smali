.class public Lcom/android/mms/dom/NodeListImpl;
.super Ljava/lang/Object;
.source "NodeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private mDeepSearch:Z

.field private mRootNode:Lorg/w3c/dom/Node;

.field private mSearchNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .locals 0
    .parameter "rootNode"
    .parameter "tagName"
    .parameter "deepSearch"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    .line 47
    iput-object p2, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    .line 49
    return-void
.end method

.method private fillList(Lorg/w3c/dom/Node;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    .line 113
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 117
    :goto_1
    if-eqz p1, :cond_6

    .line 118
    iget-boolean v0, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    if-eqz v0, :cond_4

    .line 119
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 125
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_6
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 66
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3
    .parameter "index"

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, node:Lorg/w3c/dom/Node;
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v2}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_0
    return-object v1

    .line 83
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    goto :goto_0

    .line 78
    :catch_1
    move-exception v2

    goto :goto_0
.end method
