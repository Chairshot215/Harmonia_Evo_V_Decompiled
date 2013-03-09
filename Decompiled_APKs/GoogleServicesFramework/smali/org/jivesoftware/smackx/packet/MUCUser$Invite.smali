.class public Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
.super Ljava/lang/Object;
.source "MUCUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MUCUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Invite"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->to:Ljava/lang/String;

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 260
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->from:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 269
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->reason:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "to"

    .prologue
    .line 278
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->to:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<invite "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 288
    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 292
    const-string v1, "<reason>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</reason>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_2
    const-string v1, "</invite>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
