.class public Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
.super Ljava/lang/Object;
.source "ChatMgr.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# static fields
.field static final CONSOLIDATION_KEY_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChatListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChatSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mGroupChatInvitationListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IGroupChatInvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupChatInvitationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IGroupChatInvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupChatInvitations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gtalkservice/GroupChatInvitation;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mPendingGroupChatConversions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingGroupChatRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mUseBareJidTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 679
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "consolidation_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->CONSOLIDATION_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z

    move-result v0

    return v0
.end method

.method private addChatSession(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 2
    .parameter "toAddress"
    .parameter "chatSession"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addGroupChatInvitation(Ljava/lang/String;Lcom/google/android/gtalkservice/GroupChatInvitation;)V
    .locals 2
    .parameter "room"
    .parameter "invitation"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addGroupChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 1
    .parameter "chatSession"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addChatSession(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 404
    return-void
.end method

.method private checkConvertExistingChatSession(Ljava/lang/String;)V
    .locals 3
    .parameter "room"

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getGroupChatInvitation(Ljava/lang/String;)Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v1

    .line 549
    .local v1, invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    if-nez v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, inviter:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    .line 555
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->prepareConvertToGroupChat(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    goto :goto_0
.end method

.method private createGroupChatRoomName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "private-chat-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@groupchat.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .locals 13
    .parameter "username"
    .parameter "room"
    .parameter "myNickname"
    .parameter "groupChatNickname"
    .parameter "password"
    .parameter "accountId"

    .prologue
    .line 386
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createGroupChatSession: username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", room="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", myNickname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", groupChatNickname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 391
    :cond_0
    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v6

    move-object v3, p0

    move-wide/from16 v7, p6

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v2, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->initialize(ZZ)V

    .line 397
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setGroupChatNickname(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addGroupChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 399
    return-object v2
.end method

.method private createGroupChatSessionWithRoom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "room"
    .parameter "nickname"
    .parameter "invitees"

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private doHandleInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 1126
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_allow_group_chat"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f080053

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, p2, v2}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->declineGroupChatInvitation(Lcom/google/android/gsf/gtalkservice/Endpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    const-string v0, "GTalkService"

    invoke-static {v0, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got muc invite from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", room="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 1146
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getGroupChatInvitation(Ljava/lang/String;)Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    monitor-enter v1

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1154
    monitor-exit v1

    goto :goto_0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    .line 1159
    if-nez v0, :cond_0

    .line 1165
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    .line 1166
    if-nez v0, :cond_4

    .line 1168
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    move-object v1, v0

    .line 1193
    :goto_1
    new-instance v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupContactId()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gtalkservice/GroupChatInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1196
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addGroupChatInvitation(Ljava/lang/String;Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    .line 1197
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    goto :goto_0

    .line 1178
    :cond_4
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1179
    const-string v1, "doHandleInvitation: convert to muc session"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 1181
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 1182
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->pickNicknameUsingConvention(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->convertToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 1187
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addGroupChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 1188
    if-eqz v1, :cond_6

    .line 1189
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .locals 1
    .parameter "room"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->internalGetChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 25
    .parameter "message"

    .prologue
    .line 686
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v18

    .line 687
    .local v18, from:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v19

    .line 689
    .local v19, packetId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    :cond_0
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleErrorMessage: from="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", has no packet id, bail"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 788
    :cond_1
    :goto_0
    return-void

    .line 694
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v17

    .line 695
    .local v17, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v11

    .line 696
    .local v11, code:I
    invoke-virtual/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 698
    .local v16, errMsg:Ljava/lang/String;
    const-string v2, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR Message: from="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", packetId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", errMsg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 703
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v10

    .line 704
    .local v10, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-nez v10, :cond_4

    .line 706
    const-string v2, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleErrorMessage: cannot find chat session for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_4
    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->clearConsolidation()V

    .line 718
    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 719
    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupContactId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v21

    .line 726
    .local v21, uri:Landroid/net/Uri;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packet_id=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 730
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOffTheRecord()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 731
    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 735
    .local v3, messagesTableUri:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->CONSOLIDATION_KEY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 740
    .local v9, c:Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 742
    .local v12, consolidationKey:J
    if-eqz v9, :cond_6

    .line 744
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 745
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 748
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_6
    const-wide/16 v23, 0x0

    cmp-long v2, v12, v23

    if-eqz v2, :cond_7

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "_id=\'%d\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v23, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v7, v23

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 759
    .local v15, deletedRowsShouldBeOne:I
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .local v14, cv:Landroid/content/ContentValues;
    const-string v2, "consolidation_key"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "%s=\'%d\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v23, 0x0

    const-string v24, "consolidation_key"

    aput-object v24, v7, v23

    const/16 v23, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v7, v23

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v14, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 765
    .local v20, updateCount:I
    const-string v2, "GTalkService"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleErrorMessage: consolidationKey="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", deletedRowsShouldBeOne is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; updateCount is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 772
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v15           #deletedRowsShouldBeOne:I
    .end local v20           #updateCount:I
    :cond_7
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 773
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "err_code"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v2, "err_msg"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 776
    .restart local v20       #updateCount:I
    if-nez v20, :cond_8

    .line 777
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "messagesByAcctAndContact"

    const-string v7, "otrMessagesByAcctAndContact"

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 781
    :cond_8
    if-nez v20, :cond_9

    .line 782
    const-string v2, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleErrorMessage: could not update message with packetId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    .end local v3           #messagesTableUri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #consolidationKey:J
    .end local v20           #updateCount:I
    .end local v21           #uri:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_a
    invoke-static/range {v18 .. v18}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 722
    .local v8, bareJid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v23

    move-wide/from16 v0, v23

    invoke-static {v0, v1, v8}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .restart local v21       #uri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 733
    .end local v8           #bareJid:Ljava/lang/String;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :cond_b
    sget-object v3, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    .restart local v3       #messagesTableUri:Landroid/net/Uri;
    goto/16 :goto_2

    .line 748
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #consolidationKey:J
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private handleGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 792
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 798
    .local v0, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 799
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupChatInvitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 803
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->doHandleInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v1, 0x1

    .line 809
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleGroupChatPresence(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1202
    const-string v0, "GTalkService"

    invoke-static {v0, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupChatPresence from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 1206
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1207
    if-gtz v0, :cond_1

    .line 1208
    const-string v0, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGroupChatPresence: invalid from address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1274
    :goto_0
    return v0

    .line 1212
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1213
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1214
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1216
    const/4 v5, 0x0

    .line 1218
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    monitor-enter v4

    .line 1219
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1220
    if-eqz v0, :cond_7

    .line 1223
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    move v0, v8

    .line 1225
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    if-eqz v0, :cond_5

    .line 1231
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    monitor-enter v1

    .line 1232
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .line 1233
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1235
    if-eqz v0, :cond_4

    .line 1236
    const-string v1, "GTalkService"

    invoke-static {v1, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1237
    const-string v1, "found pending, convert chat session to muc"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 1239
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 1240
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->convertToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 1243
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    monitor-enter v3

    .line 1244
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1247
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addGroupChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 1248
    if-eqz v1, :cond_3

    .line 1249
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_2
    move v0, v8

    .line 1262
    goto :goto_0

    .line 1225
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1233
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1245
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1252
    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v6

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    goto :goto_2

    .line 1265
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    .line 1267
    if-nez v0, :cond_6

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupChatPresence: drop stale presence, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1269
    goto/16 :goto_0

    .line 1272
    :cond_6
    invoke-virtual {v0, v3, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->groupChatParticipantPresenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    move v0, v8

    .line 1274
    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method private handlePresenceUpdate(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "from"
    .parameter "presence"

    .prologue
    .line 1278
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    .line 1279
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1284
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->handlePresenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0
.end method

.method private internalGetChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .locals 2
    .parameter "toAddr"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isGroupChat(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 821
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v1

    .line 822
    .local v1, messageType:Lorg/jivesoftware/smack/packet/Message$Type;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, from:Ljava/lang/String;
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->isGroupChat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 874
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 877
    .local v0, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1288
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method private notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;)V
    .locals 5
    .parameter "invitation"

    .prologue
    .line 1077
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$5;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 1085
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v1

    .line 1086
    .local v1, notifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 1087
    .local v0, gTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1092
    return-void
.end method

.method private notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1110
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    .line 1122
    :goto_0
    return v0

    .line 1113
    :catch_0
    move-exception v0

    .line 1116
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatMgr] notifyGroupChatInvitation caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", removing listener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->tryRemoveGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 1122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickNicknameUsingConvention(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 463
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 464
    .local v0, atSign:I
    if-ltz v0, :cond_0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    :cond_0
    return-object p1
.end method

.method private prepareConvertToGroupChat(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 2
    .parameter "room"
    .parameter "chatSession"

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare convert chat session(jid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to group chat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processIncomingMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 829
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v8

    .line 830
    .local v8, from:Ljava/lang/String;
    const/4 v10, 0x0

    .line 831
    .local v10, nickname:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->isGroupChat(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v9

    .line 833
    .local v9, groupChat:Z
    if-eqz v9, :cond_0

    .line 834
    const/16 v0, 0x2f

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 835
    .local v12, slash:I
    if-ltz v12, :cond_0

    .line 836
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 837
    invoke-virtual {v8, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 841
    .end local v12           #slash:I
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v7

    .line 842
    .local v7, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->extractBuddyUsername(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, buddyJid:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v11

    .line 846
    .local v11, session:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-nez v11, :cond_3

    .line 847
    if-eqz v9, :cond_2

    .line 848
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processIncomingMessage: cannot find group chat session for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->isGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v3

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createChatSession(Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v11

    .line 866
    :cond_3
    if-eqz v9, :cond_4

    .line 867
    invoke-virtual {v11, p1, v8, v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->onReceiveGroupMessage(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 869
    :cond_4
    invoke-virtual {v11, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->onReceiveMessage(Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0
.end method

.method private processPresence(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 590
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->isGroupChat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->handleGroupChatPresence(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)Z

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->handlePresenceUpdate(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0
.end method

.method private removeChatNotification(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 991
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChatNotification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    .line 993
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->removeChatNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 995
    return-void
.end method

.method private removeGroupChatInvitation(Ljava/lang/String;)V
    .locals 2
    .parameter "room"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    monitor-exit v1

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 4
    .parameter

    .prologue
    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1001
    monitor-exit v1

    .line 1005
    :goto_0
    return-void

    .line 1001
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRemoveChatListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryRemoveGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 4
    .parameter

    .prologue
    .line 1096
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1098
    monitor-exit v1

    .line 1102
    :goto_0
    return-void

    .line 1098
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGroupInvitationListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 13
    .parameter "listener"

    .prologue
    .line 1018
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1019
    :try_start_0
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    .line 1020
    .local v8, remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-interface {v8}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    if-ne v10, v12, :cond_0

    .line 1022
    monitor-exit v11

    .line 1059
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :cond_1
    :goto_0
    return-void

    .line 1026
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1031
    const/4 v7, 0x0

    .line 1032
    .local v7, oneInvitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    const/4 v5, 0x0

    .line 1034
    .local v5, invitationsCopy:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v11

    .line 1037
    :try_start_1
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v9

    .line 1039
    .local v9, size:I
    if-nez v9, :cond_3

    .line 1040
    monitor-exit v11

    goto :goto_0

    .line 1050
    .end local v9           #size:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1027
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #invitationsCopy:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    .end local v7           #oneInvitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    :catchall_1
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 1043
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #invitationsCopy:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    .restart local v7       #oneInvitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    .restart local v9       #size:I
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1045
    .local v2, c:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gtalkservice/GroupChatInvitation;>;"
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 1046
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-object v7, v0

    .line 1050
    :goto_1
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1052
    if-eqz v7, :cond_5

    .line 1053
    invoke-direct {p0, p1, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z

    goto :goto_0

    .line 1048
    :cond_4
    :try_start_4
    new-array v10, v9, [Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-interface {v2, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-object v5, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1055
    :cond_5
    move-object v1, v5

    .local v1, arr$:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_1

    aget-object v4, v1, v3

    .line 1056
    .local v4, invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    invoke-direct {p0, p1, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z

    .line 1055
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 881
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 883
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 885
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IChatListener;

    .line 886
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 887
    monitor-exit v4

    .line 893
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    monitor-exit v4

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public closeChatSessions(JJJJZ)V
    .locals 22
    .parameter "accountId"
    .parameter "expire"
    .parameter "expireHard"
    .parameter "expireForChatsOnOtherClient"
    .parameter "closeChatIfTimeStampIsZero"

    .prologue
    .line 257
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_1

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeChatSessions: prune chats, expire="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expireForChatsOnOtherClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 264
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gtalk_chat_expire_respect_unread_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    .line 268
    .local v13, respectUnreadFlag:Z
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v17, chatsToClose:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v4

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 271
    .local v19, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 272
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .line 274
    .local v15, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    invoke-virtual {v15}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_0

    .line 281
    const-wide/16 v5, 0x0

    cmp-long v3, p3, v5

    if-lez v3, :cond_2

    invoke-virtual {v15}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->hasChatListeners()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    const-string v3, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const-string v3, "do not prune active chat session"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    .end local v15           #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .end local v19           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 261
    .end local v13           #respectUnreadFlag:Z
    .end local v17           #chatsToClose:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeChatSessions: close all chats for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .restart local v13       #respectUnreadFlag:Z
    .restart local v15       #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .restart local v17       #chatsToClose:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v19       #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v3, p3, v5

    if-lez v3, :cond_4

    .line 305
    :try_start_1
    invoke-virtual {v15}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getLastMessageTimestamp()J

    move-result-wide v20

    .line 308
    .local v20, ts:J
    const-wide/16 v5, 0x0

    cmp-long v3, v20, v5

    if-gtz v3, :cond_3

    if-nez p9, :cond_4

    .line 310
    :cond_3
    invoke-virtual {v15}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isInitiatedByLocal()Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    cmp-long v3, v20, p5

    if-ltz v3, :cond_4

    .line 315
    invoke-virtual {v15}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isForOtherClient()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 318
    cmp-long v3, v20, p7

    if-gez v3, :cond_0

    .line 337
    .end local v20           #ts:J
    :cond_4
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    .restart local v20       #ts:J
    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v15}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->hasUnreadMessage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    :cond_6
    cmp-long v3, v20, p3

    if-ltz v3, :cond_4

    goto/16 :goto_1

    .line 339
    .end local v15           #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .end local v20           #ts:J
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .line 341
    .local v14, chat:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    invoke-virtual {v14}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->prepareToClose()V

    .line 342
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    goto :goto_2

    .line 344
    .end local v14           #chat:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    :cond_8
    const/16 v16, 0x0

    .line 345
    .local v16, chatsClosed:Z
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_b

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    invoke-static/range {v3 .. v13}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->pruneChats(Landroid/content/ContentResolver;JJJJZZ)I

    move-result v3

    if-lez v3, :cond_9

    .line 349
    const/16 v16, 0x1

    .line 357
    :cond_9
    :goto_3
    if-eqz v16, :cond_a

    .line 358
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyChatClosed(JLjava/lang/String;)V

    .line 360
    :cond_a
    return-void

    .line 352
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->clearAllChats(Landroid/content/ContentResolver;J)I

    move-result v3

    if-lez v3, :cond_9

    .line 353
    const/16 v16, 0x1

    goto :goto_3
.end method

.method convertToGroupChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "chatSession"
    .parameter "nickname"
    .parameter "invitees"

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createGroupChatRoomName()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, room:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToGroupChatSession nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->prepareConvertToGroupChat(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 428
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createGroupChatSessionWithRoom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public createChatSession(Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .locals 9
    .parameter "username"
    .parameter "contact"
    .parameter "accountId"
    .parameter "initiatedLocally"
    .parameter "asyncInit"

    .prologue
    .line 367
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v4

    move-object v1, p0

    move-wide v5, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;JLjava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    invoke-virtual {v0, p5, p6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->initialize(ZZ)V

    .line 376
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->addChatSession(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 377
    return-object v0
.end method

.method public createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "nickname"
    .parameter "invitees"

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createGroupChatRoomName()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, room:Ljava/lang/String;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->createGroupChatSessionWithRoom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 420
    return-object v0
.end method

.method public declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "room"
    .parameter "inviter"

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeGroupChatInvitation(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    .line 452
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .locals 1
    .parameter "jid"

    .prologue
    .line 381
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->internalGetChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method getGroupChatInvitation(Ljava/lang/String;)Lcom/google/android/gtalkservice/GroupChatInvitation;
    .locals 2
    .parameter "room"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    monitor-exit v1

    return-object v0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getServerClockSkew()J
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 173
    .local v0, xmppConn:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServerClockSkew()J

    move-result-wide v1

    .line 176
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getServerClockSkewKnown()Z
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 165
    .local v0, xmppConn:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServerClockSkewKnown()Z

    move-result v1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserBareJidTimeout()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mUseBareJidTimeoutMs:J

    return-wide v0
.end method

.method public init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "resolver"
    .parameter "mc"
    .parameter "handler"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 106
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    .line 107
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mHandler:Landroid/os/Handler;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->removeOldGroupchatsFromDb(Landroid/content/ContentResolver;J)V

    .line 111
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 118
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 120
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 122
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/BatchPresence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 124
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 127
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 145
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 148
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 150
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 152
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 154
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gtalk_use_barejid_timeout_ms"

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mUseBareJidTimeoutMs:J

    .line 161
    return-void
.end method

.method public inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "roomAddress"
    .parameter "contacts"

    .prologue
    .line 531
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 532
    .local v2, invitee:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, p1, v2, v5}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->sendGroupChatInvitationTo(Lcom/google/android/gsf/gtalkservice/Endpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    .end local v2           #invitee:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "room"
    .parameter "nickname"
    .parameter "password"

    .prologue
    .line 472
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 474
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->pickNicknameUsingConvention(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 480
    :cond_0
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "joinGroupChatSession: room="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nick="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 485
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v4

    .line 486
    .local v4, session:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-eqz v4, :cond_2

    .line 487
    invoke-virtual {v4, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setMyGroupChatNickname(Ljava/lang/String;)V

    .line 492
    :cond_2
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v7}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 494
    .local v2, joinPresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .local v5, toBuf:Ljava/lang/StringBuilder;
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, toStr:Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 501
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;-><init>()V

    .line 502
    .local v3, mucInitialPresence:Lorg/jivesoftware/smackx/packet/MUCInitialPresence;
    if-eqz p3, :cond_3

    .line 503
    invoke-virtual {v3, p3}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->setPassword(Ljava/lang/String;)V

    .line 507
    :cond_3
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 510
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 513
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v7

    if-nez v7, :cond_4

    .line 514
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :try_start_1
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    if-eqz p3, :cond_5

    .end local p3
    :goto_0
    invoke-interface {v7, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->checkConvertExistingChatSession(Ljava/lang/String;)V

    .line 522
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeGroupChatInvitation(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 528
    :goto_1
    return-void

    .line 518
    .restart local p3
    :cond_5
    :try_start_3
    const-string p3, ""

    goto :goto_0

    .line 519
    .end local p3
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v7, "GTalkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "joinGroupChatSession caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public notifyActiveChatSessionsOfChange()V
    .locals 7

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v6

    .line 203
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .local v4, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    move-object v2, v1

    .line 204
    .end local v1           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .local v2, chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .line 206
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->hasChatListeners()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    if-nez v2, :cond_2

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    .end local v2           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v1       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v2, v1

    .line 212
    .end local v1           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v2       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    goto :goto_0

    .line 213
    .end local v0           #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    if-eqz v2, :cond_1

    .line 216
    const-string v5, "notifyActiveChatSessionsOfChange"

    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .line 218
    .restart local v0       #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto :goto_3

    .line 213
    .end local v0           #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .end local v2           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v1       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :catchall_0
    move-exception v5

    :goto_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 221
    .end local v1           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v2       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v4       #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :cond_1
    return-void

    .line 213
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v1       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    goto :goto_4

    .end local v1           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v0       #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .restart local v2       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :cond_2
    move-object v1, v2

    .end local v2           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v1       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    goto :goto_1

    .end local v1           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v2       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    :cond_3
    move-object v1, v2

    .end local v2           #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    .restart local v1       #chatSessionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;>;"
    goto :goto_2
.end method

.method notifyChat(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "from"
    .parameter "message"
    .parameter "notify"

    .prologue
    .line 919
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$2;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v0

    .line 936
    .local v0, notified:Z
    return-void
.end method

.method notifyChatClosed(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "from"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$4;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$4;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 987
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeChatNotification(JLjava/lang/String;)V

    .line 988
    return-void
.end method

.method notifyChatRead(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "from"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$3;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr$3;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 961
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeChatNotification(JLjava/lang/String;)V

    .line 962
    return-void
.end method

.method public onLogout(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    const-wide/16 v3, 0x0

    .line 813
    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, v3

    move-wide v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->closeChatSessions(JJJJZ)V

    .line 814
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->clearAllChats(Landroid/content/ContentResolver;J)I

    .line 818
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 14
    .parameter "packet"

    .prologue
    .line 600
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v10

    .line 601
    .local v10, session:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->isLoggedIn()Z

    move-result v12

    if-nez v12, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    instance-of v12, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v12, :cond_2

    move-object v8, p1

    .line 607
    check-cast v8, Lorg/jivesoftware/smack/packet/Presence;

    .line 608
    .local v8, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->processPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0

    .line 609
    .end local v8           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_2
    instance-of v12, p1, Lorg/jivesoftware/smack/packet/BatchPresence;

    if-eqz v12, :cond_3

    move-object v0, p1

    .line 610
    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    .line 611
    .local v0, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPresenceStanzaList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smack/packet/Presence;

    .line 612
    .restart local v8       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->processPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_1

    .line 614
    .end local v0           #batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_3
    instance-of v12, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v12, :cond_7

    move-object v6, p1

    .line 616
    check-cast v6, Lorg/jivesoftware/smack/packet/Message;

    .line 617
    .local v6, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v7

    .line 622
    .local v7, messageType:Lorg/jivesoftware/smack/packet/Message$Type;
    sget-object v12, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v7, v12, :cond_4

    .line 623
    const-string v12, "don\'t handle messages of type=HEADLINE"

    invoke-direct {p0, v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_4
    sget-object v12, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v7, v12, :cond_5

    .line 628
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->handleErrorMessage(Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0

    .line 632
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->handleGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 637
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getServerAddress()Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, host:Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 642
    :cond_6
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->processIncomingMessage(Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0

    .line 644
    .end local v4           #host:Ljava/lang/String;
    .end local v6           #message:Lorg/jivesoftware/smack/packet/Message;
    .end local v7           #messageType:Lorg/jivesoftware/smack/packet/Message$Type;
    :cond_7
    instance-of v12, p1, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;

    if-eqz v12, :cond_a

    .line 645
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    .line 646
    .local v3, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v3, :cond_8

    .line 647
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doProcessPacket: received ChatClosed, error="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, p1

    .line 651
    check-cast v1, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;

    .line 652
    .local v1, chatClosed:Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;->getUser()Ljava/lang/String;

    move-result-object v11

    .line 654
    .local v11, user:Ljava/lang/String;
    sget-boolean v12, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doProcessPacket: got ChatClosed, user="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 655
    :cond_9
    invoke-virtual {p0, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v2

    .line 656
    .local v2, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-eqz v2, :cond_0

    .line 657
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->closeChat()V

    .line 658
    invoke-virtual {v2, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyChatClosed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 661
    .end local v1           #chatClosed:Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;
    .end local v2           #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .end local v3           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v11           #user:Ljava/lang/String;
    :cond_a
    instance-of v12, p1, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    if-eqz v12, :cond_0

    .line 662
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    .line 663
    .restart local v3       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v3, :cond_b

    .line 664
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doProcessPacket: received ChatRead, error="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object v9, p1

    .line 668
    check-cast v9, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    .line 669
    .local v9, read:Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;->getUser()Ljava/lang/String;

    move-result-object v11

    .line 671
    .restart local v11       #user:Ljava/lang/String;
    sget-boolean v12, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doProcessPacket: got ChatRead, user="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 672
    :cond_c
    invoke-virtual {p0, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v2

    .line 673
    .restart local v2       #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->handleChatRead()V

    goto/16 :goto_0
.end method

.method rejoinRoomsForGroupChats()V
    .locals 6

    .prologue
    .line 575
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "rejoinRoomsForGroupChats"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 576
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v3

    .line 577
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 578
    .local v1, keys:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .line 580
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupChatNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupChatPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    .end local v0           #chatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
    .end local v1           #keys:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #keys:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    return-void
.end method

.method removeChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, toAddress:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChatSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->log(Ljava/lang/String;)V

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 235
    const-string v1, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeChatSession: failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2
    monitor-exit v2

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1068
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    .line 1069
    .local v1, remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1070
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1074
    .end local v1           #remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :cond_1
    return-void
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 896
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 898
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 899
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IChatListener;

    .line 900
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 901
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 902
    monitor-exit v4

    .line 906
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 905
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
