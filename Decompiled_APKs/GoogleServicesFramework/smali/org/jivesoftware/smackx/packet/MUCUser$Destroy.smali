.class public Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;
.super Ljava/lang/Object;
.source "MUCUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MUCUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Destroy"
.end annotation


# instance fields
.field private jid:Ljava/lang/String;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 613
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->jid:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 622
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->reason:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 627
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<destroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->getJid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 629
    const-string v1, " jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->getReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 632
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 635
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 637
    const-string v1, "<reason>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</reason>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    :cond_2
    const-string v1, "</destroy>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
