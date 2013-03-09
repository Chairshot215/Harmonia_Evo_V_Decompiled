.class public Lcom/google/android/talk/ChatView;
.super Landroid/widget/LinearLayout;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/ChatView$23;,
        Lcom/google/android/talk/ChatView$AvatarCache;,
        Lcom/google/android/talk/ChatView$MessageBar;,
        Lcom/google/android/talk/ChatView$PhoneMessageBar;,
        Lcom/google/android/talk/ChatView$TabletMessageBar;,
        Lcom/google/android/talk/ChatView$ChatListener;,
        Lcom/google/android/talk/ChatView$DeltaCursor;,
        Lcom/google/android/talk/ChatView$ConnectionStateListener;,
        Lcom/google/android/talk/ChatView$ChatAdapter;,
        Lcom/google/android/talk/ChatView$MessageItem;,
        Lcom/google/android/talk/ChatView$RequeryCallback;,
        Lcom/google/android/talk/ChatView$GroupChatInvitationListener;,
        Lcom/google/android/talk/ChatView$QueryHandler;,
        Lcom/google/android/talk/ChatView$VideoChatState;
    }
.end annotation


# static fields
.field private static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static SORT_ORDER:Ljava/lang/String;

.field private static sReceiveBackgroundColor:I


# instance fields
.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field mAudioChoicesListener:Landroid/view/View$OnClickListener;

.field private mBodyColumn:I

.field private mCachingStarted:Z

.field private mCallStateClient:Lcom/google/android/videochat/CallStateClient;

.field private mCapabilities:I

.field private mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

.field private mChatHistoryQueryComplete:Z

.field private mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

.field private mChatSession:Lcom/google/android/gtalkservice/IChatSession;

.field private mChatsTableContactId:J

.field private mClientType:I

.field mCloseListener:Landroid/view/View$OnClickListener;

.field private mColorMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

.field private mContact:Ljava/lang/String;

.field private mContactId:J

.field private mContactInfoLoaded:Z

.field private mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

.field private mContactQueryComplete:Z

.field private mCustomStatus:Ljava/lang/String;

.field private mDateColumn:I

.field private mDeltaColumn:I

.field private mDismissNotificationWhenGainedFocus:Z

.field private mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;

.field private mDisplaySentTimeColumn:I

.field mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

.field private mErrorCodeColumn:I

.field private mFocused:Z

.field private mGroupChat:Z

.field private mGroupChatApprovalRequested:Z

.field private mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

.field private mGroupChatColors:[I

.field private mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHistoryView:Landroid/widget/ListView;

.field private mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialized:Z

.field private mInvitationListenerRegistered:Z

.field private mJid:Ljava/lang/String;

.field private mListState:Landroid/os/Parcelable;

.field private mMayHaveUnreadChat:Z

.field private mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

.field mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMucInviter:Ljava/lang/String;

.field private mMucPassword:Ljava/lang/String;

.field private mMucRoomAddress:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mNicknameColumn:I

.field private mPaused:Z

.field private mPictureCache:Lcom/google/android/talk/PictureCache;

.field private mPresenceStatus:I

.field private final mQueryCompleteLock:Ljava/lang/Object;

.field private mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

.field private mQueryUri:Landroid/net/Uri;

.field private mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

.field private mResources:Landroid/content/res/Resources;

.field private mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResumeVideoChat:Landroid/view/View$OnClickListener;

.field private mSelfAvatar:Landroid/graphics/drawable/Drawable;

.field private mSelfUsername:Ljava/lang/String;

.field private mSendStatusColumn:I

.field private mSessionInited:Z

.field private mSingleAvatar:Landroid/graphics/drawable/Drawable;

.field mStartVideoChat:Landroid/view/View$OnClickListener;

.field mStartVoiceChat:Landroid/view/View$OnClickListener;

.field private mStartVoiceChatOnFirstDisplay:Z

.field private mStatusMessagePrimed:Z

.field private mStatusWarningView:Landroid/view/View;

.field mToggleBluetooth:Landroid/view/View$OnClickListener;

.field mToggleMute:Landroid/view/View$OnClickListener;

.field mToggleOtr:Landroid/view/View$OnClickListener;

.field private mTypeColumn:I

.field private mWarningIcon:Landroid/widget/ImageView;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "err_code"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "err_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "show_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "send_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/ChatView;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 228
    const-string v0, "date ASC"

    sput-object v0, Lcom/google/android/talk/ChatView;->SORT_ORDER:Ljava/lang/String;

    .line 240
    sput v3, Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I

    .line 243
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/talk/ChatView;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V
    .locals 2
    .parameter "activity"
    .parameter "lp"
    .parameter "host"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 411
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 206
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 239
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 284
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 1000
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 3021
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 3032
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 3040
    new-instance v0, Lcom/google/android/talk/ChatView$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$9;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 3066
    new-instance v0, Lcom/google/android/talk/ChatView$11;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$11;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 3126
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 3133
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 3157
    new-instance v0, Lcom/google/android/talk/ChatView$16;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$16;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mAudioChoicesListener:Landroid/view/View$OnClickListener;

    .line 3176
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 3183
    new-instance v0, Lcom/google/android/talk/ChatView$18;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$18;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 3212
    new-instance v0, Lcom/google/android/talk/ChatView$20;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$20;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3793
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 412
    invoke-virtual {p0, p2, p3}, Lcom/google/android/talk/ChatView;->setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    .line 413
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 206
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 239
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 284
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 1000
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 3021
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 3032
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 3040
    new-instance v0, Lcom/google/android/talk/ChatView$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$9;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 3066
    new-instance v0, Lcom/google/android/talk/ChatView$11;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$11;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 3126
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 3133
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 3157
    new-instance v0, Lcom/google/android/talk/ChatView$16;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$16;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mAudioChoicesListener:Landroid/view/View$OnClickListener;

    .line 3176
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 3183
    new-instance v0, Lcom/google/android/talk/ChatView$18;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$18;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 3212
    new-instance v0, Lcom/google/android/talk/ChatView$20;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$20;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3793
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 426
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 206
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 239
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 284
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 1000
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 3021
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 3032
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 3040
    new-instance v0, Lcom/google/android/talk/ChatView$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$9;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 3066
    new-instance v0, Lcom/google/android/talk/ChatView$11;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$11;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 3126
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 3133
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 3157
    new-instance v0, Lcom/google/android/talk/ChatView$16;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$16;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mAudioChoicesListener:Landroid/view/View$OnClickListener;

    .line 3176
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 3183
    new-instance v0, Lcom/google/android/talk/ChatView$18;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$18;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 3212
    new-instance v0, Lcom/google/android/talk/ChatView$20;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$20;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3793
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 206
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 239
    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 284
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 1000
    iput-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 3021
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 3032
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 3040
    new-instance v0, Lcom/google/android/talk/ChatView$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$9;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 3066
    new-instance v0, Lcom/google/android/talk/ChatView$11;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$11;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 3126
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 3133
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 3157
    new-instance v0, Lcom/google/android/talk/ChatView$16;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$16;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mAudioChoicesListener:Landroid/view/View$OnClickListener;

    .line 3176
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 3183
    new-instance v0, Lcom/google/android/talk/ChatView$18;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$18;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 3212
    new-instance v0, Lcom/google/android/talk/ChatView$20;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$20;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3793
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 418
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/ChatView;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->pictureLoaded(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mCustomStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mCustomStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/talk/ChatView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/google/android/talk/ChatView;->mChatsTableContactId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mCapabilities:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mCapabilities:I

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->updateWarningView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->initializeMessageBarState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/ChatView;)Lcom/google/android/videochat/CallStateClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/ChatView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/google/android/talk/ChatView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/google/android/talk/ChatView;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/android/talk/ChatView;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$ChatAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/talk/ChatView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/talk/ChatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mContactQueryComplete:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->insertBuddyStatus()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mNicknameColumn:I

    return v0
.end method

.method static synthetic access$2502(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mNicknameColumn:I

    return p1
.end method

.method static synthetic access$2600(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mBodyColumn:I

    return v0
.end method

.method static synthetic access$2602(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mBodyColumn:I

    return p1
.end method

.method static synthetic access$2700(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mDateColumn:I

    return v0
.end method

.method static synthetic access$2702(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mDateColumn:I

    return p1
.end method

.method static synthetic access$2800(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mTypeColumn:I

    return v0
.end method

.method static synthetic access$2802(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mTypeColumn:I

    return p1
.end method

.method static synthetic access$2900(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mDisplaySentTimeColumn:I

    return v0
.end method

.method static synthetic access$2902(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mDisplaySentTimeColumn:I

    return p1
.end method

.method static synthetic access$3000(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mErrorCodeColumn:I

    return v0
.end method

.method static synthetic access$3002(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mErrorCodeColumn:I

    return p1
.end method

.method static synthetic access$3100(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mDeltaColumn:I

    return v0
.end method

.method static synthetic access$3102(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mDeltaColumn:I

    return p1
.end method

.method static synthetic access$3200(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/talk/ChatView;->mSendStatusColumn:I

    return v0
.end method

.method static synthetic access$3202(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mSendStatusColumn:I

    return p1
.end method

.method static synthetic access$3300(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->updateState()V

    return-void
.end method

.method static synthetic access$3402(Lcom/google/android/talk/ChatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mChatHistoryQueryComplete:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/talk/ChatView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/talk/ChatView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->requeryForChatHistory()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/talk/ChatView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/ChatView;->startGroupChatApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$4800()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I

    return v0
.end method

.method static synthetic access$4802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    sput p0, Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I

    return p0
.end method

.method static synthetic access$4900(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getGroupchatShortname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/google/android/talk/ChatView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/ChatView;->scheduleRequery(J)V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->cancelRequery()V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$AvatarCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/google/android/talk/ChatView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatColors:[I

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/android/talk/ChatView;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mGroupChatColors:[I

    return-object p1
.end method

.method static synthetic access$5900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/PictureCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mPictureCache:Lcom/google/android/talk/PictureCache;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->userActionDetected()V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->removeInvitationListener()V

    return-void
.end method

.method static synthetic access$6702(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/google/android/talk/ChatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mFocused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/google/android/talk/ChatView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/google/android/talk/ChatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mPaused:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/CallTaskDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/talk/ChatView;->mPresenceStatus:I

    return p1
.end method

.method private cancelRequery()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    if-eqz v0, :cond_0

    .line 1035
    const-string v0, "cancelRequery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 1039
    :cond_0
    return-void
.end method

.method private fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x40

    const/4 v1, -0x1

    .line 741
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixGroupchatNickname for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 p1, 0x0

    .line 751
    :cond_0
    :goto_0
    return-object p1

    .line 745
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 746
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 747
    if-le v0, v1, :cond_0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getAccountIdFromIntent(Landroid/content/Intent;)J
    .locals 3
    .parameter

    .prologue
    .line 2292
    const-string v0, "accountId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2288
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupchatShortname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nickname"

    .prologue
    .line 758
    if-nez p1, :cond_0

    .line 759
    const/4 v1, 0x0

    .line 771
    :goto_0
    return-object v1

    .line 762
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 763
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 764
    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 767
    :cond_1
    if-ltz v0, :cond_2

    .line 768
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 771
    goto :goto_0
.end method

.method private initAccountIdFromSavedStates(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 2467
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2468
    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAccountIdFromSavedStates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2471
    :cond_0
    return-void
.end method

.method private initializeMessageBarState()V
    .locals 3

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Z)V

    .line 3238
    return-void
.end method

.method private insertBuddyStatus()V
    .locals 2

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mContactQueryComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mChatHistoryQueryComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mStatusMessagePrimed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mCustomStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There\'s no chat history with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inserting status line into history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (status is \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mCustomStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 845
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mStatusMessagePrimed:Z

    .line 846
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/ChatView$4;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$4;-><init>(Lcom/google/android/talk/ChatView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 644
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

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

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 650
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

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

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_0
    return-void
.end method

.method private pictureLoaded(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->notifyDataSetInvalidated()V

    .line 1858
    return-void
.end method

.method private removeInvitationListener()V
    .locals 3

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z

    if-nez v0, :cond_1

    .line 2116
    const-string v0, "removeInvitationListener: not registered, bail"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInvitationListener: mImSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2122
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    if-eqz v0, :cond_2

    .line 2124
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 2125
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->clearRefs()V

    .line 2126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    .line 2128
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2130
    :catch_0
    move-exception v0

    .line 2131
    const-string v1, "talk"

    const-string v2, "removeInvitationListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requeryForChatHistory()V
    .locals 0

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->startQueryForChatHistory()V

    .line 1020
    return-void
.end method

.method private resolveChatUrlIntent(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 2259
    const-string v0, "groupChat"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2260
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 2262
    if-ne v0, v5, :cond_0

    .line 2263
    invoke-virtual {p2}, Lcom/google/android/talk/util/ChatList;->getType()I

    move-result v5

    .line 2264
    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    move v0, v1

    .line 2265
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveChatUrlIntent: contact type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 2269
    :cond_0
    if-lez v0, :cond_2

    .line 2270
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    .line 2271
    iput-object p3, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    .line 2272
    invoke-static {v3, v4}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    .line 2277
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 2264
    goto :goto_0

    .line 2274
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    .line 2275
    invoke-static {p4, p5, p3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private resolveIntent(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2296
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 2297
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2298
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 2299
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v4

    .line 2301
    const-string v1, "vnd.android.cursor.item/gtalk-chats"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2302
    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/ChatView;->resolveChatUrlIntent(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;Ljava/lang/String;J)V

    .line 2307
    :goto_0
    invoke-static {v3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    .line 2308
    iput-wide v4, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    .line 2310
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveIntent: url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2314
    :cond_0
    return-void

    .line 2304
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/google/android/talk/ChatView;->resolveMessageUrlIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resolveMessageUrlIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2280
    const-string v0, "is_muc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    .line 2281
    iput-object p2, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    .line 2282
    const-string v0, "muc_inviter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    .line 2283
    const-string v0, "muc_password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;

    .line 2284
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    .line 2285
    return-void
.end method

.method private scheduleRequery(J)V
    .locals 2
    .parameter

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Lcom/google/android/talk/ChatView$RequeryCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/ChatView$RequeryCallback;-><init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/ChatView$1;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 1029
    :goto_0
    const-string v0, "scheduleRequery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1031
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startGroupChatApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 864
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startGroupChatAppoval inviter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", room = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 869
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    if-eqz v0, :cond_1

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGroupChatApprovalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not starting another"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 883
    :goto_0
    return-void

    .line 875
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/google/android/talk/GroupChatApproval;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    const-string v1, "muc_inviter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v1, "approval"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 878
    const-string v1, "room"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v1, "accountId"

    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 881
    iput-boolean v4, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 882
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v1, v0, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startQueryForChatHistory()V
    .locals 8

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 1004
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$QueryHandler;->cancelOperation(I)V

    .line 1006
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQueryForChatHistory: uri="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    sget-object v4, Lcom/google/android/talk/ChatView;->MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/google/android/talk/ChatView;->SORT_ORDER:Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/talk/ChatView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->update()V

    .line 617
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->update(Landroid/view/View;)V

    .line 618
    return-void
.end method

.method private updateWarningView()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2356
    .line 2358
    const/4 v0, 0x0

    .line 2360
    iget-boolean v3, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    if-eqz v3, :cond_1

    .line 2361
    iget v3, p0, Lcom/google/android/talk/ChatView;->mPresenceStatus:I

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    if-nez v3, :cond_1

    .line 2364
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 2365
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0054

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2369
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mStatusWarningView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    if-nez v1, :cond_0

    .line 2371
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mWarningIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2372
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2374
    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private userActionDetected()V
    .locals 1

    .prologue
    .line 1861
    const-string v0, "user action detected..."

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 1863
    return-void
.end method


# virtual methods
.method public addInvitationListener()V
    .locals 3

    .prologue
    .line 2094
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 2095
    const-string v0, "addInvitationListener: already registered, bail"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInvitationListener: mImSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    if-nez v0, :cond_2

    .line 2104
    new-instance v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    .line 2105
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 2107
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    const-string v1, "talk"

    const-string v2, "addInvitationListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearChat()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2804
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2807
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Lcom/google/android/gtalkservice/IChatSession;->clearChatHistory(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2812
    :goto_0
    sget-object v0, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mChatsTableContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2815
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2816
    const-string v3, "last_message_date"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2817
    const-string v3, "last_unread_message"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v1, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2820
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->requeryForChatHistory()V

    .line 2821
    return-void

    .line 2808
    :catch_0
    move-exception v0

    .line 2809
    const-string v2, "talk"

    const-string v3, "got exception calling chatSession.clearChatHistory() "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dismissChatNotification()V
    .locals 4

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 2318
    if-nez v0, :cond_0

    .line 2319
    const-string v0, "talk"

    const-string v1, "dismissChatNotification: no GTalkService object found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :goto_0
    return-void

    .line 2324
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissChatNotification for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2325
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationFor(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2329
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->dismissPopupNotification(Landroid/app/Activity;)V

    goto :goto_0

    .line 2326
    :catch_0
    move-exception v0

    .line 2327
    const-string v1, "talk"

    const-string v2, "dismissChatNotification: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public endVideoOrVoiceChat()V
    .locals 2

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 3075
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    new-instance v1, Lcom/google/android/talk/ChatView$12;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$12;-><init>(Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V

    .line 3084
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/RingerService;->forceStopRinger(Landroid/content/Context;)V

    .line 3085
    return-void
.end method

.method public focus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focus for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 622
    iput-boolean v3, p0, Lcom/google/android/talk/ChatView;->mFocused:Z

    .line 624
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->bind()V

    .line 625
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->updateState()V

    .line 627
    iput-boolean v3, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    .line 631
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->addInvitationListener()V

    .line 633
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mDismissNotificationWhenGainedFocus:Z

    invoke-virtual {p0, v0}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 634
    iput-boolean v2, p0, Lcom/google/android/talk/ChatView;->mDismissNotificationWhenGainedFocus:Z

    .line 636
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChatOnFirstDisplay:Z

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->startVoiceChat()V

    .line 638
    iput-boolean v2, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChatOnFirstDisplay:Z

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 641
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 608
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    return-wide v0
.end method

.method public getBestAvailableJid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3221
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getJidAddress()Ljava/lang/String;

    move-result-object v0

    .line 3223
    .local v0, jid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3225
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 3228
    :cond_0
    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/google/android/talk/ChatView;->mCapabilities:I

    return v0
.end method

.method public getChatsTableContactId()J
    .locals 2

    .prologue
    .line 600
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mChatsTableContactId:J

    return-wide v0
.end method

.method public getClientType()I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Lcom/google/android/talk/ChatView;->mClientType:I

    return v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCustomStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mCustomStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method public getJidAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;

    return-object v0
.end method

.method public getMucParticipants()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 2043
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2047
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->getParticipants()[Ljava/lang/String;

    move-result-object v2

    .line 2048
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 2049
    invoke-direct {p0, v4}, Lcom/google/android/talk/ChatView;->fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2050
    const-string v5, "private-chat-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2051
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMucParticipants: add participant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2052
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveChat: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2061
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    const-string v2, "private-chat-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMucParticipants: add mMucInviter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2063
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2068
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2069
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    const-string v2, "private-chat-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMucParticipants: add mContact "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2075
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    :goto_0
    return-object v0

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseAbbreviatedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelectedAudioDevice()Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 1

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object v0
.end method

.method public getSelfAvatar()V
    .locals 5

    .prologue
    .line 3796
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 3798
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    .line 3799
    new-instance v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 3800
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    iput-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 3801
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 3803
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    .line 3804
    .local v1, app:Lcom/google/android/talk/TalkApp;
    new-instance v2, Lcom/google/android/talk/ChatView$21;

    invoke-direct {v2, p0, v0}, Lcom/google/android/talk/ChatView$21;-><init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 3822
    .local v2, update:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    invoke-virtual {v1, v0, v2}, Lcom/google/android/talk/TalkApp;->getSelfAvatarDataForAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V

    .line 3824
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #app:Lcom/google/android/talk/TalkApp;
    .end local v2           #update:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    :cond_0
    return-void
.end method

.method public getSession()Lcom/google/android/gtalkservice/IChatSession;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/google/android/talk/ChatView;->mPresenceStatus:I

    return v0
.end method

.method public getVideoChatState()Lcom/google/android/talk/ChatView$VideoChatState;
    .locals 1

    .prologue
    .line 3768
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v0

    return-object v0
.end method

.method public goOffTheRecord(Z)V
    .locals 4
    .parameter

    .prologue
    .line 2080
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2081
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    if-eqz v1, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gtalkservice/IImSession;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 2091
    :goto_0
    return-void

    .line 2086
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gtalkservice/IImSession;->goOffRecordWithContacts(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goOffTheRecord caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleAudioChoice(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 3872
    packed-switch p1, :pswitch_data_0

    .line 3896
    :goto_0
    return-void

    .line 3874
    :pswitch_0
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 3889
    .local v0, audioDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    :goto_1
    move-object v1, v0

    .line 3890
    .local v1, audioDeviceFinal:Lcom/google/android/videochat/CallSession$AudioDevice;
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    new-instance v3, Lcom/google/android/talk/ChatView$22;

    invoke-direct {v3, p0, v1}, Lcom/google/android/talk/ChatView$22;-><init>(Lcom/google/android/talk/ChatView;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V

    goto :goto_0

    .line 3877
    .end local v0           #audioDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    .end local v1           #audioDeviceFinal:Lcom/google/android/videochat/CallSession$AudioDevice;
    :pswitch_1
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 3878
    .restart local v0       #audioDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    goto :goto_1

    .line 3880
    .end local v0           #audioDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    :pswitch_2
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 3881
    .restart local v0       #audioDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    goto :goto_1

    .line 3883
    .end local v0           #audioDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    :pswitch_3
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 3884
    .restart local v0       #audioDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    goto :goto_1

    .line 3872
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000b6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleUnreadMessages(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->dismissChatNotification()V

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v0, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->markAsRead()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUnreadMessages caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initSession(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2003
    iget-boolean v2, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 2004
    const-string v1, "initSession: already inited, !force, bail"

    invoke-direct {p0, v1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2037
    :goto_0
    return v0

    .line 2008
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    .line 2011
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 2012
    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 2014
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 2015
    const-string v0, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSession: accountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mImSession is null, not ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2017
    goto :goto_0

    .line 2020
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;

    .line 2021
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    .line 2022
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSession: found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2026
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v0, :cond_4

    .line 2027
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    if-nez v0, :cond_3

    .line 2028
    new-instance v0, Lcom/google/android/talk/ChatView$ChatListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$ChatListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    .line 2030
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IChatSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 2031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    goto/16 :goto_0

    .line 2033
    :catch_0
    move-exception v0

    .line 2034
    const-string v1, "talk"

    const-string v2, "initSession: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public initialize(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 17
    .parameter "intent"
    .parameter "switcher"
    .parameter "savedState"
    .parameter "context"

    .prologue
    .line 440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;

    .line 442
    new-instance v2, Lcom/google/android/talk/videochat/CallTaskDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/google/android/talk/videochat/CallTaskDispatcher;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/talk/ChatView;->mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    .line 444
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    .line 445
    .local v14, lastAccount:J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/talk/ChatView;->resolveIntent(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;)V

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/talk/ChatView;->initAccountIdFromSavedStates(Landroid/os/Bundle;)V

    .line 447
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    cmp-long v2, v2, v14

    if-eqz v2, :cond_0

    .line 448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    .line 451
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 452
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->getCachedContactId(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/talk/ChatView;->mContactId:J

    .line 454
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/util/ChatList;->getClientType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/talk/ChatView;->mClientType:I

    .line 456
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInitialized was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/talk/ChatView;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 460
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mInitialized:Z

    .line 461
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mPaused:Z

    .line 462
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/talk/ChatView;->mPresenceStatus:I

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 465
    new-instance v2, Lcom/google/android/talk/ChatView$ChatAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/talk/ChatView$ChatAdapter;-><init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 471
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    .line 473
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/talk/PictureCache;->getInstance(Ljava/lang/String;JZ)Lcom/google/android/talk/PictureCache;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/talk/ChatView;->mPictureCache:Lcom/google/android/talk/PictureCache;

    .line 479
    new-instance v7, Lcom/google/android/talk/ChatView$2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lcom/google/android/talk/ChatView$2;-><init>(Lcom/google/android/talk/ChatView;Landroid/os/Handler;)V

    .line 492
    .local v7, observer:Landroid/database/ContentObserver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mContactQueryComplete:Z

    .line 494
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mChatHistoryQueryComplete:Z

    .line 495
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView;->mStatusMessagePrimed:Z

    .line 496
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    new-instance v2, Lcom/google/android/talk/ContactInfoQuery;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    new-instance v3, Lcom/google/android/talk/ChatView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/talk/ChatView$3;-><init>(Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v2, v3}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v2, v3}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v2}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->startQueryForChatHistory()V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v2, :cond_2

    .line 570
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    if-nez v2, :cond_2

    .line 571
    new-instance v2, Lcom/google/android/talk/ChatView$ConnectionStateListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/talk/ChatView$ConnectionStateListener;-><init>(Lcom/google/android/talk/ChatView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    .line 572
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/talk/ChatView$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 580
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->updateWarningView()V

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->getSelfAvatar()V

    .line 583
    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    .line 584
    .local v16, m:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 585
    return-void

    .line 496
    .end local v16           #m:Landroid/util/DisplayMetrics;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 576
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    return v0
.end method

.method public isOffTheRecord()Z
    .locals 2

    .prologue
    .line 2232
    const/4 v0, 0x0

    .line 2233
    .local v0, isOffTheRecord:Z
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v1, :cond_0

    .line 2235
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatSession;->isOffTheRecord()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2239
    :cond_0
    :goto_0
    return v0

    .line 2236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public leaveChat()V
    .locals 4

    .prologue
    .line 2244
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v0

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    if-eq v0, v1, :cond_0

    .line 2245
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v0, :cond_1

    .line 2248
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    :cond_1
    :goto_0
    return-void

    .line 2250
    :catch_0
    move-exception v0

    .line 2251
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leaveChat: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public matchBuddy(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, contact:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    .line 431
    .local v0, accountId:J
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mPaused:Z

    .line 720
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mPaused:Z

    .line 716
    return-void
.end method

.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 4
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 3242
    if-eqz p2, :cond_0

    .line 3243
    iget v0, p2, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    packed-switch v0, :pswitch_data_0

    .line 3292
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3245
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3246
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v0, p2, Lcom/google/android/videochat/CallState;->video:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_1
    iget-object v2, p2, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v3, p2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_1

    .line 3257
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3258
    iget-boolean v0, p2, Lcom/google/android/videochat/CallState;->video:Z

    if-eqz v0, :cond_3

    .line 3259
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v0, p2, Lcom/google/android/videochat/CallState;->mute:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_2
    iget-object v2, p2, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v3, p2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_2

    .line 3263
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v0, p2, Lcom/google/android/videochat/CallState;->mute:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_3
    iget-object v2, p2, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v3, p2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_3

    .line 3270
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3271
    iget-boolean v0, p2, Lcom/google/android/videochat/CallState;->video:Z

    if-eqz v0, :cond_5

    .line 3272
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    iget-object v2, p2, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v3, p2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    goto :goto_0

    .line 3275
    :cond_5
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v0, p2, Lcom/google/android/videochat/CallState;->mute:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_4
    iget-object v2, p2, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v3, p2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_4

    .line 3286
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3287
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    goto/16 :goto_0

    .line 3243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v1, v2, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    .line 306
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    const v4, 0x7f0b0031

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 314
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 317
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2378
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2379
    const-string v0, "Back button pressed, finish activity"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2380
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2381
    const/4 v0, 0x1

    .line 2384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2345
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 2347
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2348
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2349
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->startQueryForChatHistory()V

    .line 2353
    :goto_0
    return-void

    .line 2351
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->requeryForChatHistory()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 678
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 682
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInitialized:Z

    if-nez v0, :cond_1

    .line 712
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->cleanupContactInfoCursor()V

    .line 687
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$ChatAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 689
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 693
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->cancelRequery()V

    .line 694
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->unfocus()V

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_3

    .line 698
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 699
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$ConnectionStateListener;->clearRefs()V

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    if-eqz v0, :cond_4

    .line 703
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 704
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$ChatListener;->clearRefs()V

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop: remove listeners caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restoreUnsentComposedMessage(Landroid/widget/EditText;)V
    .locals 2
    .parameter

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-nez v0, :cond_0

    .line 2195
    :goto_0
    return-void

    .line 2164
    :cond_0
    new-instance v0, Lcom/google/android/talk/ChatView$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/ChatView$6;-><init>(Lcom/google/android/talk/ChatView;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    .line 2193
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2194
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public resumeVideoChat()V
    .locals 4

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getBestAvailableJid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityCallInProgress(Landroid/content/Context;JLjava/lang/String;)V

    .line 3234
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 2198
    if-nez p1, :cond_0

    .line 2218
    :goto_0
    return-void

    .line 2203
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 2204
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2206
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_1

    .line 2208
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v0

    .line 2210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState: store account id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 2211
    const-string v2, "accountId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    :cond_1
    :goto_1
    const-string v0, "mucrequest"

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    const-string v1, "talk"

    const-string v2, "onSaveInstanceState: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public saveUnsentComposedMessage(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    .line 2136
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2138
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUnsentComposedMessage: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 2141
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v1, :cond_1

    .line 2142
    new-instance v1, Lcom/google/android/talk/ChatView$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/ChatView$5;-><init>(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2156
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2158
    :cond_1
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    :goto_0
    return-void

    .line 2338
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0, p1}, Lcom/google/android/gtalkservice/IChatSession;->sendChatMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    const-string v1, "talk"

    const-string v2, "sendMessage: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallStateClient(Lcom/google/android/videochat/CallStateClient;)V
    .locals 0
    .parameter "callStateClient"

    .prologue
    .line 3772
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    .line 3773
    return-void
.end method

.method public setStartVoiceChatOnFirstDisplay(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChatOnFirstDisplay:Z

    .line 613
    return-void
.end method

.method public setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V
    .locals 11
    .parameter "lp"
    .parameter "host"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 329
    .local v0, context:Landroid/content/Context;
    iput-object p2, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    .line 330
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    .line 331
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    .line 332
    new-instance v9, Lcom/google/android/talk/ChatView$QueryHandler;

    invoke-direct {v9, p0, v0}, Lcom/google/android/talk/ChatView$QueryHandler;-><init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    .line 333
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lcom/google/android/talk/ChatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;

    .line 340
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040016

    invoke-virtual {v9, v10, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 342
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/google/android/talk/ChatView;->setOrientation(I)V

    .line 345
    const v9, 0x7f100042

    invoke-virtual {p0, v9}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    .line 346
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 356
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 358
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 360
    const v9, 0x7f100043

    invoke-virtual {p0, v9}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mStatusWarningView:Landroid/view/View;

    .line 361
    const v9, 0x7f100044

    invoke-virtual {p0, v9}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mWarningIcon:Landroid/widget/ImageView;

    .line 362
    const v9, 0x7f100045

    invoke-virtual {p0, v9}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mWarningText:Landroid/widget/TextView;

    .line 364
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    .line 365
    .local v7, tabletMode:Z
    if-eqz v7, :cond_2

    .line 366
    new-instance v9, Lcom/google/android/talk/ChatView$TabletMessageBar;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/google/android/talk/ChatView$TabletMessageBar;-><init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/ChatView$1;)V

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    .line 371
    :goto_0
    if-eqz v7, :cond_1

    .line 372
    const v9, 0x7f100041

    invoke-virtual {p0, v9}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 373
    .local v8, uber:Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v9}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->getMessageBar()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 374
    .local v4, mb:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_1

    .line 375
    const v9, 0x7f100042

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 377
    .local v1, hi:Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 379
    .local v6, mbLayoutOld:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 381
    .local v3, hiLayoutOld:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v5, mbLayout:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    .local v2, hiLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 389
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 391
    const/16 v9, 0x30

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 392
    iget-object v9, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 393
    const/4 v9, 0x0

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 395
    const/16 v9, 0x9

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 396
    const/16 v9, 0xa

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 397
    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 398
    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 400
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    .end local v1           #hi:Landroid/view/View;
    .end local v2           #hiLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #hiLayoutOld:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #mb:Landroid/widget/LinearLayout;
    .end local v5           #mbLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #mbLayoutOld:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #uber:Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 368
    :cond_2
    new-instance v9, Lcom/google/android/talk/ChatView$PhoneMessageBar;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/google/android/talk/ChatView$PhoneMessageBar;-><init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/ChatView$1;)V

    iput-object v9, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    goto/16 :goto_0
.end method

.method public startVideoChat()V
    .locals 5

    .prologue
    .line 3191
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3192
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3210
    :goto_0
    return-void

    .line 3198
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->startVideoChatAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3202
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/ChatView$19;

    invoke-direct {v2, p0}, Lcom/google/android/talk/ChatView$19;-><init>(Lcom/google/android/talk/ChatView;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3198
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startVoiceChat()V
    .locals 2

    .prologue
    .line 3048
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3049
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3064
    :goto_0
    return-void

    .line 3054
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 3056
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    new-instance v1, Lcom/google/android/talk/ChatView$10;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$10;-><init>(Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V

    goto :goto_0
.end method

.method public toggleMute()V
    .locals 5

    .prologue
    .line 3089
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v2

    .line 3090
    .local v2, nextState:Lcom/google/android/talk/ChatView$VideoChatState;
    sget-object v3, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    iget-object v4, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v4}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3108
    const/4 v0, 0x0

    .line 3112
    .local v0, muted:Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 3113
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v3, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 3115
    move v1, v0

    .line 3117
    .local v1, mutedFinal:Z
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;

    new-instance v4, Lcom/google/android/talk/ChatView$13;

    invoke-direct {v4, p0, v1}, Lcom/google/android/talk/ChatView$13;-><init>(Lcom/google/android/talk/ChatView;Z)V

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V

    .line 3124
    .end local v1           #mutedFinal:Z
    :cond_0
    return-void

    .line 3092
    .end local v0           #muted:Z
    :pswitch_0
    const/4 v0, 0x0

    .line 3093
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 3094
    goto :goto_0

    .line 3096
    .end local v0           #muted:Z
    :pswitch_1
    const/4 v0, 0x1

    .line 3097
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 3098
    goto :goto_0

    .line 3100
    .end local v0           #muted:Z
    :pswitch_2
    const/4 v0, 0x0

    .line 3101
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 3102
    goto :goto_0

    .line 3104
    .end local v0           #muted:Z
    :pswitch_3
    const/4 v0, 0x1

    .line 3105
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 3106
    goto :goto_0

    .line 3090
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public unfocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unfocus for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0, v2}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mDismissNotificationWhenGainedFocus:Z

    .line 730
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->removeInvitationListener()V

    .line 731
    iput-boolean v2, p0, Lcom/google/android/talk/ChatView;->mFocused:Z

    .line 732
    return-void
.end method

.method public updateHost()V
    .locals 5

    .prologue
    .line 656
    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v1, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->update(Landroid/view/View;)V

    .line 659
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mFocused:Z

    if-eqz v1, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getStatus()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getCapabilities()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageBar;->setTitle(Ljava/lang/String;III)V

    .line 663
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method
