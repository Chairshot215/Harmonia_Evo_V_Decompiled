.class Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageRunnable"
.end annotation


# instance fields
.field private final mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

.field private mBody:Ljava/lang/String;

.field private mFullJid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "fullJid"
    .parameter "body"

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 511
    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mFullJid:Ljava/lang/String;

    .line 512
    iput-object p3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mBody:Ljava/lang/String;

    .line 513
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 516
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mFullJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, bareJid:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->inCall()Z
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mBody:Ljava/lang/String;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->updateRecentMessageQueue(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1400(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 523
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1400(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->bindRecentMessages()V
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1500(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 527
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-wide/16 v2, 0x1388

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->scheduleTextOverlayFadeOut(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1600(Lcom/google/android/talk/videochat/VideoChatActivity;J)V

    .line 529
    :cond_1
    return-void
.end method
