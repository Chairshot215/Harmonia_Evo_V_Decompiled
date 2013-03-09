.class public Lorg/jivesoftware/smackx/packet/DiscoverItems;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DiscoverItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    .line 116
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 47
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "<query xmlns=\"http://jabber.org/protocol/disco#items\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 93
    const-string v3, " node=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_0
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    monitor-enter v4

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 100
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 101
    .local v2, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v2           #item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const-string v3, "</query>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 103
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->node:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->node:Ljava/lang/String;

    .line 87
    return-void
.end method
