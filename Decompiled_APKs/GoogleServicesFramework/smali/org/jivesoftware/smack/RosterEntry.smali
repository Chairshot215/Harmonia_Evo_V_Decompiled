.class public Lorg/jivesoftware/smack/RosterEntry;
.super Ljava/lang/Object;
.source "RosterEntry.java"


# instance fields
.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private gRejected:Z

.field private gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

.field private name:Ljava/lang/String;

.field private quickContact:Z

.field private status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field private type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .parameter "user"
    .parameter "name"
    .parameter "type"
    .parameter "status"
    .parameter "connection"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 66
    iput-object p4, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 67
    iput-object p5, p0, Lorg/jivesoftware/smack/RosterEntry;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 68
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    iput-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 334
    if-ne p0, p1, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 341
    .end local p1
    :goto_0
    return v0

    .line 337
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/jivesoftware/smack/RosterEntry;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    check-cast p1, Lorg/jivesoftware/smack/RosterEntry;

    .end local p1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 341
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    return-object v0
.end method

.method public googleGetRejected()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/jivesoftware/smack/RosterEntry;->gRejected:Z

    return v0
.end method

.method public googleSetRejected(Z)V
    .locals 0
    .parameter "rejected"

    .prologue
    .line 265
    iput-boolean p1, p0, Lorg/jivesoftware/smack/RosterEntry;->gRejected:Z

    .line 266
    return-void
.end method

.method public googleSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 249
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 250
    return-void
.end method

.method public isBlocked()Z
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinned()Z
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickContact()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/jivesoftware/smack/RosterEntry;->quickContact:Z

    return v0
.end method

.method public setQuickContact(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/jivesoftware/smack/RosterEntry;->quickContact:Z

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    sget-object v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    if-eq v1, v2, :cond_1

    .line 319
    const-string v1, ", gr_t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 322
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/RosterEntry;->gRejected:Z

    if-eqz v1, :cond_2

    .line 323
    const-string v1, ", gr_rejected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jivesoftware/smack/RosterEntry;->gRejected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 326
    :cond_2
    iget-boolean v1, p0, Lorg/jivesoftware/smack/RosterEntry;->quickContact:Z

    if-eqz v1, :cond_3

    .line 327
    const-string v1, ", qc=\'true\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
