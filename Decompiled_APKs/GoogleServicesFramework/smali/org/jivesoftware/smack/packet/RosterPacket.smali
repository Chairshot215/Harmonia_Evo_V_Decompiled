.class public Lorg/jivesoftware/smack/packet/RosterPacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/RosterPacket$1;,
        Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;,
        Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;,
        Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    }
.end annotation


# instance fields
.field private etag:Ljava/lang/String;

.field private notModified:Ljava/lang/Boolean;

.field private final rosterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->notModified:Ljava/lang/Boolean;

    .line 577
    return-void
.end method


# virtual methods
.method public addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 56
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
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
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 118
    .local v3, itemCount:I
    invoke-static {}, Lorg/jivesoftware/smack/GoogleExtensions;->getSupportExtendedContactAttribute()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    const-string v4, "<query xmlns=\'jabber:iq:roster\' xmlns:gr=\'google:roster\' gr:ext=\'2\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->notModified:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 127
    :cond_0
    const-string v4, " xmlns:mr=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "google:mobile:roster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    const-string v4, " mr:etag=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_1
    :goto_1
    if-lez v3, :cond_5

    .line 136
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    iget-object v5, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    monitor-enter v5

    .line 139
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 140
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 141
    .local v1, entry:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    .end local v1           #entry:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v2           #i:I
    :cond_2
    const-string v4, "<query xmlns=\'jabber:iq:roster\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 130
    :cond_3
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->notModified:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->notModified:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const-string v4, " mr:not-modified=\'true\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 143
    .restart local v2       #i:I
    :cond_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    const-string v4, "</query>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    .end local v2           #i:I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 143
    .restart local v2       #i:I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 148
    .end local v2           #i:I
    :cond_5
    const-string v4, "/>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    return-object v0
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 12

    .prologue
    const/16 v11, 0x2c

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 155
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 156
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v9, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 158
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v8, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v8}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 160
    .local v5, roster:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v8, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 161
    iget-object v8, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 174
    :cond_0
    iget-object v8, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 175
    .local v4, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 176
    iget-object v8, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 177
    .local v3, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 178
    .local v6, rosterItem:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v8, 0x3

    invoke-virtual {v5, v8, v6}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v3           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v6           #rosterItem:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    sget-byte v8, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-lt v8, v10, :cond_2

    .line 185
    const/16 v7, 0x2c

    .line 186
    .local v7, width:I
    const/16 v1, 0x2c

    .line 187
    .local v1, height:I
    const/4 v8, 0x4

    invoke-virtual {v5, v8, v11}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 188
    const/4 v8, 0x5

    invoke-virtual {v5, v8, v11}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 191
    .end local v1           #height:I
    .end local v7           #width:I
    :cond_2
    invoke-virtual {v0, v10, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 192
    return-object v0
.end method

.method public getNotModified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->notModified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRosterItemCount()I
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRosterItems()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 79
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, entries:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 81
    .end local v0           #entries:Ljava/util/List;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRosterItemsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2
    .parameter "etag"

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->notModified:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not modified is set!  can only have one of etag or not modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setNotModified(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "notModified"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->etag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "etag is set!  can only have one of etag or not modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->notModified:Ljava/lang/Boolean;

    .line 112
    return-void
.end method
