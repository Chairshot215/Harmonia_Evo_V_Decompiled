.class Lcom/google/android/talk/GtalkServiceActivity$1;
.super Ljava/lang/Object;
.source "GtalkServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GtalkServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/GtalkServiceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GtalkServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/talk/GtalkServiceActivity$1;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity$1;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    #getter for: Lcom/google/android/talk/GtalkServiceActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v1}, Lcom/google/android/talk/GtalkServiceActivity;->access$000(Lcom/google/android/talk/GtalkServiceActivity;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 37
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity$1;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    #getter for: Lcom/google/android/talk/GtalkServiceActivity;->mInForeground:Z
    invoke-static {v1}, Lcom/google/android/talk/GtalkServiceActivity;->access$100(Lcom/google/android/talk/GtalkServiceActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkService;->setTalkForegroundState()V

    .line 40
    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity$1;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    iget-object v1, v1, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/GtalkServiceActivity$1;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    #getter for: Lcom/google/android/talk/GtalkServiceActivity;->mTellGSFAppInForegroundRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/talk/GtalkServiceActivity;->access$200(Lcom/google/android/talk/GtalkServiceActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method
