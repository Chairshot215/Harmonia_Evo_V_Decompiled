.class Lcom/google/android/talk/ChatView$20;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/google/android/talk/ChatView$20;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/google/android/talk/ChatView$20;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v0

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 3216
    iget-object v0, p0, Lcom/google/android/talk/ChatView$20;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->resumeVideoChat()V

    .line 3217
    return-void
.end method
