.class public Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
.super Ljava/lang/Object;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;,
        Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;
    }
.end annotation


# static fields
.field static final CHATS_ID_PROJECTION:[Ljava/lang/String;

.field private static final EXISTING_CHAT_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_HISTORY_PROJECTION:[Ljava/lang/String;

.field static final UNSENT_COMPOSED_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mCachedStatusMessage:Ljava/lang/String;

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

.field private mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

.field private mChatSelectionArgs:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mForOtherClient:Z

.field private mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

.field private mGroupChat:Z

.field private mGroupChatNickname:Ljava/lang/String;

.field private mGroupChatPassword:Ljava/lang/String;

.field private mGroupContactId:J

.field private mGroupchatParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

.field private mInitialized:Z

.field private mInitiatedbyLocal:Z

.field private mLastChatReceivedTsMs:J

.field private mLastMessageTimestamp:J

.field private mLastUnreadMessage:Ljava/lang/String;

.field private mMyGroupChatNickname:Ljava/lang/String;

.field private mOffTheRecordValue:I

.field private mOtrCursor:Landroid/database/Cursor;

.field private mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;

.field private mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStatusMessageReadFromDb:Z

.field private mTo:Ljava/lang/String;

.field private mToBareJid:Ljava/lang/String;

.field private mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "last_unread_message"

    aput-object v1, v0, v3

    const-string v1, "local"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "is_active"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->EXISTING_CHAT_PROJECTION:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->MESSAGE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "unsent_composed_message"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->UNSENT_COMPOSED_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->CHATS_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "chatMgr"
    .parameter "context"
    .parameter "resolver"
    .parameter "connection"
    .parameter "accountId"
    .parameter "username"
    .parameter "to"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatSelectionArgs:[Ljava/lang/String;

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    .line 1024
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    .line 1025
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    .line 180
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create ChatSession for contact "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " acct "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    .line 185
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mContext:Landroid/content/Context;

    .line 186
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    .line 187
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .line 188
    iput-wide p5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    .line 189
    iput-object p7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mUsername:Ljava/lang/String;

    .line 190
    iput-object p8, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    .line 191
    invoke-static {p8}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "chatMgr"
    .parameter "context"
    .parameter "resolver"
    .parameter "connection"
    .parameter "accountId"
    .parameter "username"
    .parameter "room"
    .parameter "myGroupChatNickname"
    .parameter "password"

    .prologue
    .line 203
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;JLjava/lang/String;Ljava/lang/String;)V

    .line 205
    iput-object p9, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    .line 206
    invoke-virtual {p0, p9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setGroupChatNickname(Ljava/lang/String;)V

    .line 207
    iput-object p10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatPassword:Ljava/lang/String;

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setIsGroupChat(Z)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;JLjava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addChatToDatabase(JLjava/lang/String;Ljava/lang/String;ZZJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyConversionToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyConvertedToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyWillConvertToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyParticipantPresence(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->queryOtrCursor()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->checkInitialOtrStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getContactBareAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->EXISTING_CHAT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mInitiatedbyLocal:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->logEmptyCursor(Ljava/lang/String;)V

    return-void
.end method

.method private addChatToDatabase(JLjava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1876
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1877
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChatToDatabase: bad contactId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", groupChat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :goto_0
    return-void

    .line 1882
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1883
    const-string v0, "contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1884
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addChatToDatabase(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZZZJ)V

    goto :goto_0
.end method

.method private addChatToDatabase(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZZZJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1913
    iput-boolean p6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mForOtherClient:Z

    .line 1915
    const-string v1, "otherClient"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1916
    const-string v3, "local"

    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mInitiatedbyLocal:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1917
    const-string v1, "jid_resource"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v1, "groupchat"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1919
    const-string v1, "is_active"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1920
    const-string v1, "account_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1925
    monitor-enter p0

    .line 1929
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastMessageTimestamp:J

    .line 1931
    const-string v1, "last_message_date"

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastMessageTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1932
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    if-nez p4, :cond_1

    .line 1935
    if-eqz p6, :cond_2

    .line 1940
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1941
    const-string v1, "last_unread_message"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    :goto_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1948
    return-void

    .line 1916
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1932
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1943
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1944
    const-string v1, "last_unread_message"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method

.method private addChatToDatabase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1894
    const-string v1, "GTalkService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChatToDatabase: insert new chat for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forOtherClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1899
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1900
    const-string v1, "username"

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v1, "account"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1902
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addChatToDatabase(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZZZJ)V

    .line 1904
    return-void
.end method

.method private addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1750
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1751
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addGroupMessageToDb: invalid group id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1755
    const-string v0, "nickname"

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v0, "body"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v0, "type"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1758
    const-string v0, "is_muc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v0, p0

    move-wide v2, p4

    move-wide v4, p6

    move v6, p8

    .line 1760
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addTimeStamp(Landroid/content/ContentValues;JJI)V

    .line 1762
    if-eqz p2, :cond_2

    .line 1763
    const-string v0, "packet_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, p11, v2

    if-eqz v0, :cond_3

    .line 1767
    const-string v0, "consolidation_key"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1777
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOffTheRecord()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOtrMessageType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1778
    :cond_4
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-static {v2, v3}, Lcom/google/android/gsf/TalkContract$Messages;->getOtrMessagesContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v0

    .line 1783
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1780
    :cond_5
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-static {v2, v3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized addGroupMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/net/Uri;
    .locals 42
    .parameter "msg"
    .parameter "contact"
    .parameter "nickname"
    .parameter "outgoing"
    .parameter "sending"

    .prologue
    .line 1622
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v11

    .line 1624
    .local v11, body:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1625
    const/16 v32, 0x0

    .line 1722
    :goto_0
    monitor-exit p0

    return-object v32

    .line 1628
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 1629
    .local v41, room:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v17

    .line 1630
    .local v17, accountId:J
    if-eqz p4, :cond_1

    const/16 v16, 0x0

    .line 1632
    .local v16, messageType:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v12

    .line 1635
    .local v12, realDate:J
    const-wide/16 v8, 0x0

    cmp-long v4, v12, v8

    if-nez v4, :cond_2

    .line 1636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v6, v12

    .line 1641
    .local v6, date:J
    :goto_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    .local v5, consolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    .line 1647
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->checkMatch(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;JLjava/lang/String;Z)Z

    move-result v21

    .line 1649
    .local v21, match:Z
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v19, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-wide v14, v6

    invoke-direct/range {v8 .. v20}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;

    move-result-object v32

    .line 1659
    .local v32, retVal:Landroid/net/Uri;
    if-nez v32, :cond_4

    .line 1660
    const/16 v32, 0x0

    goto :goto_0

    .line 1630
    .end local v5           #consolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    .end local v6           #date:J
    .end local v12           #realDate:J
    .end local v16           #messageType:I
    .end local v21           #match:Z
    .end local v32           #retVal:Landroid/net/Uri;
    :cond_1
    const/16 v16, 0x1

    goto :goto_1

    .line 1638
    .restart local v12       #realDate:J
    .restart local v16       #messageType:I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->modifyTimeStampIfNecessary(J)J

    move-result-wide v6

    .restart local v6       #date:J
    goto :goto_2

    .line 1641
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    goto :goto_3

    .line 1663
    .restart local v5       #consolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    .restart local v21       #match:Z
    .restart local v32       #retVal:Landroid/net/Uri;
    :cond_4
    const/16 v33, 0x0

    .line 1664
    .local v33, previous:Landroid/net/Uri;
    if-eqz p4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    move-object/from16 v36, v0

    .line 1666
    .local v36, otherConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    :goto_4
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    :try_start_2
    iget-wide v0, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    move-wide/from16 v39, v0

    .line 1671
    .local v39, prevMeTime:J
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    move-wide/from16 v37, v0

    .line 1673
    .local v37, otherTime:J
    if-eqz v21, :cond_5

    .line 1674
    cmp-long v4, v39, v37

    if-lez v4, :cond_7

    iget-object v4, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    if-eqz v4, :cond_7

    const/16 v21, 0x1

    .line 1694
    :cond_5
    :goto_5
    iget-object v0, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    .line 1695
    move-object/from16 v0, v32

    iput-object v0, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1696
    iput-wide v6, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    .line 1697
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousGroupchatNickname:Ljava/lang/String;

    .line 1698
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1704
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->updateGroupChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1706
    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v22, p3

    move-object/from16 v24, v11

    move/from16 v25, p4

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    move-wide/from16 v30, v17

    move/from16 v34, p5

    invoke-direct/range {v19 .. v35}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->consolidate(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLandroid/net/Uri;Landroid/net/Uri;ZLjava/lang/String;)V

    .line 1721
    move-object/from16 v0, v32

    iput-object v0, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1622
    .end local v5           #consolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    .end local v6           #date:J
    .end local v11           #body:Ljava/lang/String;
    .end local v12           #realDate:J
    .end local v16           #messageType:I
    .end local v17           #accountId:J
    .end local v21           #match:Z
    .end local v32           #retVal:Landroid/net/Uri;
    .end local v33           #previous:Landroid/net/Uri;
    .end local v36           #otherConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    .end local v37           #otherTime:J
    .end local v39           #prevMeTime:J
    .end local v41           #room:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1664
    .restart local v5       #consolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    .restart local v6       #date:J
    .restart local v11       #body:Ljava/lang/String;
    .restart local v12       #realDate:J
    .restart local v16       #messageType:I
    .restart local v17       #accountId:J
    .restart local v21       #match:Z
    .restart local v32       #retVal:Landroid/net/Uri;
    .restart local v33       #previous:Landroid/net/Uri;
    .restart local v41       #room:Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    move-object/from16 v36, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1674
    .restart local v36       #otherConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    .restart local v37       #otherTime:J
    .restart local v39       #prevMeTime:J
    :cond_7
    const/16 v21, 0x0

    goto :goto_5

    .line 1698
    .end local v37           #otherTime:J
    .end local v39           #prevMeTime:J
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "nickname"
    .parameter "body"
    .parameter "messageType"

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1727
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1731
    .local v4, now:J
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v6, v4

    move/from16 v8, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;

    .line 1740
    return-void
.end method

.method private declared-synchronized addMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;ZZ)Landroid/net/Uri;
    .locals 33
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1256
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 1257
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v7

    .line 1259
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    const/16 v29, 0x0

    .line 1363
    :goto_0
    monitor-exit p0

    return-object v29

    .line 1263
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v14

    .line 1264
    if-eqz p3, :cond_2

    const/4 v9, 0x0

    .line 1267
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v10

    .line 1270
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-nez v1, :cond_3

    .line 1271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v10, v3

    .line 1276
    :goto_2
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    .line 1282
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->checkMatch(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;JLjava/lang/String;Z)Z

    move-result v1

    .line 1284
    const-string v5, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMessageToDatabase: call doXXX w/ bareJid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", consolidationKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1293
    :cond_1
    const-wide/16 v16, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-wide v12, v3

    move/from16 v18, p4

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJZ)Landroid/net/Uri;

    move-result-object v29

    .line 1304
    if-nez v29, :cond_5

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMessageToDatabase: failed, probably a dup! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1306
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 1264
    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1273
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->modifyTimeStampIfNecessary(J)J

    move-result-wide v3

    goto/16 :goto_2

    .line 1276
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    goto/16 :goto_3

    .line 1310
    :cond_5
    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    .line 1313
    :goto_4
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    :try_start_2
    iget-wide v6, v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    .line 1318
    iget-wide v12, v5, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    .line 1320
    if-eqz v1, :cond_8

    .line 1321
    cmp-long v1, v6, v12

    if-lez v1, :cond_7

    iget-object v1, v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_5
    move/from16 v18, v1

    .line 1343
    :goto_6
    iget-object v0, v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    .line 1344
    move-object/from16 v0, v29

    iput-object v0, v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1345
    iput-wide v3, v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    .line 1346
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1348
    const/16 v19, 0x0

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v16, p0

    move-object/from16 v17, v2

    move-object/from16 v20, p2

    move-object/from16 v21, v8

    move/from16 v22, p3

    move-wide/from16 v23, v10

    move-wide/from16 v25, v3

    move-wide/from16 v27, v14

    move/from16 v31, p4

    invoke-direct/range {v16 .. v32}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->consolidate(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLandroid/net/Uri;Landroid/net/Uri;ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1256
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1310
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1321
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 1346
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    move/from16 v18, v1

    goto :goto_6
.end method

.method private addMessageToDatabase(Ljava/lang/String;I)V
    .locals 14
    .parameter "body"
    .parameter "messageType"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1491
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1495
    .local v5, now:J
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v3, p1

    move/from16 v4, p2

    move-wide v7, v5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJZ)Landroid/net/Uri;

    .line 1505
    return-void
.end method

.method private addParticipant(Ljava/lang/String;)Z
    .locals 6
    .parameter "nickname"

    .prologue
    const/4 v4, 0x1

    .line 604
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->insertGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z

    move-result v0

    .line 605
    .local v0, added:Z
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyParticipantPresence(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 606
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " joined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->updateGroupChatDisplayName()V

    .line 610
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 611
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    const/4 v5, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->setPresence(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V

    .line 613
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->notifyPresenceChanged()V

    .line 615
    :cond_1
    return v0
.end method

.method private addTimeStamp(Landroid/content/ContentValues;JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1557
    const-string v0, "real_date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1558
    const-string v0, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1562
    if-ne p6, v2, :cond_0

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 1563
    const-string v0, "show_ts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1565
    :cond_0
    return-void
.end method

.method private checkInitialOtrStatus()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->MESSAGE_HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 301
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "checkInitialOtrStatus: not empty"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "checkInitialOtrStatus: add OTR status"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addOffTheRecordStatusChange()V

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private checkMatch(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;JLjava/lang/String;Z)Z
    .locals 7
    .parameter "consolidation"
    .parameter "timestamp"
    .parameter "groupChatNickName"
    .parameter "sending"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    .line 1046
    iget-object v1, p1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1048
    iget-wide v1, p1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    sub-long v1, p2, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 1050
    iput-wide v5, p1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 1055
    :cond_1
    if-eqz p4, :cond_2

    .line 1056
    iget-object v1, p1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousGroupchatNickname:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1058
    iput-wide v5, p1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    goto :goto_0

    .line 1063
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private closeOtrCursor()V
    .locals 2

    .prologue
    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;

    .line 364
    :cond_0
    monitor-exit p0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private consolidate(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLandroid/net/Uri;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1104
    if-eqz p2, :cond_d

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-CONSOLIDATED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 1109
    const-string v2, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    .line 1112
    if-eqz p6, :cond_1

    const/4 v10, 0x0

    .line 1115
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    if-nez v2, :cond_8

    .line 1117
    const/16 v20, 0x0

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1125
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    const-wide/16 v2, 0x1

    add-long v6, p7, v2

    const-wide/16 v2, 0x1

    add-long v8, p9, v2

    const-wide/16 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-wide/from16 v11, p11

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;

    move-result-object v2

    .line 1146
    :goto_1
    if-nez v2, :cond_3

    .line 1240
    :cond_0
    :goto_2
    return-void

    .line 1112
    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    .line 1135
    :cond_2
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    const-wide/16 v2, 0x1

    add-long v11, p7, v2

    const-wide/16 v2, 0x1

    add-long v13, p9, v2

    const-wide/16 v17, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-wide/from16 v15, p11

    move/from16 v19, p15

    invoke-direct/range {v6 .. v19}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJZ)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1152
    :cond_3
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1154
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    .line 1157
    const-string v2, "GTalkService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConsolidation: match, add 1st consolidation row, key= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1163
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1164
    const-string v3, "consolidation_key"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1167
    if-eqz p13, :cond_5

    if-eqz p14, :cond_5

    .line 1168
    invoke-virtual/range {p13 .. p13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 1169
    invoke-virtual/range {p14 .. p14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1170
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getUriSansLeaf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1172
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "(_id==? OR _id==?)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v5, v2, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1176
    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    .line 1177
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected 2 from update, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    move/from16 v2, v20

    .line 1226
    :cond_6
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v21

    .line 1227
    const-string v5, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "consolidate: url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_c

    const-string v2, "new"

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; took "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms to complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1178
    :cond_7
    const-string v2, "GTalkService"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConsolidation: update msgs id1="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " & id2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w/ consolidate_key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1185
    :cond_8
    const/4 v2, 0x1

    .line 1187
    const-string v4, "GTalkService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConsolidation: match, update consolidation row for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1192
    :cond_9
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1193
    const-string v4, "body"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    if-eqz p15, :cond_a

    if-eqz v3, :cond_a

    .line 1195
    const-string v4, "send_status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1197
    const-string v4, "packet_id"

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_a
    const-wide/16 v3, 0x1

    add-long v6, p7, v3

    const-wide/16 v3, 0x1

    add-long v8, p9, v3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addTimeStamp(Landroid/content/ContentValues;JJI)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1207
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1208
    const-string v4, "consolidation_key"

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1211
    invoke-virtual/range {p13 .. p13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getUriSansLeaf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1213
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "(_id==?)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v6, v5, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1217
    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    .line 1218
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected 1 from update, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1219
    :cond_b
    const-string v3, "GTalkService"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConsolidation: update msgs id1="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w/ consolidate_key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1228
    :cond_c
    const-string v2, "existing"

    goto/16 :goto_5

    .line 1233
    :cond_d
    const-string v2, "GTalkService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1234
    const-string v2, "handleConsolidation: reset consolidation url and key"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1236
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1237
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    .line 1238
    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    goto/16 :goto_2
.end method

.method private createGroupChatInDatabase(Ljava/lang/String;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 1982
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupChatDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 1984
    const-string v0, "GTalkService"

    invoke-static {v0, v10}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createGroupChatInDatabase for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1989
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x4

    move-object v5, p1

    invoke-static/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->addContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    .line 2001
    if-eqz v0, :cond_2

    .line 2002
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    .line 2003
    const-string v0, "GTalkService"

    invoke-static {v0, v10}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createGroupChatInDb: added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to contacts, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2007
    :cond_1
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v10

    move-object v3, p0

    move-object v6, v12

    move-object v7, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addChatToDatabase(JLjava/lang/String;Ljava/lang/String;ZZJ)V

    .line 2013
    :goto_0
    return-void

    .line 2010
    :cond_2
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### createGroupChatInDatabase: add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to contacts table failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private debugMessageTimeStamp(JJJ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1607
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1608
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1610
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1611
    invoke-virtual {v1, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 1613
    const-string v2, "debugMessageTimeStamp:"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  clockSkew threshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, p5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  message date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%H:%M:%S"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  now: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1617
    return-void
.end method

.method private doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJZ)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1510
    const-string v2, "DEBUG_CHAT_MSG"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1511
    const-string v2, "doAddMessageToDatabase:"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   to= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   date= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", realDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   body= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   packetId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1519
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1520
    const-string v2, "body"

    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const-string v2, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1523
    const-wide/16 v4, 0x0

    cmp-long v2, p11, v4

    if-eqz v2, :cond_1

    .line 1524
    const-string v2, "consolidation_key"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    move-object v2, p0

    move-wide v4, p5

    move-wide/from16 v6, p7

    move v8, p4

    .line 1527
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addTimeStamp(Landroid/content/ContentValues;JJI)V

    .line 1529
    if-eqz p2, :cond_2

    .line 1530
    const-string v2, "packet_id"

    invoke-virtual {v3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_2
    if-nez p4, :cond_3

    if-eqz p13, :cond_3

    .line 1534
    const-string v2, "send_status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOffTheRecord()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOtrMessageType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1545
    :cond_4
    move-wide/from16 v0, p9

    invoke-static {v0, v1, p1}, Lcom/google/android/gsf/TalkContract$Messages;->getOtrMessagesContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1550
    :goto_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 1547
    :cond_5
    move-wide/from16 v0, p9

    invoke-static {v0, v1, p1}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private fixMucUnderscore(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "nickname"

    .prologue
    const/16 v3, 0x40

    const/4 v2, -0x1

    .line 2048
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2049
    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2050
    .local v0, underscore:I
    if-le v0, v2, :cond_0

    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2055
    .end local v0           #underscore:I
    :cond_0
    return-object p1
.end method

.method private getChatUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "contact"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v3

    invoke-static {v2, p1, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 470
    .local v0, pid:J
    sget-object v2, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private getContactBareAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGroupChatDisplayName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 647
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 650
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 651
    .local v4, name:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, shortName:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    if-lez v0, :cond_0

    .line 654
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 657
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 659
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #shortName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nickname"

    .prologue
    .line 921
    if-nez p1, :cond_0

    .line 922
    const/4 v1, 0x0

    .line 934
    :goto_0
    return-object v1

    .line 925
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 926
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 927
    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 930
    :cond_1
    if-ltz v0, :cond_2

    .line 931
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 934
    goto :goto_0
.end method

.method private getUriSansLeaf(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter "u"

    .prologue
    .line 1070
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, currentUriString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, leaf:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, baseUri:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method private handleOffTheRecordExtension(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)V
    .locals 6
    .parameter "message"
    .parameter "from"

    .prologue
    const/4 v3, 0x0

    .line 970
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->hasNoSave()Z

    move-result v4

    if-nez v4, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getNoSave()Z

    move-result v1

    .line 975
    .local v1, otrEnabled:Z
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOffTheRecord()Z

    move-result v0

    .line 977
    .local v0, oldOtrEnabled:Z
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 978
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOffTheRecordExtension: new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 981
    :cond_2
    if-eq v1, v0, :cond_0

    .line 985
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 987
    .local v2, otrValue:I
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setOffTheRecordValue(I)V

    .line 988
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addOffTheRecordStatusChange()V

    .line 990
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

    aput-object p2, v4, v3

    .line 991
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "username=?"

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #otrValue:I
    :cond_3
    move v2, v3

    .line 985
    goto :goto_1
.end method

.method private isOtrMessageType(I)Z
    .locals 1
    .parameter "messageType"

    .prologue
    .line 1787
    packed-switch p1, :pswitch_data_0

    .line 1795
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1792
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1787
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private leaveGroupChat()V
    .locals 5

    .prologue
    .line 824
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leave muc for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 828
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 829
    .local v1, leavePresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 832
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveGroupChat caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadStatusMessageFromDatabase()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2326
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getStatusMessage(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    .line 2328
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2329
    const-string v0, "GTalkService"

    invoke-static {v0, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    const-string v0, "load status message got empty, getNewestStatusFromHistory"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2332
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getNewestStatusFromHistory(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    .line 2337
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    .line 2341
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mStatusMessageReadFromDb:Z

    .line 2342
    const-string v0, "GTalkService"

    invoke-static {v0, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadStatusMessageFromDatabase: mCachedStatusMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2345
    :cond_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2536
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2540
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    return-void
.end method

.method private messageTargetedForAnotherClient(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2177
    :cond_0
    :goto_0
    return v0

    .line 2162
    :cond_1
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2169
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getJidResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2173
    const-string v0, "GTalkService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageTargetedForAnotherClient: true, toAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2177
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private modifyTimeStampIfNecessary(J)J
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1570
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getServerClockSkewKnown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getServerClockSkew()J

    move-result-wide v0

    .line 1575
    const-string v2, "gtalk_debug_message_ts"

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyTimeStampIfNecessary: server clock skew is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1578
    :cond_0
    add-long/2addr p1, v0

    .line 1603
    :cond_1
    :goto_0
    return-wide p1

    .line 1587
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getClockSkewThresholdMs()J

    move-result-wide v5

    .line 1589
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    sub-long v0, v3, v5

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 1590
    const-string v0, "gtalk_debug_message_ts"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1591
    const-string v0, "modifyTimeStampIfNecessary: use server assigned message time"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    .line 1592
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->debugMessageTimeStamp(JJJ)V

    goto :goto_0

    .line 1595
    :cond_3
    const-string v0, "gtalk_debug_message_ts"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1596
    const-string v0, "modifyTimeStampIfNecessary: set message\'s ts to \'now\'"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    .line 1597
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->debugMessageTimeStamp(JJJ)V

    :cond_4
    move-wide p1, v3

    .line 1599
    goto :goto_0
.end method

.method private notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2203
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v2, v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$7;

    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$7;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v11

    .line 2221
    const-string v2, "GTalkService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChat for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", useLightweightNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", # chat session listeners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2226
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyChat(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2228
    if-eqz p7, :cond_1

    .line 2229
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v2

    .line 2233
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2234
    invoke-static/range {p2 .. p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2237
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getUsername()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v9, p5

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    .line 2244
    :cond_1
    return-void

    :cond_2
    move-object/from16 v4, p3

    goto :goto_0
.end method

.method private notifyConversionToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "oldJid"
    .parameter "room"
    .parameter "groupId"

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 2431
    return-void
.end method

.method private notifyConvertedToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2448
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/google/android/gtalkservice/IChatListener;->convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2457
    :goto_0
    return-void

    .line 2449
    :catch_0
    move-exception v0

    .line 2450
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] notifyConvertedToGroupChat caught "

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

    .line 2453
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2454
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2455
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyParticipantPresence(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2488
    if-eqz p4, :cond_0

    .line 2489
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/google/android/gtalkservice/IChatListener;->participantJoined(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    :goto_0
    return-void

    .line 2491
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/google/android/gtalkservice/IChatListener;->participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2493
    :catch_0
    move-exception v0

    .line 2494
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] notifyParticipantPresence caught "

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

    .line 2497
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2498
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2499
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyParticipantPresence(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "room"
    .parameter "nickname"
    .parameter "joined"

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 2483
    return-void
.end method

.method private notifyWillConvertToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2462
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/google/android/gtalkservice/IChatListener;->willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2471
    :goto_0
    return-void

    .line 2463
    :catch_0
    move-exception v0

    .line 2464
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] notifyConvertedToGroupChat caught "

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

    .line 2467
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2468
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2469
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyWillConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "oldJid"
    .parameter "room"
    .parameter "groupId"

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$12;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 2443
    return-void
.end method

.method private postMissedCallNotification(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$5;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$5;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v9

    .line 1458
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    .line 1461
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1462
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1466
    :goto_0
    if-eqz p4, :cond_1

    .line 1467
    if-eqz p3, :cond_0

    .line 1468
    const v1, 0x7f08005f

    .line 1480
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1481
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getUsername()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v10

    const/4 v11, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    .line 1487
    return-void

    .line 1470
    :cond_0
    const v1, 0x7f080060

    goto :goto_1

    .line 1473
    :cond_1
    if-eqz p3, :cond_2

    .line 1474
    const v1, 0x7f08005d

    goto :goto_1

    .line 1476
    :cond_2
    const v1, 0x7f08005e

    goto :goto_1

    :cond_3
    move-object v2, p2

    goto :goto_0
.end method

.method private queryOtrCursor()V
    .locals 4

    .prologue
    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->closeOtrCursor()V

    .line 319
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getOffTheRecordCursor(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    .line 320
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;

    .line 322
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 323
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->updateOffTheRecordFromCursor()V

    .line 325
    :cond_0
    monitor-exit p0

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeParticipant(Ljava/lang/String;)Z
    .locals 6
    .parameter "nickname"

    .prologue
    const/4 v5, 0x0

    .line 619
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->deleteGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z

    move-result v0

    .line 620
    .local v0, removed:Z
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyParticipantPresence(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 621
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " left"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->updateGroupChatDisplayName()V

    .line 625
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->setPresence(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V

    .line 628
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->notifyPresenceChanged()V

    .line 630
    :cond_1
    return v0
.end method

.method private saveUnsentComposedMessageInternal(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1831
    :cond_0
    :goto_0
    return-void

    .line 1807
    :cond_1
    const-string v1, "contact_id in (select _id from contacts where account=? AND username=?)"

    .line 1809
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 1810
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1811
    const-string v4, "unsent_composed_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 1820
    if-eqz p1, :cond_0

    .line 1822
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1823
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-static {v2, v0, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1825
    const-string v0, "contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1826
    const-string v0, "jid_resource"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v0, "groupchat"

    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1828
    const-string v0, "last_message_date"

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1829
    const-string v0, "account_id"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1830
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private sendChatRead(Ljava/lang/String;)V
    .locals 5
    .parameter "contact"

    .prologue
    .line 804
    new-instance v1, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    invoke-direct {v1, p1}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;-><init>(Ljava/lang/String;)V

    .line 805
    .local v1, readPacket:Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;->setTo(Ljava/lang/String;)V

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChatRead caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setIsGroupChat(Z)V
    .locals 8
    .parameter "isGroupChat"

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eq v0, p1, :cond_0

    .line 427
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    .line 428
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->createGroupChatInDatabase(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 438
    :cond_0
    return-void
.end method

.method private setOffTheRecordValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOffTheRecordValue:I

    .line 353
    monitor-exit p0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUnreadMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastUnreadMessage:Ljava/lang/String;

    .line 418
    return-void
.end method

.method private tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 4
    .parameter

    .prologue
    .line 2413
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2414
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2415
    monitor-exit v1

    .line 2419
    :goto_0
    return-void

    .line 2415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
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

.method private updateChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1955
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1957
    const-string v2, "jid_resource"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string v2, "groupchat"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1959
    const-string v2, "last_message_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastMessageTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1962
    if-nez p4, :cond_0

    .line 1963
    invoke-direct {p0, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1964
    const-string v0, "last_unread_message"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatSelectionArgs:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1971
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id in (select _id from contacts where (username LIKE ?))"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1973
    return-void

    .line 1966
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1967
    const-string v2, "last_unread_message"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGroupChatDisplayName()V
    .locals 10

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupChatDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 2017
    .local v6, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)I

    .line 2027
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 2028
    return-void
.end method

.method private updateGroupChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2032
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->fixMucUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2034
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2039
    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->updateChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2040
    return-void

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method private updateOffTheRecordFromCursor()V
    .locals 4

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const-string v1, "GTalkService"

    const-string v2, "updateOffTheRecordFromCursor, mOtrCursor.moveToFirst() failed"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOffTheRecordValue:I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    const-string v3, "otr"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOffTheRecordValue:I

    .line 342
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    const-string v3, "username"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, contact:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOffTheRecordFromCursor: otr_contact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", otr_status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOffTheRecordValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addOffTheRecordStatusChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOffTheRecordValue:I

    packed-switch v1, :pswitch_data_0

    .line 381
    const/16 v0, 0x9

    .line 385
    .local v0, messageType:I
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v1, :cond_0

    .line 386
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    .line 394
    return-void

    .line 372
    .end local v0           #messageType:I
    :pswitch_0
    const/16 v0, 0xa

    .line 373
    .restart local v0       #messageType:I
    goto :goto_0

    .line 375
    .end local v0           #messageType:I
    :pswitch_1
    const/16 v0, 0xb

    .line 376
    .restart local v0       #messageType:I
    goto :goto_0

    .line 378
    .end local v0           #messageType:I
    :pswitch_2
    const/16 v0, 0xc

    .line 379
    .restart local v0       #messageType:I
    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    goto :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 514
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 516
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

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

    .line 518
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 519
    monitor-exit v4

    .line 525
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
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

.method public clearChatHistory(Landroid/net/Uri;)V
    .locals 2
    .parameter "queryUri"

    .prologue
    const/4 v1, 0x0

    .line 2527
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->clearConsolidation()V

    .line 2531
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2533
    return-void
.end method

.method public clearConsolidation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1243
    const-string v0, "clearConsolidation"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1246
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    iput-wide v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    .line 1247
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1249
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1250
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    iput-wide v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mConsolidationKey:J

    .line 1251
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1252
    return-void
.end method

.method public closeChat()V
    .locals 7

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    .line 2122
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeChat: mTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2124
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v1

    .line 2126
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-nez v3, :cond_1

    .line 2127
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2130
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 2131
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 2132
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->closeChatForContactId(Landroid/content/ContentResolver;J)V

    .line 2135
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v3, :cond_3

    .line 2137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeChat: remove room \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" from contacts, account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2138
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I

    .line 2141
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->closeOtrCursor()V

    .line 2143
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 2144
    return-void
.end method

.method convertToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2061
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v1, :cond_0

    .line 2098
    :goto_0
    return-object v0

    .line 2066
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2067
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyWillConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2070
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2072
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 2074
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->closeChatForContactId(Landroid/content/ContentResolver;J)V

    .line 2078
    :cond_1
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToGroupChat: mTo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", myNickname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2082
    :cond_2
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    .line 2083
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatPassword:Ljava/lang/String;

    .line 2087
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setGroupChatNickname(Ljava/lang/String;)V

    .line 2089
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    .line 2090
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    .line 2091
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setIsGroupChat(Z)V

    .line 2093
    const/4 v2, 0x6

    invoke-direct {p0, v0, v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2095
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->closeOtrCursor()V

    .line 2096
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->queryOtrCursor()V

    .line 2098
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "room"
    .parameter "inviter"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mContext:Landroid/content/Context;

    const v3, 0x7f080053

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, p2, v2}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->declineGroupChatInvitation(Lcom/google/android/gsf/gtalkservice/Endpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public ensureNonZeroLastMessageDate()V
    .locals 8

    .prologue
    .line 2509
    monitor-enter p0

    .line 2510
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastMessageTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2511
    monitor-exit p0

    .line 2524
    :goto_0
    return-void

    .line 2514
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2515
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastMessageTimestamp:J

    .line 2518
    const-string v3, "last_message_date"

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastMessageTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2520
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "contact_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2523
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    return-wide v0
.end method

.method getGroupChatNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    return-object v0
.end method

.method getGroupChatPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatPassword:Ljava/lang/String;

    return-object v0
.end method

.method getGroupContactId()J
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    return-wide v0
.end method

.method public getLastMessageTimestamp()J
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method public getLightweightNotify()Z
    .locals 3

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$8;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$8;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v0

    .line 2270
    const-string v1, "GTalkService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLightweightNotify chatActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # chat session listeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2274
    :cond_0
    return v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getGroupMemberList(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsentComposedMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1840
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    const-string v3, "contact_id in (select _id from contacts where account=? AND username=?)"

    .line 1843
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 1845
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->UNSENT_COMPOSED_MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1852
    if-eqz v1, :cond_0

    .line 1854
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1858
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1866
    :goto_1
    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->saveUnsentComposedMessageInternal(Ljava/lang/String;)V

    .line 1868
    return-object v0

    .line 1858
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1861
    :cond_0
    const-string v0, "getUnsentComposedMessage"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->logEmptyCursor(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v0, v5

    goto :goto_0
.end method

.method groupChatParticipantPresenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 6
    .parameter "participant"
    .parameter "presence"

    .prologue
    const/4 v5, 0x0

    .line 548
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v3, v4, :cond_3

    .line 555
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 556
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "muc presence change: presence=unavail, can\'t find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in mGroupchatParticipants"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->removeParticipant(Ljava/lang/String;)Z

    .line 563
    const/4 v0, 0x5

    .line 595
    .local v0, messageType:I
    :goto_1
    invoke-direct {p0, p1, v5, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V

    .line 599
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto :goto_0

    .line 567
    .end local v0           #messageType:I
    :cond_3
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v1

    .line 569
    .local v1, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 570
    .local v2, oldPresence:Lorg/jivesoftware/smack/packet/Presence;
    if-nez v2, :cond_5

    .line 571
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "muc presence change: add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 576
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addParticipant(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 577
    const-string v3, "GTalkService"

    const-string v4, "muc presence change:  add participant failed"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_5
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 584
    :cond_6
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v1, v3, :cond_7

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v1, v3, :cond_8

    .line 587
    :cond_7
    const/4 v0, 0x3

    .restart local v0       #messageType:I
    goto :goto_1

    .line 588
    .end local v0           #messageType:I
    :cond_8
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v1, v3, :cond_9

    .line 589
    const/4 v0, 0x4

    .restart local v0       #messageType:I
    goto :goto_1

    .line 591
    .end local v0           #messageType:I
    :cond_9
    const/4 v0, 0x2

    .restart local v0       #messageType:I
    goto :goto_1
.end method

.method handleChatRead()V
    .locals 4

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2350
    const-string v1, "GTalkService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChatRead for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2358
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->markAsRead(Z)V

    .line 2363
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v1, v1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$9;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$9;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 2381
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyChatRead(JLjava/lang/String;)V

    .line 2382
    return-void
.end method

.method handlePresenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 3
    .parameter

    .prologue
    .line 2280
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-eq v0, v1, :cond_1

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2284
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 2285
    if-nez v0, :cond_2

    .line 2286
    const-string v0, ""

    .line 2290
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mStatusMessageReadFromDb:Z

    if-nez v1, :cond_3

    .line 2291
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->loadStatusMessageFromDatabase()V

    .line 2296
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2297
    const-string v1, "GTalkService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s status message of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" did not change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2302
    :cond_4
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mToBareJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s status of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is new (cached=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2309
    :cond_5
    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 2313
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    .line 2316
    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public hasChatListeners()Z
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnreadMessage()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastUnreadMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(ZZ)V
    .locals 3
    .parameter "initiatedLocally"
    .parameter "asyncInit"

    .prologue
    .line 212
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "initialized: already initialized!"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mInitialized:Z

    .line 219
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Z)V

    .line 274
    .local v0, initRunnable:Ljava/lang/Runnable;
    if-eqz p2, :cond_1

    .line 275
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ChatSession.initialize"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public inviteContact(Ljava/lang/String;)V
    .locals 4
    .parameter "invitee"

    .prologue
    .line 679
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-nez v1, :cond_0

    .line 680
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 681
    .local v0, invitees:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 682
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteContact("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGroupChat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->convertToGroupChatSession(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;[Ljava/lang/String;)V

    .line 697
    .end local v0           #invitees:[Ljava/lang/String;
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->sendGroupChatInvitationTo(Lcom/google/android/gsf/gtalkservice/Endpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isForOtherClient()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mForOtherClient:Z

    return v0
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    return v0
.end method

.method public isInitiatedByLocal()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mInitiatedbyLocal:Z

    return v0
.end method

.method public isOffTheRecord()Z
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mOffTheRecordValue:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leave()V
    .locals 1

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->closeChat()V

    .line 2109
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->leaveGroupChat()V

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyChatClosed(Ljava/lang/String;)V

    .line 2114
    return-void
.end method

.method public markAsRead()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->markAsRead(Z)V

    .line 466
    return-void
.end method

.method markAsRead(Z)V
    .locals 6
    .parameter "sendToServer"

    .prologue
    const/4 v4, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->hasUnreadMessage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const-string v3, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "markAsRead for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", server="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 483
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "last_unread_message"

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getContactBareAddress()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, contact:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getChatUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 493
    .local v1, uri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 507
    if-eqz p1, :cond_0

    .line 508
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->sendChatRead(Ljava/lang/String;)V

    goto :goto_0
.end method

.method notifyChatClosed(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2386
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChatClosed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2389
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$10;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$10;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 2408
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyChatClosed(JLjava/lang/String;)V

    .line 2409
    return-void
.end method

.method public notifyMessageSent(Ljava/lang/String;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$3;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 717
    return-void
.end method

.method onReceiveGroupMessage(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "message"
    .parameter "room"
    .parameter "fullNickname"

    .prologue
    const/4 v4, 0x0

    .line 939
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->messageTargetedForAnotherClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->handleOffTheRecordExtension(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, nickname:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, v4

    .line 951
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method onReceiveMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 23
    .parameter "message"

    .prologue
    .line 841
    const/4 v13, 0x0

    .line 842
    .local v13, nickname:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v19

    .line 843
    .local v19, from:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 848
    .local v18, bareJid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v20, 0x1

    .line 850
    .local v20, incoming:Z
    :goto_0
    if-eqz v20, :cond_4

    .line 853
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    .line 854
    move-object/from16 v3, v18

    .line 855
    .local v3, contact:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mAccountId:J

    move-object/from16 v0, v18

    invoke-static {v2, v0, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    .line 860
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastChatReceivedTsMs:J

    .line 862
    if-nez v20, :cond_5

    const/4 v2, 0x1

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;ZZ)Landroid/net/Uri;

    move-result-object v22

    .line 868
    .local v22, result:Landroid/net/Uri;
    if-eqz v22, :cond_2

    .line 870
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->isRead()Z

    move-result v21

    .line 873
    .local v21, isRead:Z
    if-eqz v20, :cond_7

    .line 874
    const-string v2, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveMessage: got incoming msg from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isRead="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ts="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 879
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->messageTargetedForAnotherClient(Ljava/lang/String;)Z

    move-result v9

    .line 880
    .local v9, forOtherClient:Z
    if-nez v21, :cond_6

    if-nez v9, :cond_6

    const/16 v17, 0x1

    .line 892
    .local v17, statusBarNotify:Z
    :goto_3
    const-string v2, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveMessage: add to chats for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", forOtherClient="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 897
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-static/range {v19 .. v19}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v7

    if-nez v20, :cond_9

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addChatToDatabase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 904
    if-eqz v20, :cond_a

    .line 905
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    move-object/from16 v10, p0

    move-object v12, v3

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 915
    .end local v9           #forOtherClient:Z
    .end local v17           #statusBarNotify:Z
    .end local v21           #isRead:Z
    :cond_2
    :goto_5
    return-void

    .line 848
    .end local v3           #contact:Ljava/lang/String;
    .end local v20           #incoming:Z
    .end local v22           #result:Landroid/net/Uri;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 857
    .restart local v20       #incoming:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #contact:Ljava/lang/String;
    goto/16 :goto_1

    .line 862
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 880
    .restart local v9       #forOtherClient:Z
    .restart local v21       #isRead:Z
    .restart local v22       #result:Landroid/net/Uri;
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 882
    .end local v9           #forOtherClient:Z
    :cond_7
    const-string v2, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveMessage: got own msg for chat with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ts="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 887
    :cond_8
    const/4 v9, 0x1

    .line 888
    .restart local v9       #forOtherClient:Z
    const/16 v17, 0x0

    .restart local v17       #statusBarNotify:Z
    goto/16 :goto_3

    .line 897
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 912
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public prepareToClose()V
    .locals 2

    .prologue
    .line 2148
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareToClose for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 2150
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2151
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->leaveGroupChat()V

    .line 2154
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->closeOtrCursor()V

    .line 2155
    return-void
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 528
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 530
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 531
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

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

    .line 532
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 533
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 534
    monitor-exit v4

    .line 538
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 537
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

.method public reportEndCause(Ljava/lang/String;ZI)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1367
    const/4 v0, -0x1

    .line 1369
    packed-switch p3, :pswitch_data_0

    .line 1392
    :goto_0
    if-lez v0, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$4;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$4;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 1411
    return-void

    .line 1371
    :pswitch_0
    if-eqz p2, :cond_1

    const v0, 0x7f080065

    goto :goto_0

    :cond_1
    const v0, 0x7f080066

    goto :goto_0

    .line 1376
    :pswitch_1
    if-eqz p2, :cond_2

    const v0, 0x7f080067

    goto :goto_0

    :cond_2
    const v0, 0x7f080068

    goto :goto_0

    .line 1381
    :pswitch_2
    if-eqz p2, :cond_3

    const v0, 0x7f080069

    goto :goto_0

    :cond_3
    const v0, 0x7f08006a

    goto :goto_0

    .line 1386
    :pswitch_3
    if-eqz p2, :cond_4

    const v0, 0x7f08006b

    goto :goto_0

    :cond_4
    const v0, 0x7f08006c

    goto :goto_0

    .line 1369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reportMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1417
    if-eqz p4, :cond_1

    .line 1418
    if-eqz p3, :cond_0

    .line 1419
    const v0, 0x7f080063

    .line 1431
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 1435
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->postMissedCallNotification(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1436
    return-void

    .line 1421
    :cond_0
    const v0, 0x7f080064

    goto :goto_0

    .line 1424
    :cond_1
    if-eqz p3, :cond_2

    .line 1425
    const v0, 0x7f080061

    goto :goto_0

    .line 1427
    :cond_2
    const v0, 0x7f080062

    goto :goto_0
.end method

.method public saveUnsentComposedMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "unsentMessage"

    .prologue
    .line 1834
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->saveUnsentComposedMessageInternal(Ljava/lang/String;)V

    .line 1837
    :cond_0
    return-void
.end method

.method public sendChatMessage(Ljava/lang/String;)V
    .locals 13
    .parameter "body"

    .prologue
    .line 721
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x7d0

    if-le v0, v2, :cond_1

    .line 736
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mContext:Landroid/content/Context;

    const v2, 0x7f08005c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 741
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 746
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    .line 751
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->getUserBareJidTimeout()J

    move-result-wide v11

    .line 753
    .local v11, useBareJidTimeout:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mLastChatReceivedTsMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v11

    if-lez v0, :cond_3

    .line 754
    const-string v0, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendChatMessage: it\'s been "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v2, 0xea60

    div-long v2, v11, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mins since receiving a message from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Use bareJid to send message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    .line 763
    .end local v11           #useBareJidTimeout:J
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_4

    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 772
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setIsIncoming(Z)V

    .line 774
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_5

    .line 775
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addGroupMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/net/Uri;

    .line 788
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 798
    :catch_0
    move-exception v10

    .line 799
    .local v10, ex:Ljava/lang/IllegalStateException;
    const-string v0, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendChatMessage caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 763
    .end local v10           #ex:Ljava/lang/IllegalStateException;
    :cond_4
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_1

    .line 778
    :cond_5
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;ZZ)Landroid/net/Uri;

    .line 780
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addChatToDatabase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2
.end method

.method setGroupChatNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    .line 452
    return-void
.end method

.method setMyGroupChatNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    .line 442
    return-void
.end method
