.class public Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
.super Ljava/lang/Object;
.source "DiscoverItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/DiscoverItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private entityID:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "entityID"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->entityID:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 216
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->action:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 166
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->name:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 192
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->node:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<item jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->entityID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 223
    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->node:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 226
    const-string v1, " node=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->node:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->action:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 229
    const-string v1, " action=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_2
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
