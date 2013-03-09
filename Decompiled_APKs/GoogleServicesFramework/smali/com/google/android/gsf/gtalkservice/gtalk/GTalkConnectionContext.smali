.class public Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
.super Ljava/lang/Object;
.source "GTalkConnectionContext.java"


# instance fields
.field private mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

.field private mConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

.field private mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field private mOtrMgr:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

.field private mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

.field private mRosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

.field private mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

.field private mVCardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

.field private mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)V
    .locals 1
    .parameter "service"
    .parameter "connection"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 50
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .line 52
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mRosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    .line 53
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    .line 54
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    .line 55
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mVCardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    .line 56
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mOtrMgr:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    .line 57
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    .line 58
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    .line 59
    return-void
.end method


# virtual methods
.method public getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method public getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    return-object v0
.end method

.method public getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    return-object v0
.end method

.method public getGtalkAccountId()J
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    return-object v0
.end method

.method public getOtrManager()Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mOtrMgr:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    return-object v0
.end method

.method public getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v0

    return-object v0
.end method

.method public getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    return-object v0
.end method

.method public getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mRosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    return-object v0
.end method

.method public getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method public getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    return-object v0
.end method

.method public getVCardManager()Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mVCardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    return-object v0
.end method

.method public getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    return-object v0
.end method

.method public init(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mRosterMgr:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    invoke-virtual {v1, v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mVCardMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mOtrMgr:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v1, v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V

    .line 71
    return-void
.end method
