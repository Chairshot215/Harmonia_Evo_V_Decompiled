.class public Lcom/google/android/talk/fragments/ChatScreenFragment;
.super Landroid/app/Fragment;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/ChatScreenFragment$18;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    }
.end annotation


# static fields
.field private static CHATS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mAudioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStateClient:Lcom/google/android/videochat/CallStateClient;

.field private mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

.field private mChatInputField:Landroid/widget/EditText;

.field private mChatList:Lcom/google/android/talk/util/ChatList;

.field private mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

.field private mContactIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

.field private mCreated:Z

.field private mFromStatusBarNotify:Z

.field private mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

.field private mGroupChatEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInputContainer:Landroid/view/View;

.field private volatile mInvitePending:Z

.field private mInviteRunnable:Ljava/lang/Runnable;

.field private mMessageBar:Landroid/view/ViewGroup;

.field private mNeedToHandleNewIntent:Z

.field private mQueryCompleteRunnable:Ljava/lang/Runnable;

.field private mResources:Landroid/content/res/Resources;

.field private mRoot:Landroid/view/View;

.field private mSelfClientType:I

.field private mSendButton:Landroid/view/View;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mStartVoiceChatRequest:Z

.field private mStarted:Z

.field private mSwitchHintCenter:Landroid/widget/TextView;

.field private mSwitchHintFarLeft:Landroid/widget/TextView;

.field private mSwitchHintFarRight:Landroid/widget/TextView;

.field private mSwitchHintLeft:Landroid/widget/TextView;

.field private mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

.field private mSwitchHintRight:Landroid/widget/TextView;

.field private mTabletMode:Z

.field private mTargetContact:Ljava/lang/String;

.field private final mWaitForServiceTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 670
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_active"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment;->CHATS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1216
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 683
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    .line 729
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 746
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    .line 764
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    .line 1148
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$2;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Ljava/lang/Runnable;

    .line 1217
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 1220
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 683
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    .line 729
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 746
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    .line 764
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    .line 1148
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$2;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Ljava/lang/Runnable;

    .line 1221
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1222
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/ChatScreenFragment;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateHintText(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/videochat/CallStateClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/talk/fragments/ChatScreenFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->userActionDetected()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->ensureChatInDb(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    return-object v0
.end method

.method private checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    .locals 11
    .parameter "contact"
    .parameter "accountId"
    .parameter "ensureChatsInDb"

    .prologue
    .line 1400
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkChatSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ensureChatsInDb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->logv(Ljava/lang/String;)V

    .line 1404
    :cond_0
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    monitor-enter v9

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v0, :cond_2

    .line 1406
    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$7;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    const/4 v6, 0x0

    monitor-exit v9

    .line 1449
    :cond_1
    :goto_0
    return-object v6

    .line 1415
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v0, p2, p3}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v8

    .line 1421
    .local v8, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-nez v8, :cond_3

    .line 1422
    const-string v0, "talk"

    const-string v1, "checkChatSession: null imSession, bail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1424
    const/4 v6, 0x0

    goto :goto_0

    .line 1415
    .end local v8           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1427
    .restart local v8       #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_3
    :try_start_3
    invoke-interface {v8, p1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v6

    .line 1428
    .local v6, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-nez v6, :cond_4

    .line 1429
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->suspendRequery()V

    .line 1430
    invoke-interface {v8, p1}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v6

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkChatSession created for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chatSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->resumeRequery()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1445
    .end local v6           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v8           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v7

    .line 1446
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "talk"

    const-string v1, "checkChatSession caught "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1447
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1449
    const/4 v6, 0x0

    goto :goto_0

    .line 1433
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v6       #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .restart local v8       #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_4
    if-eqz p4, :cond_1

    .line 1437
    :try_start_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment$8;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method private configureMuteUnmuteButton(Landroid/view/MenuItem;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2281
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2282
    if-eqz p2, :cond_0

    const v0, 0x7f0c010a

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2285
    if-eqz p2, :cond_1

    const v0, 0x7f020063

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2288
    return-void

    .line 2282
    :cond_0
    const v0, 0x7f0c0109

    goto :goto_0

    .line 2285
    :cond_1
    const v0, 0x7f020065

    goto :goto_1
.end method

.method private createChatList(Landroid/view/View;)V
    .locals 5
    .parameter "root"

    .prologue
    .line 1193
    new-instance v0, Lcom/google/android/talk/util/ChatList;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/talk/util/ChatList;-><init>(Landroid/app/Activity;JLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    .line 1198
    return-void
.end method

.method private dismissAllChatNotifications(J)V
    .locals 3
    .parameter

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 2097
    if-nez v0, :cond_1

    .line 2098
    const-string v0, "talk"

    const-string v1, "dismissChatNotification: no GTalkService object found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    :try_start_0
    const-string v1, "dismissChatNotification for all"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 2104
    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationsForAccount(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2109
    if-eqz v0, :cond_0

    .line 2110
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->dismissPopupNotification(Landroid/app/Activity;)V

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v0

    .line 2106
    const-string v1, "talk"

    const-string v2, "dismissChatNotification: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 2
    .parameter "m"
    .parameter "a"

    .prologue
    const/4 v1, 0x0

    .line 2273
    if-eqz p1, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2275
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2276
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 2278
    :cond_0
    return-void
.end method

.method private ensureChatInDb(Ljava/lang/String;J)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 1457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1458
    const-string v0, "contact_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const-string v0, " in (select _id from contacts where "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    const-string v0, "username"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    const-string v0, "account"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1464
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/fragments/ChatScreenFragment;->CHATS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1473
    if-eqz v4, :cond_4

    .line 1475
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1476
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 1477
    const/4 v1, 0x2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v9, :cond_1

    move v1, v9

    .line 1478
    :goto_0
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1486
    :goto_2
    cmp-long v4, v2, v7

    if-nez v4, :cond_2

    .line 1487
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/talk/DatabaseUtils;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureChatInDb: create a chat for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contactId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1491
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1492
    const-string v4, "contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1493
    const-string v1, "last_message_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1494
    const-string v1, "last_unread_message"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1504
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v6

    .line 1477
    goto :goto_0

    .line 1481
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1497
    :cond_2
    if-nez v1, :cond_0

    .line 1498
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1499
    const-string v4, "is_active"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1500
    sget-object v4, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "contact_id=?"

    new-array v7, v9, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v6

    invoke-virtual {v0, v4, v1, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move v1, v6

    move-wide v2, v7

    goto :goto_1

    :cond_4
    move v1, v6

    move-wide v2, v7

    goto :goto_2
.end method

.method private foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    .locals 1
    .parameter "vr"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->foreachChatView(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 762
    :cond_0
    return-void
.end method

.method private getActiveChat()Lcom/google/android/talk/ChatView;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-nez v0, :cond_0

    .line 752
    const/4 v0, 0x0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedChatView()Lcom/google/android/talk/ChatView;

    move-result-object v0

    goto :goto_0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1731
    if-nez v0, :cond_0

    .line 1737
    :goto_0
    return-void

    .line 1734
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1736
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;
    .locals 4
    .parameter "switcher"

    .prologue
    .line 1034
    invoke-virtual {p1}, Lcom/google/android/talk/util/ChatList;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1045
    :goto_0
    return-object v2

    .line 1038
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/talk/util/ChatList;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, fullName:Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1042
    .local v1, index:I
    if-gez v1, :cond_1

    .line 1043
    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseAbbreviatedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1045
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isChatScreenIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1660
    if-nez p0, :cond_1

    .line 1664
    :cond_0
    :goto_0
    return v1

    .line 1663
    :cond_1
    const-string v2, "from"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, fromAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2474
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2477
    :goto_0
    return-void

    .line 2475
    :cond_0
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatScreenFragment] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2480
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2483
    :goto_0
    return-void

    .line 2481
    :cond_0
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatScreenFragment] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onGroupChatApproval(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1880
    if-nez p1, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1894
    :goto_0
    return-void

    .line 1885
    :cond_0
    const-string v0, "room"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1886
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    const-string v1, "approval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1888
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1889
    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1892
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_0
.end method

.method private pickChat(Ljava/lang/String;J)V
    .locals 7
    .parameter "targetContact"
    .parameter "targetAccountId"

    .prologue
    const/4 v6, -0x1

    .line 1101
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1109
    .local v1, currentIntent:Landroid/content/Intent;
    const-string v4, "from"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    const-string v4, "accountId"

    invoke-virtual {v1, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1112
    const/4 v3, -0x1

    .line 1113
    .local v3, position:I
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1114
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v0

    .line 1115
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1116
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4, v2}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 1117
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getAccountId()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-eqz v4, :cond_3

    .line 1115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1120
    :cond_3
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1123
    move v3, v2

    .line 1130
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_4
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1132
    if-eqz p1, :cond_5

    .line 1134
    if-ne v3, v6, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 1136
    if-eq v3, v6, :cond_5

    .line 1137
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    new-instance v5, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-direct {v5, p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/util/ChatList;)V

    invoke-interface {v4, v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1138
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v4, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setSelection(I)V

    .line 1142
    :cond_5
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 1143
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1144
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1134
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1763
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1765
    const-string v1, "from_notify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    .line 1767
    const-string v1, "vc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveIntent: fromNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1771
    return-void
.end method

.method private sendMessage()V
    .locals 4

    .prologue
    .line 1507
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1508
    .local v0, active:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView;->sendMessage(Ljava/lang/String;)V

    .line 1512
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 1513
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1515
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-nez v2, :cond_0

    .line 1518
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1519
    .local v1, config:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1520
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "contact"
    .parameter "nickname"
    .parameter "status"
    .parameter "clientType"
    .parameter "presence"
    .parameter "capabilities"

    .prologue
    .line 970
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/google/android/talk/TalkApp;->getConnectionTypeIndicator(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 973
    .local v6, c:Landroid/graphics/drawable/Drawable;
    :goto_0
    iput p4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 975
    packed-switch p4, :pswitch_data_0

    .line 982
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/drawable/Drawable;)V

    .line 983
    return-void

    .line 970
    .end local v6           #c:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 978
    .restart local v6       #c:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 979
    goto :goto_1

    .line 975
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setupMessageBar()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3fc0

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 1334
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v3, 0x7f100034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1335
    .local v1, vg:Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 1355
    :goto_0
    return-void

    .line 1339
    :cond_0
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1341
    .local v0, messageBarTransition:Landroid/animation/LayoutTransition;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1342
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1343
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v4, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1344
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v5, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1345
    invoke-virtual {v0, v4, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1346
    invoke-virtual {v0, v5, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1348
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1350
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1353
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1354
    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1562
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v0, :cond_0

    .line 1570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    .line 1571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 1572
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->ensureServiceBound()V

    .line 1573
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->registerForServiceStateChanged()V

    .line 1575
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$10;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1584
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->requery()V

    .line 1587
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$11;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    .line 1627
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->startListening()V

    .line 1629
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    if-eqz v0, :cond_0

    .line 1630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    .line 1631
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private updateHintText(F)V
    .locals 8
    .parameter "percentRevealed"

    .prologue
    const/4 v7, 0x0

    .line 1051
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    if-nez v5, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedItemPosition()I

    move-result v4

    .line 1055
    .local v4, itemPosition:I
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v5}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v0

    .line 1057
    .local v0, count:I
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarLeft:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintLeft:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintRight:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarRight:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 1063
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->setVisibility(I)V

    .line 1084
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v5, v4}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 1085
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintCenter:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    invoke-virtual {v5, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->setPercentRevealed(F)V

    .line 1089
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->requestLayout()V

    .line 1090
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintLeft:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 1091
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarLeft:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 1092
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintCenter:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 1093
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintRight:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 1094
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarRight:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 1065
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    invoke-virtual {v5, v7}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->setVisibility(I)V

    .line 1067
    add-int/lit8 v5, v4, -0x2

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1068
    .local v1, hintWindowLeft:I
    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v6, v4, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1070
    .local v2, hintWindowRight:I
    move v3, v1

    .local v3, i:I
    :goto_1
    if-gt v3, v2, :cond_1

    .line 1071
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v5, v3}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 1072
    add-int/lit8 v5, v4, -0x2

    if-ne v3, v5, :cond_4

    .line 1073
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarLeft:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1074
    :cond_4
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_5

    .line 1075
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintLeft:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1076
    :cond_5
    add-int/lit8 v5, v4, 0x1

    if-ne v3, v5, :cond_6

    .line 1077
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintRight:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1078
    :cond_6
    add-int/lit8 v5, v4, 0x2

    if-ne v3, v5, :cond_3

    .line 1079
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarRight:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private userActionDetected()V
    .locals 2

    .prologue
    .line 2396
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2397
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 2400
    :cond_0
    return-void
.end method


# virtual methods
.method public addToChat()V
    .locals 5

    .prologue
    .line 2410
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGroupChatEnabled:Z

    if-nez v0, :cond_1

    .line 2424
    :cond_0
    :goto_0
    return-void

    .line 2413
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2414
    if-eqz v0, :cond_0

    .line 2415
    const-string v1, "show groupchat invite"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 2416
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/google/android/talk/GroupChatInviteeList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2418
    const-string v2, "accountId"

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2419
    const-string v2, "from"

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getMucParticipants()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2422
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method clearChat()V
    .locals 1

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2371
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2375
    :goto_0
    return-void

    .line 2374
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->clearChat()V

    goto :goto_0
.end method

.method public currentChatAccount()J
    .locals 3

    .prologue
    .line 1845
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1846
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v1

    .line 1849
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public currentChatUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1836
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1837
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1838
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 1840
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public leaveChat()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2316
    const-string v1, "leaveChat"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 2318
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 2319
    if-nez v1, :cond_0

    .line 2367
    :goto_0
    return-void

    .line 2323
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v2

    .line 2325
    if-le v2, v0, :cond_4

    .line 2326
    new-instance v3, Lcom/google/android/talk/fragments/ChatScreenFragment$17;

    invoke-direct {v3, p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$17;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/ChatView;)V

    .line 2335
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedItemPosition()I

    move-result v4

    .line 2336
    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_1

    .line 2338
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-eqz v2, :cond_3

    .line 2343
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    if-eqz v0, :cond_2

    add-int/lit8 v0, v4, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 2344
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2345
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2346
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->leaveChat()V

    .line 2347
    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 2348
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2336
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2343
    :cond_2
    add-int/lit8 v0, v4, -0x1

    goto :goto_2

    .line 2350
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v1, v0, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->selectNext(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 2353
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onLastChatClosed()V

    .line 2355
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->leaveChat()V

    .line 2356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 2361
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2362
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2363
    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2364
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2365
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->requery()V

    goto :goto_0
.end method

.method public leaveChat(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 2301
    .local v1, cv:Lcom/google/android/talk/ChatView;
    if-nez v1, :cond_0

    .line 2313
    :goto_0
    return-void

    .line 2305
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 2306
    .local v0, currentChatContact:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2309
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_0

    .line 2311
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatList;->requery()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1669
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1671
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1672
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2014
    packed-switch p1, :pswitch_data_0

    .line 2080
    :cond_0
    :goto_0
    return-void

    .line 2017
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2018
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invitee"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2019
    if-eqz v5, :cond_1

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2021
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 2022
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2023
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2024
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2026
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2028
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2031
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$15;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    .line 2070
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2072
    iput-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 2077
    :pswitch_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onGroupChatApproval(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1

    .line 2014
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 1202
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 1204
    check-cast v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;

    .line 1205
    .local v0, host:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1206
    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;->getChatScreenController()Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    .line 1207
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    .line 1211
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_allow_group_chat"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGroupChatEnabled:Z

    .line 1213
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 2166
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2168
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2170
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2171
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2172
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const/4 v6, 0x1

    .line 1361
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1362
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->resolveIntent()V

    .line 1364
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    .line 1366
    invoke-virtual {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setHasOptionsMenu(Z)V

    .line 1368
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1369
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1370
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "accountId"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1371
    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1372
    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1375
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 1377
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1380
    iput-boolean v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCreated:Z

    .line 1381
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2177
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 1301
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-eqz v1, :cond_1

    .line 1302
    const v1, 0x7f040013

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    .line 1307
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarLeft:Landroid/widget/TextView;

    .line 1308
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintLeft:Landroid/widget/TextView;

    .line 1309
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintCenter:Landroid/widget/TextView;

    .line 1310
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintRight:Landroid/widget/TextView;

    .line 1311
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintFarRight:Landroid/widget/TextView;

    .line 1312
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    .line 1314
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setupInputFieldAndSendButton(Landroid/view/View;)V

    .line 1315
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setupMessageBar()V

    .line 1317
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1318
    .local v0, chatRoot:Landroid/view/ViewGroup;
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-eqz v1, :cond_2

    .line 1319
    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    .line 1324
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->createChatList(Landroid/view/View;)V

    .line 1326
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1327
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    return-object v1

    .line 1304
    .end local v0           #chatRoot:Landroid/view/ViewGroup;
    :cond_1
    const v1, 0x7f040014

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    goto/16 :goto_0

    .line 1321
    .restart local v0       #chatRoot:Landroid/view/ViewGroup;
    :cond_2
    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1747
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1749
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$14;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1760
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 2457
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 2459
    if-eqz p1, :cond_2

    .line 2460
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 2461
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2462
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2463
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    .line 2468
    .end local v0           #a:Landroid/app/Activity;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v1, :cond_1

    .line 2469
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v1, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->onHiddenChanged(Z)V

    .line 2471
    :cond_1
    return-void

    .line 2466
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 1799
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1833
    :goto_0
    return-void

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1804
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->resolveIntent()V

    .line 1806
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1809
    const-string v0, "accountId"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1810
    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 1811
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 1812
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got intent with account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; contact is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1815
    :cond_1
    iput-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1818
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-nez v0, :cond_3

    .line 1819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    goto :goto_0

    .line 1822
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    .line 1824
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    .line 1826
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1827
    if-eqz v0, :cond_4

    .line 1828
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->dismissChatNotification()V

    .line 1832
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->requestUpdate()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1676
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1681
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1687
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$13;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1696
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter

    .prologue
    .line 2182
    const v0, 0x7f1000c2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2183
    const v1, 0x7f1000c3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2184
    const v2, 0x7f10005e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2185
    const v3, 0x7f10005f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2186
    const v4, 0x7f100062

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2187
    const v5, 0x7f100063

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2188
    const v6, 0x7f1000c4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2189
    const v7, 0x7f1000c8

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2191
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2192
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2193
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2194
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2195
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2196
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2197
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2198
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGroupChatEnabled:Z

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2200
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v2

    .line 2201
    if-nez v2, :cond_1

    .line 2270
    :cond_0
    :goto_0
    return-void

    .line 2205
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getVideoChatState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v8

    .line 2206
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getCapabilities()I

    move-result v9

    .line 2207
    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v10

    .line 2208
    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v9

    .line 2210
    sget-object v11, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    invoke-virtual {v8}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 2238
    :cond_2
    :goto_1
    const v0, 0x7f1000c6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2239
    if-eqz v1, :cond_3

    .line 2240
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0c004d

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2243
    :cond_3
    const v0, 0x7f1000b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2244
    const v0, 0x7f1000b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2245
    const v0, 0x7f1000b8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2246
    const v0, 0x7f1000b7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2248
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getSelectedAudioDevice()Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v1

    .line 2249
    const/4 v0, 0x0

    .line 2251
    sget-object v2, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 2266
    :goto_3
    if-eqz v0, :cond_0

    .line 2267
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 2268
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2212
    :pswitch_0
    if-eqz v10, :cond_4

    .line 2213
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2215
    :cond_4
    if-eqz v9, :cond_2

    .line 2216
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2224
    :pswitch_1
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2231
    :pswitch_2
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2232
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    if-ne v8, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v4, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->configureMuteUnmuteButton(Landroid/view/MenuItem;Z)V

    .line 2233
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2234
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2232
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 2240
    :cond_6
    const v0, 0x7f0c004e

    goto :goto_2

    .line 2254
    :pswitch_3
    const v0, 0x7f1000b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2257
    :pswitch_4
    const v0, 0x7f1000b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2260
    :pswitch_5
    const v0, 0x7f1000b8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2263
    :pswitch_6
    const v0, 0x7f1000b7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2251
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1643
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1644
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$12;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1655
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1656
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1657
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1855
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1857
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/ChatColorMaker;->freeze(Landroid/os/Bundle;)V

    .line 1860
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1861
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {v0, p1}, Lcom/google/android/talk/ChatView;->saveState(Landroid/os/Bundle;)V

    .line 1864
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1637
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1638
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    .line 1639
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1741
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1742
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 1743
    return-void
.end method

.method public registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/ChatScreenFragment$9;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$9;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    .line 1550
    return-void
.end method

.method public serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 3
    .parameter

    .prologue
    .line 2115
    if-eqz p1, :cond_4

    .line 2120
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    monitor-enter v1

    .line 2121
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 2123
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2124
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2127
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2130
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$16;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$16;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 2147
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2148
    if-eqz v0, :cond_1

    .line 2149
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->addInvitationListener()V

    .line 2150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 2153
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    if-eqz v1, :cond_2

    .line 2154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    .line 2155
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->dismissAllChatNotifications(J)V

    .line 2162
    :cond_2
    :goto_2
    return-void

    .line 2155
    :cond_3
    iget-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    goto :goto_1

    .line 2159
    :cond_4
    const-string v0, "talk"

    const-string v1, "serviceStateChanged: service disconnected, finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public setupInputFieldAndSendButton(Landroid/view/View;)V
    .locals 5
    .parameter "inputContainer"

    .prologue
    const/4 v4, 0x0

    .line 1225
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    .line 1226
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    const v3, 0x7f100053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    .line 1227
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    const v3, 0x7f100052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    .line 1229
    new-instance v2, Lcom/google/android/talk/util/ChatColorMaker;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lcom/google/android/talk/util/ChatColorMaker;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

    .line 1230
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    new-instance v3, Lcom/google/android/talk/fragments/ChatScreenFragment$3;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$3;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$4;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1255
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/talk/fragments/ChatScreenFragment$5;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$5;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1270
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1274
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/talk/fragments/ChatScreenFragment$6;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$6;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1289
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1292
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v1

    .line 1293
    check-cast v0, Landroid/text/Spannable;

    .line 1294
    .local v0, span:Landroid/text/Spannable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-interface {v0, p0, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1295
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1703
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-nez v0, :cond_0

    .line 1727
    :goto_0
    return-void

    .line 1706
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    .line 1709
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->stop()V

    .line 1712
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->closeCursor()V

    .line 1718
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1720
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->unregisterForServiceStateChanged()V

    .line 1721
    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 1724
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->stopListening()V

    .line 1726
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    goto :goto_0
.end method

.method public switchAccounts()V
    .locals 3

    .prologue
    .line 1774
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCreated:Z

    if-nez v0, :cond_0

    .line 1775
    const-string v0, "switchAccounts: fragment\'s onCreate not called yet"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1796
    :goto_0
    return-void

    .line 1778
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 1780
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1783
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1784
    const-string v0, "switchAccounts: mActivity is NULL"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1787
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1788
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1791
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    if-eqz v0, :cond_2

    .line 1792
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/util/ChatList;->changeAccount(J)Z

    .line 1795
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    goto :goto_0
.end method

.method public toggleOtr()V
    .locals 2

    .prologue
    .line 2403
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2404
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2405
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->goOffTheRecord(Z)V

    .line 2407
    :cond_0
    return-void

    .line 2405
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceAvailableCallback(Landroid/os/Handler;)V

    .line 1554
    return-void
.end method

.method public updateTitle(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 986
    instance-of v0, p1, Lcom/google/android/talk/ChatView;

    if-nez v0, :cond_0

    .line 1010
    :goto_0
    return-void

    :cond_0
    move-object v10, p1

    .line 989
    check-cast v10, Lcom/google/android/talk/ChatView;

    .line 990
    .local v10, cv:Lcom/google/android/talk/ChatView;
    if-nez v10, :cond_1

    .line 991
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, groupChatContact:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 997
    .end local v2           #groupChatContact:Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v11

    .line 998
    .local v11, title:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getStatus()I

    move-result v8

    .line 999
    .local v8, status:I
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getCapabilities()I

    move-result v9

    .line 1001
    .local v9, capabilities:I
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getClientType()I

    move-result v7

    .line 1002
    .local v7, clientType:I
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, contact:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, v4}, Lcom/google/android/talk/TalkApp;->shouldHideRemoteJid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1004
    const-string v4, ""

    .line 1006
    :cond_3
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getCustomStatus()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method
