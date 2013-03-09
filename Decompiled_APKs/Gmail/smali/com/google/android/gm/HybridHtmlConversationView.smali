.class public Lcom/google/android/gm/HybridHtmlConversationView;
.super Lcom/google/android/gm/ConversationView;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Lcom/google/android/gm/ContactInfoSource;
.implements Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;
.implements Lcom/google/android/gm/ConversationViewable;
.implements Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;
.implements Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/HybridHtmlConversationView$6;,
        Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;,
        Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;,
        Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;,
        Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;,
        Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;,
        Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;,
        Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;,
        Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;
    }
.end annotation


# static fields
.field private static sSnippetColor:I

.field private static sSubjectColor:I


# instance fields
.field private mAttachmentListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundView:Landroid/view/View;

.field private mBuilder:Lcom/google/android/gm/HybridHtmlConversationBuilder;

.field private mContactInfoMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/SenderInfoLoader$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mConvHeaderView:Lcom/google/android/gm/ConversationViewHeader;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mEnableContentReadySignal:Z

.field private mEnteredComposeView:Z

.field private mGmailJsInterface:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadersDrawn:Z

.field private mInfoView:Landroid/view/View;

.field private mLoadTimer:Lcom/google/android/gm/perf/Timer;

.field private mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

.field private mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

.field private mMessageListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mNewMessageNotificationText:Landroid/widget/TextView;

.field private mNewMessageNotificationView:Landroid/view/View;

.field private mOverlayHiddenUntilScrollComplete:Z

.field private mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

.field private mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

.field private mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

.field private mProgressView:Landroid/view/View;

.field private mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

.field private mSendersView:Landroid/widget/TextView;

.field private mSetReadOpenedTask:Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;

.field private final mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

.field private mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

.field private final mSpawnedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubjectView:Landroid/widget/TextView;

.field private mTempBodiesHtml:Ljava/lang/String;

.field private mTransientState:Lcom/google/android/gm/ConversationTransientState;

.field private mViewState:Lcom/google/android/gm/ConversationViewState;

.field private mWebView:Lcom/google/android/gm/CustomWebView;

.field private mWebViewClient:Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;

.field private mWebViewScrim:Landroid/view/View;

.field private mWebViewYPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 236
    sput v0, Lcom/google/android/gm/HybridHtmlConversationView;->sSubjectColor:I

    .line 237
    sput v0, Lcom/google/android/gm/HybridHtmlConversationView;->sSnippetColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/google/android/gm/ConversationView;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/google/android/gm/perf/SimpleTimer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gm/perf/SimpleTimer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    .line 111
    new-instance v0, Lcom/google/android/gm/perf/Timer;

    invoke-direct {v0}, Lcom/google/android/gm/perf/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    .line 182
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSpawnedActivities:Ljava/util/Set;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;

    .line 215
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeaders:Ljava/util/Set;

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/ConversationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Lcom/google/android/gm/perf/SimpleTimer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gm/perf/SimpleTimer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    .line 111
    new-instance v0, Lcom/google/android/gm/perf/Timer;

    invoke-direct {v0}, Lcom/google/android/gm/perf/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    .line 182
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSpawnedActivities:Ljava/util/Set;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;

    .line 215
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeaders:Ljava/util/Set;

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/ConversationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Lcom/google/android/gm/perf/SimpleTimer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gm/perf/SimpleTimer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    .line 111
    new-instance v0, Lcom/google/android/gm/perf/Timer;

    invoke-direct {v0}, Lcom/google/android/gm/perf/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    .line 182
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSpawnedActivities:Ljava/util/Set;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;

    .line 215
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeaders:Ljava/util/Set;

    .line 280
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gm/HybridHtmlConversationView;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->layoutMessageHeaders([I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gm/HybridHtmlConversationView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->dismissLoadingStatus()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mGmailJsInterface:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/perf/SimpleTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/gm/HybridHtmlConversationView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->hasAttachment()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/gm/HybridHtmlConversationView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAttachmentListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/gm/HybridHtmlConversationView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnableContentReadySignal:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->updateVisibleHeaders(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/comm/NetworkProgressMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/comm/NetworkProgressMonitor;)Lcom/google/android/gm/comm/NetworkProgressMonitor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isSingleDraftConversationCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/google/android/gm/HybridHtmlConversationView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->hasRenderedContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->updateConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->refreshWithPendingData()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->showConversationInitial(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAttachments:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/android/gm/HybridHtmlConversationView;J)Ljava/lang/Long;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/HybridHtmlConversationView;->getLocalMessageId(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridConversationScrollContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/CustomWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->revealOverlay()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gm/HybridHtmlConversationView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTempBodiesHtml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTempBodiesHtml:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/ConversationViewState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized addSpawnedActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, activity:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSpawnedActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    monitor-exit p0

    return-void

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private calculateScrollYPercent()F
    .locals 6

    .prologue
    .line 519
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v4}, Lcom/google/android/gm/CustomWebView;->getScrollY()I

    move-result v1

    .line 520
    .local v1, scrollY:I
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v4}, Lcom/google/android/gm/CustomWebView;->getHeight()I

    move-result v2

    .line 521
    .local v2, viewH:I
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v4}, Lcom/google/android/gm/CustomWebView;->getContentHeight()I

    move-result v3

    .line 522
    .local v3, webH:I
    if-eqz v3, :cond_0

    if-gt v3, v2, :cond_1

    .line 523
    :cond_0
    const/4 v0, 0x0

    .line 531
    .local v0, p:F
    :goto_0
    return v0

    .line 524
    .end local v0           #p:F
    :cond_1
    add-int v4, v1, v2

    if-lt v4, v3, :cond_2

    .line 527
    const/high16 v0, 0x3f80

    .restart local v0       #p:F
    goto :goto_0

    .line 529
    .end local v0           #p:F
    :cond_2
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .restart local v0       #p:F
    goto :goto_0
.end method

.method private createSubjectSnippet(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v0, 0x0

    .line 1712
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c014b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1714
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->ensureSubjectSnippetColors()V

    .line 1716
    sget v2, Lcom/google/android/gm/HybridHtmlConversationView;->sSubjectColor:I

    .line 1717
    if-eqz p1, :cond_0

    .line 1718
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v3, v0, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1720
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1722
    :cond_0
    if-eqz p2, :cond_1

    .line 1723
    sget v2, Lcom/google/android/gm/HybridHtmlConversationView;->sSnippetColor:I

    .line 1724
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v0, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1727
    :cond_1
    return-object v1
.end method

.method private destroyDetachedWebView()V
    .locals 2

    .prologue
    .line 507
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v1}, Lcom/google/android/gm/CustomWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 509
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v1}, Lcom/google/android/gm/CustomWebView;->destroy()V

    .line 513
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    .line 515
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private dismissLoadingStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1740
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAutoLoad:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 1742
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1743
    new-instance v1, Lcom/google/android/gm/HybridHtmlConversationView$4;

    invoke-direct {v1, p0}, Lcom/google/android/gm/HybridHtmlConversationView$4;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1768
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1774
    :goto_0
    return-void

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private ensureSubjectSnippetColors()V
    .locals 2

    .prologue
    .line 1731
    sget v0, Lcom/google/android/gm/HybridHtmlConversationView;->sSubjectColor:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1733
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/HybridHtmlConversationView;->sSubjectColor:I

    .line 1734
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/HybridHtmlConversationView;->sSnippetColor:I

    .line 1736
    :cond_0
    return-void
.end method

.method private getLoaderId(I)I
    .locals 2
    .parameter "loaderType"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p1

    return v0
.end method

.method private getLocalMessageId(J)Ljava/lang/Long;
    .locals 2
    .parameter "serverMessageId"

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1881
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1885
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized hasAlreadySpawned(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, activity:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSpawnedActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hasAttachment()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1519
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return v1

    .line 1523
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 1525
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1526
    const/4 v1, 0x1

    goto :goto_0

    .line 1523
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hasRenderedContent()Z
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideNewMessageNotification()V
    .locals 2

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mNewMessageNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1938
    return-void
.end method

.method private invalidateRenderedContent()V
    .locals 1

    .prologue
    .line 2033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    .line 2034
    return-void
.end method

.method private static isSingleDraftConversationCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Z
    .locals 3
    .parameter "messageCursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2137
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private layoutMessageHeaders([I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v0}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderCount()I

    move-result v0

    .line 791
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 792
    const-string v1, "Gmail"

    const-string v3, "Header vs. web content mismatch, ignoring. xml/html: %d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 807
    :cond_0
    return-void

    .line 797
    :cond_1
    const-string v0, "Gmail"

    const-string v1, "Conversation view revealing/[re]positioning message headers"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 800
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HeaderBlock;

    .line 802
    if-eqz v0, :cond_2

    .line 803
    aget v3, p1, v1

    invoke-interface {v0, v3}, Lcom/google/android/gm/HeaderBlock;->setMarginBottom(I)V

    .line 804
    invoke-interface {v0, v2}, Lcom/google/android/gm/HeaderBlock;->setVisibility(I)V

    .line 800
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/google/android/gm/ConversationViewable;
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "listContext"
    .parameter "info"
    .parameter "autoLoad"
    .parameter "senders"
    .parameter "subject"
    .parameter "snippet"

    .prologue
    .line 246
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040034

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/HybridHtmlConversationView;

    .line 249
    .local v1, conversationView:Lcom/google/android/gm/HybridHtmlConversationView;
    iget-object v3, v1, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    invoke-virtual {v3}, Lcom/google/android/gm/perf/SimpleTimer;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "conversation load"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, sessionName:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 252
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p3}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    rem-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    iget-object v3, v1, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gm/perf/SimpleTimer;->start(Ljava/lang/String;)V

    .line 258
    .end local v2           #sessionName:Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "account"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "conversation"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    const-string v3, "auto-load"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v3, "conversation-list"

    invoke-virtual {p2}, Lcom/google/android/gm/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 263
    const-string v3, "senders"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 264
    const-string v3, "subject"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 265
    const-string v3, "snippet"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v1, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->setArguments(Landroid/os/Bundle;)V

    .line 267
    return-object v1
.end method

.method private declared-synchronized refreshWithPendingData()V
    .locals 5

    .prologue
    .line 1275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1281
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->calculateScrollYPercent()F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    .line 1284
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/gm/ConversationView$ConversationViewException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1295
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 1296
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isCloned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eq v1, v0, :cond_1

    .line 1297
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1287
    :catch_0
    move-exception v0

    .line 1292
    :try_start_4
    const-string v2, "Gmail"

    const-string v3, "Error updating rendered info"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private renderUpdatedMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 6
    .parameter

    .prologue
    .line 1029
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v0

    .line 1030
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-static {v2, v0, v1}, Lcom/google/android/gm/MessageHeaderView;->find(Landroid/view/ViewGroup;J)Lcom/google/android/gm/MessageHeaderView;

    move-result-object v2

    .line 1032
    if-eqz v2, :cond_0

    .line 1033
    invoke-virtual {v2, p1}, Lcom/google/android/gm/MessageHeaderView;->render(Lcom/google/android/gm/provider/Gmail$MessageCursor;)I

    move-result v2

    .line 1034
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationView;->setMessageSpacerHeight(JI)V

    .line 1039
    :goto_0
    return-void

    .line 1036
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "unable to update header for message id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private declared-synchronized resetSpawnedActivities()V
    .locals 1

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSpawnedActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    monitor-exit p0

    return-void

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private revealOverlay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayHiddenUntilScrollComplete:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MessageHeaderScrollView;->setVisibility(I)V

    .line 543
    iput-boolean v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayHiddenUntilScrollComplete:Z

    .line 545
    :cond_0
    return-void
.end method

.method private showConversationInitial(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 4
    .parameter

    .prologue
    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    const-string v1, "begin conversation render"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 719
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    const-string v1, "end conversation render"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/SimpleTimer;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gm/ConversationView$ConversationViewException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 724
    const-string v1, "Gmail"

    const-string v2, "Error rendering conversation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 725
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->notifyConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V

    goto :goto_0
.end method

.method private declared-synchronized showConversationInternal(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;)V
    .locals 6
    .parameter

    .prologue
    .line 849
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->getViewState()Lcom/google/android/gm/ConversationViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    .line 850
    invoke-virtual {p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->getRenderState()Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    .line 851
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->hideNewMessageNotification()V

    .line 865
    const-string v0, "from loadData to onPageFinished"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gm/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 872
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x-thread://conversation/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->getHtml()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/CustomWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    monitor-exit p0

    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 7
    .parameter

    .prologue
    .line 736
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gm/perf/Timer;

    invoke-direct {v0}, Lcom/google/android/gm/perf/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    .line 737
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    const-string v1, "load total"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 739
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 742
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->updateMaxMessageId()V

    .line 744
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gm/CustomWebView;->getWidth()I

    move-result v5

    .line 750
    iget v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MessageHeaderScrollView;->setVisibility(I)V

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayHiddenUntilScrollComplete:Z

    .line 753
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v1, Lcom/google/android/gm/HybridHtmlConversationView$3;

    invoke-direct {v1, p0}, Lcom/google/android/gm/HybridHtmlConversationView$3;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->addScrollListener(Lcom/google/android/gm/ScrollNotifier$ScrollListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBuilder:Lcom/google/android/gm/HybridHtmlConversationBuilder;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    iget-boolean v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnableContentReadySignal:Z

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderConversation(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/ConversationViewState;IZ)Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 771
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-static {v1}, Lcom/google/android/gm/ConversationTransientState;->create(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Lcom/google/android/gm/ConversationTransientState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    .line 773
    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->showConversationInternal(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    monitor-exit p0

    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    :try_start_3
    new-instance v1, Lcom/google/android/gm/ConversationView$ConversationViewException;

    const-string v2, "OOM error while rendering conversation html"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gm/ConversationView$ConversationViewException;-><init>(Lcom/google/android/gm/ConversationView;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showLoadingStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1701
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1702
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSenders:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mInfoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSendersView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSenders:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1705
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSubject:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnippet:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationView;->createSubjectSnippet(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    :goto_0
    return-void

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNewMessageNotification(Ljava/lang/String;)V
    .locals 2
    .parameter "notificationMsg"

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mNewMessageNotificationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1933
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mNewMessageNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1934
    return-void
.end method

.method private declared-synchronized startLoadingConversation(Z)V
    .locals 4
    .parameter

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAutoLoad:I

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->setVisibility(I)V

    .line 689
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->invalidateRenderedContent()V

    .line 691
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    const-string v1, "begin conversation loader load"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 692
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 693
    const-string v1, "conversationId"

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 694
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderId(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 699
    if-nez p1, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->showLoadingStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 703
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->setVisibility(I)V

    .line 704
    iget v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAutoLoad:I

    if-nez v0, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->showLoadingStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 12
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 882
    monitor-enter p0

    const/4 v0, -0x1

    .line 885
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/HashSet;-><init>(I)V

    move v3, v4

    move v5, v0

    move v0, v4

    .line 890
    :goto_0
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 891
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v9

    .line 892
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gm/ConversationTransientState;->inOutbox(J)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLabelCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v5

    if-nez v5, :cond_2

    move v6, v1

    .line 896
    :goto_1
    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gm/ConversationTransientState;->hasRenderedMessage(J)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gm/ConversationTransientState;->getSender(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    .line 900
    :goto_2
    if-nez v6, :cond_0

    if-eqz v5, :cond_4

    .line 917
    :cond_0
    const-string v0, "Gmail"

    const-string v5, "rendering updated message header for msg: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v0, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 919
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->renderUpdatedMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    move v0, v1

    :cond_1
    :goto_3
    move v5, v7

    .line 956
    goto :goto_0

    :cond_2
    move v6, v4

    .line 894
    goto :goto_1

    :cond_3
    move v5, v4

    .line 896
    goto :goto_2

    .line 922
    :cond_4
    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gm/ConversationTransientState;->hasRenderedMessage(J)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gm/ConversationTransientState;->isDraft(J)Z

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v6

    if-eq v5, v6, :cond_8

    .line 932
    const-string v4, "Gmail"

    const-string v5, "update conversation re-rendering due to draft change: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v1

    .line 958
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationTransientState;->getLocalIdSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 959
    const-string v4, "Gmail"

    const-string v5, "found some rendered messages were deleted, re-rendering"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v1

    .line 965
    :cond_6
    if-eqz v4, :cond_b

    .line 966
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->calculateScrollYPercent()F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/gm/ConversationView$ConversationViewException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1026
    :cond_7
    :goto_5
    monitor-exit p0

    return-void

    .line 940
    :cond_8
    :try_start_2
    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gm/ConversationTransientState;->hasRenderedMessage(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 944
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 945
    :cond_9
    const-string v4, "Gmail"

    const-string v5, "update conversation re-rendering due to new outbox or draft msg: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v1

    .line 949
    goto :goto_4

    .line 952
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 953
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 973
    :catch_0
    move-exception v0

    .line 978
    const-string v1, "Gmail"

    const-string v2, "Error updating rendered info"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 983
    :cond_b
    if-lez v3, :cond_e

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 987
    if-ne v3, v1, :cond_d

    .line 989
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBuilder:Lcom/google/android/gm/HybridHtmlConversationBuilder;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Lcom/google/android/gm/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 992
    invoke-virtual {v1}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 994
    :cond_c
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->showNewMessageNotification(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 1006
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    goto/16 :goto_5

    .line 998
    :cond_d
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1008
    :cond_e
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v1, :cond_f

    .line 1011
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    goto/16 :goto_5

    .line 1018
    :cond_f
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 1019
    invoke-static {p1}, Lcom/google/android/gm/ConversationTransientState;->create(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Lcom/google/android/gm/ConversationTransientState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTransientState:Lcom/google/android/gm/ConversationTransientState;

    .line 1021
    if-eqz v0, :cond_7

    .line 1023
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->updateMaxMessageId()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5
.end method

.method private updateMaxMessageId()V
    .locals 4

    .prologue
    .line 777
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 778
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 781
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v3

    if-nez v3, :cond_1

    .line 782
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v1

    .line 783
    .local v1, maxMessageId:J
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gm/ConversationInfo;->updateMaxMessageId(J)V

    .line 787
    .end local v1           #maxMessageId:J
    :cond_0
    return-void

    .line 777
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private updateVisibleHeaders(Lcom/google/common/collect/ImmutableMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/SenderInfoLoader$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1852
    .local p1, infoMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/google/android/gm/SenderInfoLoader$ContactInfo;>;"
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    .line 1854
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    if-eqz v2, :cond_0

    .line 1855
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v2}, Lcom/google/android/gm/MessageHeaderView;->updateContactInfo()V

    .line 1858
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v2}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1859
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HeaderBlock;

    .line 1860
    .local v0, header:Lcom/google/android/gm/HeaderBlock;
    if-eqz v0, :cond_1

    .line 1861
    invoke-interface {v0}, Lcom/google/android/gm/HeaderBlock;->updateContactInfo()V

    .line 1858
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1864
    .end local v0           #header:Lcom/google/android/gm/HeaderBlock;
    :cond_2
    return-void
.end method


# virtual methods
.method public changeLabels()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->changeLabels()V

    .line 1192
    return-void
.end method

.method public collapseSnappyHeader(Lcom/google/android/gm/MessageHeaderView;)V
    .locals 6
    .parameter

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {p1}, Lcom/google/android/gm/MessageHeaderView;->getLocalMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/MessageHeaderView;->find(Landroid/view/ViewGroup;J)Lcom/google/android/gm/MessageHeaderView;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/MessageHeaderView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    const-string v1, "Gmail"

    const-string v2, "collapsing snap header, first jumping to y=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/gm/MessageHeaderView;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 835
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gm/MessageHeaderView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/CustomWebView;->setScrollY(I)V

    .line 836
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/gm/MessageHeaderView;->setVisibility(I)V

    .line 837
    invoke-virtual {p1}, Lcom/google/android/gm/MessageHeaderView;->unbind()V

    .line 838
    invoke-virtual {v0}, Lcom/google/android/gm/MessageHeaderView;->toggleExpanded()V

    .line 840
    :cond_0
    return-void
.end method

.method public editDraft(J)V
    .locals 2
    .parameter

    .prologue
    .line 1154
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->hasAlreadySpawned(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gm/ComposeActivity;->draft(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnteredComposeView:Z

    .line 1161
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->addSpawnedActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public declared-synchronized forward(J)V
    .locals 2
    .parameter

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->hasAlreadySpawned(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1137
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gm/ComposeActivity;->forward(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnteredComposeView:Z

    .line 1140
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->addSpawnedActivity(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttachmentStatus(JLjava/lang/String;)Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    .locals 5
    .parameter "serverMessageId"
    .parameter "partId"

    .prologue
    .line 2038
    const/4 v1, 0x0

    .line 2040
    .local v1, match:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAttachments:Ljava/util/List;

    if-nez v3, :cond_0

    .line 2041
    const/4 v3, 0x0

    .line 2050
    :goto_0
    return-object v3

    .line 2044
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAttachments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    .line 2045
    .local v2, status:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    iget-wide v3, v2, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2046
    move-object v1, v2

    .end local v2           #status:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    :cond_2
    move-object v3, v1

    .line 2050
    goto :goto_0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/google/android/gm/SenderInfoLoader$ContactInfo;
    .locals 1
    .parameter "email"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    if-nez v0, :cond_0

    .line 1869
    const/4 v0, 0x0

    .line 1871
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;

    goto :goto_0
.end method

.method getConversationHeader()Lcom/google/android/gm/ConversationViewHeader;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConvHeaderView:Lcom/google/android/gm/ConversationViewHeader;

    return-object v0
.end method

.method public declared-synchronized getInitialUnreadMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1942
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    iget-object v0, v0, Lcom/google/android/gm/ConversationViewState;->mInitialUnreadMessages:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoadTimer()Lcom/google/android/gm/perf/Timer;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    return-object v0
.end method

.method getMessageHeaderContainer()Lcom/google/android/gm/HybridConversationScrollContainer;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    return-object v0
.end method

.method public declared-synchronized getMessageIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1946
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    iget-object v0, v0, Lcom/google/android/gm/ConversationViewState;->mMessageIds:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConvHeaderView:Lcom/google/android/gm/ConversationViewHeader;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationViewHeader;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subject"

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getConversationSubjectDisplayer()Lcom/google/android/gm/ConversationSubjectDisplayer;

    move-result-object v0

    .line 1668
    .local v0, disp:Lcom/google/android/gm/ConversationSubjectDisplayer;
    move-object v1, p1

    .line 1669
    .local v1, remainder:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1670
    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationSubjectDisplayer;->getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1672
    :cond_0
    return-object v1
.end method

.method public hideUndoView(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/UndoBarView;->hide(Z)V

    .line 1961
    :cond_0
    return-void
.end method

.method public declared-synchronized highlightTerms(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1250
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:highlightInMessageBodies(["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1252
    const/4 v0, 0x1

    .line 1253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1254
    if-nez v1, :cond_0

    .line 1255
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    :cond_0
    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 1262
    :cond_1
    const-string v0, "]);"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    :cond_2
    monitor-exit p0

    return-void

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationLoadingOrRendered()Z
    .locals 1

    .prologue
    .line 1892
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationLoadingOrRendered(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1902
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isConversationLoadingOrRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationRendered()Z
    .locals 1

    .prologue
    .line 1909
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->hasRenderedContent()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationRendered(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1918
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isConversationRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDataLoaded()Z
    .locals 1

    .prologue
    .line 1928
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markConversationAsRead()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 1677
    const/4 v2, 0x0

    .line 1678
    .local v2, markConversationRead:Z
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    iget-object v4, v4, Lcom/google/android/gm/ConversationViewState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1680
    const/4 v2, 0x1

    .line 1683
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v5

    const-string v7, "^u"

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gm/ConversationHeaderViewModel;->updateConversationForLabelRemoval(Ljava/lang/String;JLjava/lang/String;)V

    .line 1687
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v4}, Lcom/google/android/gm/MenuHandler;->getBackgroundTaskHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1689
    .local v0, backgroundTaskHander:Landroid/os/Handler;
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationInfo;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 1691
    .local v1, markConversationOpened:Z
    :goto_0
    new-instance v4, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v2, v1}, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSetReadOpenedTask:Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;

    .line 1693
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSetReadOpenedTask:Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1697
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v4, v3}, Lcom/google/android/gm/CustomWebView;->onVisibilityChanged(Z)V

    .line 1698
    return-void

    .line 1689
    .end local v1           #markConversationOpened:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/google/android/gm/ConversationView;->onActivityCreated(Landroid/os/Bundle;)V

    .line 388
    new-instance v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gm/HybridHtmlConversationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/HybridHtmlConversationView;)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBuilder:Lcom/google/android/gm/HybridHtmlConversationBuilder;

    .line 389
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContextMenu:Lcom/google/android/gm/GmailWebViewContextMenu;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->startLoadingConversation()V

    .line 392
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-super {p0, p1}, Lcom/google/android/gm/ConversationView;->onCreate(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    .line 287
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mDownloadManager:Landroid/app/DownloadManager;

    .line 288
    if-eqz p1, :cond_0

    .line 289
    const-string v0, "conversationviewstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationViewState;

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    .line 290
    const-string v0, "webview-y-percent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    .line 293
    :cond_0
    new-instance v0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/HybridHtmlConversationView$1;)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 294
    new-instance v0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/HybridHtmlConversationView$1;)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAttachmentListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 295
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 300
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->destroyDetachedWebView()V

    .line 302
    const v4, 0x7f0f009c

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/MessageHeaderView;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    .line 303
    const v4, 0x7f0f009a

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/MessageHeaderScrollView;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

    .line 304
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

    const v6, 0x7f0f009b

    invoke-virtual {v4, v6}, Lcom/google/android/gm/MessageHeaderScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/HybridConversationScrollContainer;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    .line 306
    const v4, 0x7f0f0099

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/CustomWebView;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    .line 307
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-static {v4}, Lcom/google/android/gm/Utils;->restrictWebView(Landroid/webkit/WebView;)V

    .line 308
    const v4, 0x7f0f0093

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewScrim:Landroid/view/View;

    .line 310
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v6, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;

    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gm/CustomWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 312
    new-instance v4, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    invoke-direct {v4, p0}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mGmailJsInterface:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    .line 313
    new-instance v4, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;

    invoke-direct {v4, p0, v8}, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/HybridHtmlConversationView$1;)V

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewClient:Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;

    .line 314
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewClient:Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;

    invoke-virtual {v4, v6}, Lcom/google/android/gm/CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 315
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mGmailJsInterface:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    const-string v7, "gmail"

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gm/CustomWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningJellybeanOrLater()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnableContentReadySignal:Z

    .line 321
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    iget-boolean v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnableContentReadySignal:Z

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Lcom/google/android/gm/CustomWebView;->setUseSoftwareLayer(Z)V

    .line 323
    const v4, 0x7f0f0045

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/UndoBarView;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    .line 324
    const v4, 0x7f0f0092

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mNewMessageNotificationView:Landroid/view/View;

    .line 325
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mNewMessageNotificationView:Landroid/view/View;

    new-instance v6, Lcom/google/android/gm/HybridHtmlConversationView$1;

    invoke-direct {v6, p0}, Lcom/google/android/gm/HybridHtmlConversationView$1;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mNewMessageNotificationView:Landroid/view/View;

    const v6, 0x7f0f00aa

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mNewMessageNotificationText:Landroid/widget/TextView;

    .line 334
    const v4, 0x7f0f0094

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBackgroundView:Landroid/view/View;

    .line 335
    const v4, 0x7f0f0095

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mInfoView:Landroid/view/View;

    .line 336
    const v4, 0x7f0f0097

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSendersView:Landroid/widget/TextView;

    .line 337
    const v4, 0x7f0f0098

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSubjectView:Landroid/widget/TextView;

    .line 338
    const v4, 0x7f0f003b

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mProgressView:Landroid/view/View;

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02001f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 343
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v4, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 344
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mInfoView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v4, v6}, Lcom/google/android/gm/MessageHeaderScrollView;->setTouchDelegateView(Landroid/view/View;)V

    .line 347
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

    invoke-virtual {v4, v6}, Lcom/google/android/gm/CustomWebView;->addScrollListener(Lcom/google/android/gm/ScrollNotifier$ScrollListener;)V

    .line 348
    const v4, 0x7f0f009d

    invoke-virtual {p0, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ScrollIndicatorsView;

    .line 350
    .local v1, indicators:Lcom/google/android/gm/ScrollIndicatorsView;
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v1, v4}, Lcom/google/android/gm/ScrollIndicatorsView;->setSourceView(Lcom/google/android/gm/ScrollNotifier;)V

    .line 353
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/google/android/gm/MessageHeaderView;->setVisibility(I)V

    .line 356
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/google/android/gm/persistence/Persistence;->getSnapHeaderMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, snapMode:Ljava/lang/String;
    const-string v4, "always"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    const/4 v2, 0x1

    .line 367
    .local v2, shouldSnap:Z
    :goto_1
    if-eqz v2, :cond_3

    .line 368
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v4, p0}, Lcom/google/android/gm/MessageHeaderView;->setConversationViewable(Lcom/google/android/gm/ConversationViewable;)V

    .line 369
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v4, p0}, Lcom/google/android/gm/MessageHeaderView;->setCallbacks(Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;)V

    .line 370
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v4, p0}, Lcom/google/android/gm/MessageHeaderView;->setContactInfoSource(Lcom/google/android/gm/ContactInfoSource;)V

    .line 371
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/MessageHeaderView;->setSnappy(Z)V

    .line 373
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mOverlayView:Lcom/google/android/gm/MessageHeaderScrollView;

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/MessageHeaderScrollView;->setSnappyHeaderView(Lcom/google/android/gm/MessageHeaderView;)V

    .line 378
    :goto_2
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v4}, Lcom/google/android/gm/HybridConversationScrollContainer;->getConversationHeader()Lcom/google/android/gm/ConversationViewHeader;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConvHeaderView:Lcom/google/android/gm/ConversationViewHeader;

    .line 379
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConvHeaderView:Lcom/google/android/gm/ConversationViewHeader;

    invoke-virtual {v4, p0}, Lcom/google/android/gm/ConversationViewHeader;->setCallbacks(Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;)V

    .line 381
    return-object p0

    .line 321
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #indicators:Lcom/google/android/gm/ScrollIndicatorsView;
    .end local v2           #shouldSnap:Z
    .end local v3           #snapMode:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 360
    .restart local v0       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #indicators:Lcom/google/android/gm/ScrollIndicatorsView;
    .restart local v3       #snapMode:Ljava/lang/String;
    :cond_1
    const-string v4, "portrait"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_2

    .line 363
    const/4 v2, 0x1

    .restart local v2       #shouldSnap:Z
    goto :goto_1

    .line 365
    .end local v2           #shouldSnap:Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #shouldSnap:Z
    goto :goto_1

    .line 375
    :cond_3
    iput-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->destroyDetachedWebView()V

    .line 462
    invoke-super {p0}, Lcom/google/android/gm/ConversationView;->onDestroy()V

    .line 463
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 452
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 453
    iput-boolean v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnteredComposeView:Z

    .line 454
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->invalidateRenderedContent()V

    .line 456
    invoke-super {p0}, Lcom/google/android/gm/ConversationView;->onDestroyView()V

    .line 457
    return-void
.end method

.method public onDestructiveCommand()V
    .locals 2

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2015
    return-void
.end method

.method public onHeaderCreated(J)V
    .locals 2
    .parameter "headerId"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v0}, Lcom/google/android/gm/perf/Timer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    invoke-virtual {v0}, Lcom/google/android/gm/perf/SimpleTimer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeaders:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_1
    return-void
.end method

.method public onHeaderDrawn(J)V
    .locals 2
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v0}, Lcom/google/android/gm/perf/Timer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    invoke-virtual {v0}, Lcom/google/android/gm/perf/SimpleTimer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeaders:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 664
    iget-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeadersDrawn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    const-string v1, "load total"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v0}, Lcom/google/android/gm/perf/Timer;->dumpResults()V

    .line 668
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    invoke-virtual {v0}, Lcom/google/android/gm/perf/Timer;->clear()V

    .line 670
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;

    const-string v1, "all headers drawn"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mHeadersDrawn:Z

    .line 675
    :cond_1
    return-void
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 11
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 568
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "^u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 572
    .local v2, uiInvalidated:Z
    :goto_0
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v6}, Lcom/google/android/gm/MenuHandler;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p4, v6}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/provider/Label;ZLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    .line 576
    .local v3, updateUi:Z
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/HybridHtmlConversationView;->isConversationLoadingOrRendered(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 603
    :cond_0
    :goto_2
    return-void

    .end local v2           #uiInvalidated:Z
    .end local v3           #updateUi:Z
    :cond_1
    move v2, v5

    .line 568
    goto :goto_0

    .restart local v2       #uiInvalidated:Z
    :cond_2
    move v3, v5

    .line 572
    goto :goto_1

    .line 580
    .restart local v3       #updateUi:Z
    :cond_3
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v6, p1, p4}, Lcom/google/android/gm/ConversationInfo;->updateLabel(Lcom/google/android/gm/provider/Label;Z)V

    .line 582
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/HybridHtmlConversationView;->isConversationRendered(J)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 587
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getDisplayableLabel(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 588
    .local v0, displayableLabel:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 589
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConvHeaderView:Lcom/google/android/gm/ConversationViewHeader;

    iget-object v7, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v8}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v9}, Lcom/google/android/gm/ConversationInfo;->isImportant()Z

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/gm/ConversationViewHeader;->setLabels(Ljava/lang/String;Ljava/util/Map;ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 593
    .end local v0           #displayableLabel:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 600
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "Gmail"

    const-string v7, "Exception caught while getting display label: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v6, v7, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 1971
    new-instance v0, Lcom/google/android/gm/HybridHtmlConversationView$5;

    invoke-direct {v0, p0}, Lcom/google/android/gm/HybridHtmlConversationView$5;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->getAuthToken(Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1994
    return-void
.end method

.method public declared-synchronized onMarkUnread()V
    .locals 5

    .prologue
    .line 2000
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSetReadOpenedTask:Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;

    if-eqz v1, :cond_0

    .line 2003
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSetReadOpenedTask:Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mMarkConversationRead:Z
    invoke-static {v1, v2}, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->access$2502(Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;Z)Z

    .line 2006
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    const-string v3, "^u"

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 2008
    .local v0, label:Lcom/google/android/gm/provider/Label;
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gm/ConversationHeaderViewModel;->updateConversationForLabelChange(Ljava/lang/String;JLcom/google/android/gm/provider/Label;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    monitor-exit p0

    return-void

    .line 2000
    .end local v0           #label:Lcom/google/android/gm/provider/Label;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onMenuItemSelected(ILcom/google/android/gm/CommandListener;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1303
    .line 1304
    packed-switch p1, :pswitch_data_0

    .line 1332
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v3

    .line 1337
    :cond_0
    :goto_0
    return v3

    .line 1306
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    if-eqz v0, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getInitialUnreadMessages()Ljava/util/List;

    move-result-object v2

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getMessageIds()Ljava/util/Set;

    move-result-object v0

    .line 1314
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1315
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 1319
    if-lez v1, :cond_1

    if-eq v1, v0, :cond_1

    .line 1322
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    const-string v4, "^u"

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 1324
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v1, v0, v7}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 1325
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v4, 0x0

    const v5, 0x7f0f00ef

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    move v3, v7

    .line 1329
    goto :goto_0

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 1304
    :pswitch_data_0
    .packed-switch 0x7f0f00ef
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lcom/google/android/gm/ConversationView;->onPause()V

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->hideUndoView(Z)V

    .line 435
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 427
    invoke-super {p0}, Lcom/google/android/gm/ConversationView;->onResume()V

    .line 428
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->resetSpawnedActivities()V

    .line 429
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 439
    invoke-super {p0, p1}, Lcom/google/android/gm/ConversationView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "conversationviewstate"

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    if-eqz v0, :cond_1

    .line 444
    const-string v0, "webview-y-percent"

    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->calculateScrollYPercent()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 446
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 396
    invoke-super {p0}, Lcom/google/android/gm/ConversationView;->onStart()V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->getZoomValue(Landroid/content/Context;)F

    move-result v0

    .line 401
    .local v0, currentZoomValue:F
    iget-boolean v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnteredComposeView:Z

    .line 402
    .local v2, enteredComposeView:Z
    iput-boolean v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnteredComposeView:Z

    .line 404
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    if-eqz v4, :cond_2

    .line 412
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    invoke-virtual {v4}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->getZoomValue()F

    move-result v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->isDefaultReplyAllValid(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->validForSenderWhitelist(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v1, v3

    .line 416
    .local v1, dirty:Z
    :cond_1
    if-eqz v1, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->calculateScrollYPercent()F

    move-result v4

    iput v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F

    .line 419
    invoke-direct {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->invalidateRenderedContent()V

    .line 420
    invoke-direct {p0, v3}, Lcom/google/android/gm/HybridHtmlConversationView;->startLoadingConversation(Z)V

    .line 423
    .end local v1           #dirty:Z
    :cond_2
    return-void
.end method

.method public onSuperCollapsedClick(Landroid/view/View;II)V
    .locals 4
    .parameter "superCollapsedBlock"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 549
    new-instance v1, Lcom/google/android/gm/perf/Timer;

    invoke-direct {v1}, Lcom/google/android/gm/perf/Timer;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    .line 550
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mLoadTimer:Lcom/google/android/gm/perf/Timer;

    const-string v2, "load total"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/HybridConversationScrollContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 556
    .local v0, blockIndex:I
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/HybridConversationScrollContainer;->removeView(Landroid/view/View;)V

    .line 561
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mBuilder:Lcom/google/android/gm/HybridHtmlConversationBuilder;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderCollapsedHeaders(Lcom/google/android/gm/provider/Gmail$MessageCursor;III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mTempBodiesHtml:Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:gm.replaceSuperCollapsedBlock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationViewState;->markHeadersExpanded()V

    .line 564
    return-void
.end method

.method public declared-synchronized reply(J)V
    .locals 3
    .parameter

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->hasAlreadySpawned(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1084
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/gm/ComposeActivity;->reply(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnteredComposeView:Z

    .line 1087
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->addSpawnedActivity(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1080
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replyAll(J)V
    .locals 3
    .parameter

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->hasAlreadySpawned(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1111
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/gm/ComposeActivity;->reply(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mEnteredComposeView:Z

    .line 1114
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->addSpawnedActivity(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetViews()V
    .locals 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewScrim:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    return-void
.end method

.method public setConversationHeaderSpacerHeight(I)V
    .locals 3
    .parameter

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:gm.setConversationHeaderSpacerHeight("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 1197
    return-void
.end method

.method public setDisplayImagesFromSender(Ljava/lang/String;)V
    .locals 2
    .parameter "rawFromAddress"

    .prologue
    .line 1211
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/persistence/Persistence;->setDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->addToSenderMap(Ljava/lang/String;Z)V

    .line 1215
    return-void
.end method

.method public setMessageExpanded(JJZI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    invoke-virtual {v0, p3, p4, p5}, Lcom/google/android/gm/ConversationViewState;->setExpandedMessageId(JZ)V

    .line 819
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:gm.setMessageBodyVisible(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->domIdForMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public setMessageSpacerHeight(JI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:gm.setMessageSpacerHeight(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->domIdForMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public setStarOnMessage(JJZ)V
    .locals 13
    .parameter "messageId"
    .parameter "serverMessageId"
    .parameter "on"

    .prologue
    .line 1167
    new-instance v1, Lcom/google/android/gm/ConversationInfo;

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v8

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v10

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;)V

    .line 1171
    .local v1, messageInfo:Lcom/google/android/gm/ConversationInfo;
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    const-string v5, "^t"

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v11

    .line 1172
    .local v11, label:Lcom/google/android/gm/provider/Label;
    new-instance v3, Lcom/google/android/gm/LabelOperations;

    move/from16 v0, p5

    invoke-direct {v3, v11, v0}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 1173
    .local v3, labelOp:Lcom/google/android/gm/LabelOperations;
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 1180
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v2}, Lcom/google/android/gm/MessageHeaderView;->getLocalMessageId()J

    move-result-wide v4

    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    .line 1181
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-static {v2, p1, p2}, Lcom/google/android/gm/MessageHeaderView;->find(Landroid/view/ViewGroup;J)Lcom/google/android/gm/MessageHeaderView;

    move-result-object v12

    .line 1183
    .local v12, nonSnappyHeader:Lcom/google/android/gm/MessageHeaderView;
    if-eqz v12, :cond_0

    .line 1184
    move/from16 v0, p5

    invoke-virtual {v12, v0}, Lcom/google/android/gm/MessageHeaderView;->setStarDisplay(Z)V

    .line 1187
    .end local v12           #nonSnappyHeader:Lcom/google/android/gm/MessageHeaderView;
    :cond_0
    return-void
.end method

.method public showExternalResources(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gm/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1223
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gm/ConversationViewState;->showImagesForMessage(J)V

    .line 1225
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:gm.unblockPictures(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->domIdForMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 1227
    return-void
.end method

.method public showUndoView(Lcom/google/android/gm/UndoOperation;Z)V
    .locals 3
    .parameter "undoOperation"
    .parameter "animate"

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    if-eqz v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gm/UndoBarView;->show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;Z)V

    .line 1954
    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    if-eq p1, v1, :cond_0

    .line 475
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/ConversationView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 503
    :goto_0
    return-object v1

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gm/CustomWebView;->setPagingEnabled(Z)V

    .line 480
    new-instance v0, Lcom/google/android/gm/HybridHtmlConversationView$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gm/HybridHtmlConversationView$2;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;Landroid/view/ActionMode$Callback;)V

    .line 503
    .local v0, wrapper:Landroid/view/ActionMode$Callback;
    invoke-super {p0, p1, v0}, Lcom/google/android/gm/ConversationView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method protected declared-synchronized startLoadingConversation()V
    .locals 1

    .prologue
    .line 712
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->startLoadingConversation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toggleStar()V
    .locals 6

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isConversationRendered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 609
    .local v1, messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v3

    if-lez v3, :cond_0

    .line 610
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 611
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    const-string v4, "^t"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 613
    .local v2, newState:Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/MessageHeaderView;->find(Landroid/view/ViewGroup;J)Lcom/google/android/gm/MessageHeaderView;

    move-result-object v0

    .line 615
    .local v0, header:Lcom/google/android/gm/MessageHeaderView;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, v2}, Lcom/google/android/gm/MessageHeaderView;->setStarDisplay(Z)V

    .line 617
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/MessageHeaderView;->matches(Lcom/google/android/gm/MessageHeaderView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v3, v2}, Lcom/google/android/gm/MessageHeaderView;->setStarDisplay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v0           #header:Lcom/google/android/gm/MessageHeaderView;
    .end local v1           #messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .end local v2           #newState:Z
    :cond_0
    monitor-exit p0

    return-void

    .line 611
    .restart local v1       #messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 607
    .end local v1           #messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized unstarAllMessages()V
    .locals 4

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HybridHtmlConversationView;->isConversationRendered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mSnappyHeaderView:Lcom/google/android/gm/MessageHeaderView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gm/MessageHeaderView;->setStarDisplay(Z)V

    .line 631
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v2}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 632
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HeaderBlock;

    .line 633
    .local v0, header:Lcom/google/android/gm/HeaderBlock;
    if-eqz v0, :cond_1

    .line 634
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gm/HeaderBlock;->setStarDisplay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v0           #header:Lcom/google/android/gm/HeaderBlock;
    .end local v1           #i:I
    :cond_2
    monitor-exit p0

    return-void

    .line 627
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
