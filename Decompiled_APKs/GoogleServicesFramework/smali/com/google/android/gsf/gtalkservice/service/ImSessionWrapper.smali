.class public Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;
.super Lcom/google/android/gtalkservice/IImSession$Stub;
.source "ImSessionWrapper.java"


# instance fields
.field mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    .line 43
    return-void
.end method


# virtual methods
.method public addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 91
    return-void
.end method

.method public addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 171
    return-void
.end method

.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 179
    return-void
.end method

.method public addRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 237
    return-void
.end method

.method public addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 187
    return-void
.end method

.method public addRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->addRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 225
    return-void
.end method

.method public approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public blockContact(Ljava/lang/String;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->blockContact(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public clearContactFlags(Ljava/lang/String;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->clearContactFlags(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public closeAllChatSessions()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->closeAllChatSessions()V

    .line 207
    return-void
.end method

.method public createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "to"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method public createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "nickname"
    .parameter "contacts"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "roomAddress"
    .parameter "inviter"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public declineSubscriptionRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->declineSubscriptionRequest(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "to"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    return-object v0
.end method

.method public getSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goOffRecordInRoom(Ljava/lang/String;Z)V
    .locals 1
    .parameter "room"
    .parameter "offRecordFlag"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 199
    return-void
.end method

.method public goOffRecordWithContacts(Ljava/util/List;Z)V
    .locals 1
    .parameter "contacts"
    .parameter "offRecordFlag"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->goOffRecordWithContact(Ljava/util/ArrayList;Z)V

    .line 195
    return-void
.end method

.method public hideContact(Ljava/lang/String;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->hideContact(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "roomJid"
    .parameter "contacts"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public isOffRecordWithContact(Ljava/lang/String;)Z
    .locals 1
    .parameter "contact"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->isOffRecordWithContact(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "roomAddress"
    .parameter "nickname"
    .parameter "password"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public login(Ljava/lang/String;Z)V
    .locals 5
    .parameter "username"
    .parameter "keepSignedIn"

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 67
    .local v1, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->login(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "GTalkService"

    const-string v4, "[ImSessionWrapper] login: caught "

    invoke-static {v3, v4, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 80
    .local v0, origId:J
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->logout()V

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    return-void
.end method

.method public pinContact(Ljava/lang/String;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->pinContact(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public pruneOldChatSessions(JJJZ)V
    .locals 8
    .parameter "expire"
    .parameter "expireHard"
    .parameter "expireForChatsOnOtherClient"
    .parameter "closeChatIfTimeStampIsZero"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->pruneOldChatSessions(JJJZ)V

    .line 217
    return-void
.end method

.method public queryJingleInfo()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->queryJingleInfo()V

    .line 245
    return-void
.end method

.method public removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 95
    return-void
.end method

.method public removeContact(Ljava/lang/String;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->removeContact(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 175
    return-void
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 183
    return-void
.end method

.method public removeRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->removeRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 241
    return-void
.end method

.method public removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 191
    return-void
.end method

.method public removeRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->removeRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 229
    return-void
.end method

.method public requestBatchedBuddyPresence()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->requestBatchedBuddyPresence()V

    .line 221
    return-void
.end method

.method public sendCallPerfStatsStanza(Ljava/lang/String;)V
    .locals 1
    .parameter "callPerfStanza"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->sendCallPerfStatsStanza(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public sendSessionStanza(Ljava/lang/String;)V
    .locals 1
    .parameter "stanza"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->sendSessionStanza(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->setAndSendPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 99
    return-void
.end method

.method public uploadAvatar(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "avatar"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->uploadAvatar(Landroid/graphics/Bitmap;)V

    .line 107
    return-void
.end method

.method public uploadAvatarFromDb()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->uploadAvatarFromDb()V

    .line 111
    return-void
.end method
