.class public Lorg/jivesoftware/smackx/packet/DiscoverInfo;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DiscoverInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;,
        Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    }
.end annotation


# instance fields
.field private features:Ljava/util/List;

.field private identities:Ljava/util/List;

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

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    .line 240
    return-void
.end method

.method private addFeature(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 52
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFeature(Ljava/lang/String;)V
    .locals 1
    .parameter "feature"

    .prologue
    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;)V

    .line 49
    return-void
.end method

.method public addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V
    .locals 2
    .parameter "identity"

    .prologue
    .line 74
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v4, "<query xmlns=\"http://jabber.org/protocol/disco#info\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 134
    const-string v4, " node=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :cond_0
    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v5, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    monitor-enter v5

    .line 140
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 141
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 142
    .local v3, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v3           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v5, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    monitor-enter v5

    .line 146
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 147
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;

    .line 148
    .local v1, feature:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v1           #feature:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 150
    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getExtensionsXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v4, "</query>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 150
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->node:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 113
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->node:Ljava/lang/String;

    .line 114
    return-void
.end method
