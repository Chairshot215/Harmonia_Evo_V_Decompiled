.class Lcom/google/android/talk/fragments/ChatScreenFragment$16;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$16;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 2134
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 2135
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2136
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$16;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v4

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 2137
    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2138
    const-string v2, "talk"

    const-string v3, "initSession failed. Finish!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$16;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->showLandingPage(Landroid/app/Activity;)V

    .line 2143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
