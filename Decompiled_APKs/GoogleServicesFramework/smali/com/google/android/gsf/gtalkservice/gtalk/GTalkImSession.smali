.class public Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;
.super Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
.source "GTalkImSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession$1;
    }
.end annotation


# instance fields
.field private mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

.field private mLock:Ljava/lang/Object;

.field private mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V
    .locals 1
    .parameter "connectionContext"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mLock:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private isLoginAttempted()Z
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    .line 189
    .local v0, available:Z
    if-eqz v0, :cond_0

    .line 190
    const/4 v1, 0x1

    monitor-exit p0

    .line 193
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 194
    .end local v0           #available:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 513
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkImSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private saveStatusList(Ljava/util/List;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/gtalkservice/Presence$Show;)V
    .locals 3
    .parameter
    .parameter "p"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gtalkservice/Presence;",
            "Lcom/google/android/gtalkservice/Presence$Show;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 167
    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 163
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 164
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, s:Ljava/lang/String;
    invoke-virtual {p2, p3, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 163
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private translateSharedPresence(Lcom/google/android/gtalkservice/Presence;)Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    .locals 2
    .parameter "p"

    .prologue
    .line 365
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lcom/google/android/gtalkservice/Presence;)V

    .line 366
    .local v0, ss:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setTo(Ljava/lang/String;)V

    .line 367
    return-object v0
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 472
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 473
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    return-void

    .line 474
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    :catch_0
    move-exception v1

    .line 475
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in addGroupChatInvitationListener"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    throw v1
.end method

.method public blockContact(Ljava/lang/String;)V
    .locals 4
    .parameter "contact"

    .prologue
    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v1

    .line 393
    .local v1, rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->blockContact(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return-void

    .line 394
    .end local v1           #rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    :catch_0
    move-exception v0

    .line 395
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in blockContact"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    throw v0
.end method

.method public clearContactFlags(Ljava/lang/String;)V
    .locals 4
    .parameter "contact"

    .prologue
    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v1

    .line 423
    .local v1, rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->clearContactFlags(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    return-void

    .line 424
    .end local v1           #rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    :catch_0
    move-exception v0

    .line 425
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in clearContactFlags"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    throw v0
.end method

.method public closeAllChatSessions()V
    .locals 11

    .prologue
    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 493
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->closeChatSessions(JJJJZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    return-void

    .line 494
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    :catch_0
    move-exception v10

    .line 495
    .local v10, ex:Ljava/lang/RuntimeException;
    const-string v1, "GTalkService"

    const-string v2, "exception in closeAllChatSessions"

    invoke-static {v1, v2, v10}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    throw v10
.end method

.method public createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "nickname"
    .parameter "contacts"

    .prologue
    .line 432
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 433
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    return-void

    .line 434
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    :catch_0
    move-exception v1

    .line 435
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in createGroupChatSession"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    throw v1
.end method

.method public declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "roomAddress"
    .parameter "inviter"

    .prologue
    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 453
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    return-void

    .line 454
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    :catch_0
    move-exception v1

    .line 455
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in declineGroupChatInvitation"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    throw v1
.end method

.method public editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactNickname(JLjava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, username:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 180
    const-string v1, "GTalkService"

    const-string v2, "GTalkImSession.getUsername got null"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    return-object v0
.end method

.method public hideContact(Ljava/lang/String;)V
    .locals 4
    .parameter "contact"

    .prologue
    .line 412
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v1

    .line 413
    .local v1, rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->hideContact(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    return-void

    .line 414
    .end local v1           #rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    :catch_0
    move-exception v0

    .line 415
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in hideContact"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    throw v0
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 48
    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 53
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 59
    :cond_1
    return-void
.end method

.method public inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "roomAddress"
    .parameter "contacts"

    .prologue
    .line 462
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 463
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    return-void

    .line 464
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    :catch_0
    move-exception v1

    .line 465
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in inviteContactsToGroupchat"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    throw v1
.end method

.method public joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "roomAddress"
    .parameter "nickname"
    .parameter "password"

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 443
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    return-void

    .line 444
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    :catch_0
    move-exception v1

    .line 445
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in joinGroupChatSession"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    throw v1
.end method

.method public login(Ljava/lang/String;Z)V
    .locals 10
    .parameter "username"
    .parameter "autoLogin"

    .prologue
    const/4 v9, 0x1

    .line 198
    const/4 v4, 0x0

    .line 201
    .local v4, notifyConnState:Z
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v6

    new-instance v7, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 206
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setLastLoginState(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v3

    .line 212
    .local v3, hostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    .line 213
    .local v1, connState:I
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    .line 215
    .local v0, connError:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "login: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v7

    invoke-static {v7, v8, p1}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hostConn.connState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hostConn.error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 221
    const/4 v5, 0x0

    .line 223
    .local v5, requestRoster:Z
    packed-switch v1, :pswitch_data_0

    .line 248
    :pswitch_0
    const/4 v5, 0x1

    .line 252
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v2

    .line 253
    .local v2, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendHeartbeatToServer()Z

    .line 260
    .end local v2           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->asyncGoOnlineForGoogleTalk()V

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->onLoggedIn()V

    .line 264
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v4, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnectionStateAndError(IIZ)V

    .line 272
    :cond_2
    :goto_1
    return-void

    .line 225
    :pswitch_1
    const/4 v4, 0x1

    .line 229
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->requestToRefreshAuthToken()V

    goto :goto_0

    .line 264
    .end local v0           #connError:I
    .end local v1           #connState:I
    .end local v3           #hostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    .end local v5           #requestRoster:Z
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 233
    .restart local v0       #connError:I
    .restart local v1       #connState:I
    .restart local v3       #hostConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    .restart local v5       #requestRoster:Z
    :pswitch_2
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V

    .line 235
    const/4 v4, 0x1

    .line 236
    const/4 v5, 0x1

    .line 237
    goto :goto_0

    .line 239
    :pswitch_3
    const/4 v0, 0x0

    .line 240
    const/4 v4, 0x1

    .line 241
    const/4 v5, 0x1

    .line 242
    goto :goto_0

    .line 244
    :pswitch_4
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "login: already ONLINE, no-op"

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 245
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public logout()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    new-instance v2, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setLastLoginState(Z)V

    .line 286
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->isLoginAttempted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const-string v1, "GTalkService"

    const-string v2, "[GTalkImSession] logout: not logged in"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    monitor-exit p0

    .line 311
    :goto_0
    return-void

    .line 290
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const-string v1, "GTalkService"

    invoke-static {v1, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "logout: send unavailable presence"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 293
    :cond_1
    new-instance v1, Lcom/google/android/gtalkservice/Presence;

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setAndSendPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, changed:Z
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 300
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnectionState(IZ)Z

    move-result v0

    .line 304
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->notifyConnectionListeners()V

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->onLoggedOut()V

    goto :goto_0

    .line 290
    .end local v0           #changed:Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 304
    .restart local v0       #changed:Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method protected onLoggedIn()V
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->onLoggedIn()V

    .line 276
    return-void
.end method

.method protected onLoggedOut()V
    .locals 5

    .prologue
    .line 314
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->onLoggedOut()V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    .line 319
    .local v0, hostContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->setRosterFetched(Z)V

    .line 323
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->onLoggedOut()V

    .line 326
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 329
    return-void
.end method

.method public pinContact(Ljava/lang/String;)V
    .locals 4
    .parameter "contact"

    .prologue
    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v1

    .line 403
    .local v1, rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->pinContact(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    return-void

    .line 404
    .end local v1           #rosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    :catch_0
    move-exception v0

    .line 405
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in pinContact"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    throw v0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 13
    .parameter "packet"

    .prologue
    const/4 v9, 0x1

    .line 62
    instance-of v10, p1, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    if-eqz v10, :cond_8

    move-object v4, p1

    .line 63
    check-cast v4, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    .line 66
    .local v4, sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    new-instance v2, Lcom/google/android/gtalkservice/Presence;

    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v12

    invoke-direct {v2, v9, v10, v11, v12}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    .line 69
    .local v2, presence:Lcom/google/android/gtalkservice/Presence;
    const/4 v3, 0x0

    .line 76
    .local v3, saveToDefault:Z
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusMax()I

    move-result v8

    .line 77
    .local v8, statusMax:I
    if-eqz v8, :cond_9

    .line 78
    invoke-virtual {v2, v8}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    .line 79
    const/4 v3, 0x1

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusListMax()I

    move-result v7

    .line 85
    .local v7, statusListMax:I
    if-eqz v7, :cond_a

    .line 86
    invoke-virtual {v2, v7}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    .line 91
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusListContentsMax()I

    move-result v6

    .line 92
    .local v6, statusListContentsMax:I
    if-eqz v6, :cond_b

    .line 93
    invoke-virtual {v2, v6}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    .line 98
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->hasStatusMinVersion()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusMinVersion()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_c

    :goto_3
    invoke-virtual {v2, v9}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    .line 105
    :cond_3
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getDefaultStatusList()Ljava/util/List;

    move-result-object v9

    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-direct {p0, v9, v2, v10}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->saveStatusList(Ljava/util/List;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 106
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getDndStatusList()Ljava/util/List;

    move-result-object v9

    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-direct {p0, v9, v2, v10}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->saveStatusList(Ljava/util/List;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getShow()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, show:Ljava/lang/String;
    if-eqz v5, :cond_e

    const-string v9, "dnd"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 111
    sget-object v9, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2, v9}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 116
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/android/gtalkservice/Presence;->setStatus(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->isInvisible()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 120
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v9, :cond_4

    .line 121
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 125
    :cond_4
    if-eqz v3, :cond_5

    .line 126
    new-instance v9, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v9, v2}, Lcom/google/android/gtalkservice/Presence;-><init>(Lcom/google/android/gtalkservice/Presence;)V

    iput-object v9, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 136
    .local v0, intendedPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 137
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 142
    .local v1, oldShow:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v9, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    if-eq v1, v9, :cond_6

    sget-object v9, Lcom/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v9, :cond_f

    .line 143
    :cond_6
    sget-boolean v9, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v9, :cond_7

    .line 144
    const-string v9, "User is IDLE. stash the new shared presence away for later"

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 146
    :cond_7
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setSharedPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 153
    .end local v0           #intendedPresence:Lcom/google/android/gtalkservice/Presence;
    .end local v1           #oldShow:Lcom/google/android/gtalkservice/Presence$Show;
    .end local v2           #presence:Lcom/google/android/gtalkservice/Presence;
    .end local v3           #saveToDefault:Z
    .end local v4           #sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    .end local v5           #show:Ljava/lang/String;
    .end local v6           #statusListContentsMax:I
    .end local v7           #statusListMax:I
    .end local v8           #statusMax:I
    :cond_8
    :goto_6
    return-void

    .line 80
    .restart local v2       #presence:Lcom/google/android/gtalkservice/Presence;
    .restart local v3       #saveToDefault:Z
    .restart local v4       #sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    .restart local v8       #statusMax:I
    :cond_9
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_0

    .line 81
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    goto/16 :goto_0

    .line 87
    .restart local v7       #statusListMax:I
    :cond_a
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_1

    .line 88
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->getStatusListMax()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    goto/16 :goto_1

    .line 94
    .restart local v6       #statusListContentsMax:I
    :cond_b
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_2

    .line 95
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    goto/16 :goto_2

    .line 99
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 101
    :cond_d
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v9, :cond_3

    .line 102
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    goto/16 :goto_4

    .line 113
    .restart local v5       #show:Ljava/lang/String;
    :cond_e
    sget-object v9, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2, v9}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    goto/16 :goto_5

    .line 148
    .restart local v0       #intendedPresence:Lcom/google/android/gtalkservice/Presence;
    .restart local v1       #oldShow:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_f
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifySelfPresenceChanged()Z

    goto :goto_6
.end method

.method public pruneOldChatSessions(JJJZ)V
    .locals 10
    .parameter "expire"
    .parameter "expireHard"
    .parameter "expireForChatsOnOtherClient"
    .parameter "closeChatIfTimeStampIsZero"

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 505
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->closeChatSessions(JJJJZ)V

    .line 510
    return-void
.end method

.method public removeContact(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->removeContact(JLjava/lang/String;)V

    .line 388
    return-void
.end method

.method public removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 483
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    return-void

    .line 484
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    :catch_0
    move-exception v1

    .line 485
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GTalkService"

    const-string v3, "exception in removeGroupChatInvitationListener"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    throw v1
.end method

.method protected translatePresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 4
    .parameter "presence"

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 338
    .local v0, p:Lorg/jivesoftware/smack/packet/Packet;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->translateSharedPresence(Lcom/google/android/gtalkservice/Presence;)Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    move-result-object v0

    .line 356
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->translateXmppPresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 360
    :cond_1
    return-object v0

    .line 342
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 344
    .local v1, show:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession$1;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 347
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->translateSharedPresence(Lcom/google/android/gtalkservice/Presence;)Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    move-result-object v0

    .line 348
    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
