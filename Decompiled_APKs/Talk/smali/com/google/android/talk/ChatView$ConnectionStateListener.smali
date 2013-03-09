.class Lcom/google/android/talk/ChatView$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field private volatile mActivity:Landroid/app/Activity;

.field private volatile mChatView:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 1
    .parameter "chatView"

    .prologue
    .line 2410
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 2411
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2412
    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 2413
    return-void
.end method

.method static synthetic access$6500(Lcom/google/android/talk/ChatView$ConnectionStateListener;)Lcom/google/android/talk/ChatView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    return-object v0
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2417
    iput-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2418
    iput-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 2419
    return-void
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 2427
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2428
    .local v1, cv:Lcom/google/android/talk/ChatView;
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 2429
    .local v0, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2433
    :cond_1
    new-instance v2, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/ChatView$ConnectionStateListener;Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
