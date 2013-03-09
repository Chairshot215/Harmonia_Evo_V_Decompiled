.class public Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;
.super Ljava/lang/Object;
.source "XmppUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declineGroupChatInvitation(Lcom/google/android/gsf/gtalkservice/Endpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "connection"
    .parameter "room"
    .parameter "from"
    .parameter "inviter"
    .parameter "reason"

    .prologue
    .line 76
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "declineGroupInvitation: from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", to="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", room="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 84
    .local v2, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 87
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    .line 88
    .local v3, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;-><init>()V

    .line 89
    .local v0, decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setFrom(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setTo(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setReason(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->setDecline(Lorg/jivesoftware/smackx/packet/MUCUser$Decline;)V

    .line 93
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 95
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendGroupChatInvitationTo caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isGroupChat(Ljava/lang/String;)Z
    .locals 1
    .parameter "username"

    .prologue
    .line 102
    const-string v0, "@groupchat.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendGroupChatInvitationTo(Lcom/google/android/gsf/gtalkservice/Endpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "connection"
    .parameter "room"
    .parameter "invitee"
    .parameter "reason"

    .prologue
    .line 47
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendGroupChatInvitationTo: room="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", invitee="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 51
    .local v2, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 54
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    .line 55
    .local v3, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;-><init>()V

    .line 56
    .local v1, invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setTo(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setReason(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/packet/MUCUser;->setInvite(Lorg/jivesoftware/smackx/packet/MUCUser$Invite;)V

    .line 60
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 63
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendGroupChatInvitationTo caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
