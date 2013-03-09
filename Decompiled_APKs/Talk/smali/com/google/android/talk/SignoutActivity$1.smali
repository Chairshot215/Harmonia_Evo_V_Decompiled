.class Lcom/google/android/talk/SignoutActivity$1;
.super Ljava/lang/Object;
.source "SignoutActivity.java"

# interfaces
.implements Lcom/google/android/talk/ServiceAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SignoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SignoutActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SignoutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    #setter for: Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v0, p1}, Lcom/google/android/talk/SignoutActivity;->access$002(Lcom/google/android/talk/SignoutActivity;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 81
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    #getter for: Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v0}, Lcom/google/android/talk/SignoutActivity;->access$000(Lcom/google/android/talk/SignoutActivity;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    #calls: Lcom/google/android/talk/SignoutActivity;->signOut()V
    invoke-static {v0}, Lcom/google/android/talk/SignoutActivity;->access$100(Lcom/google/android/talk/SignoutActivity;)V

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "service disconnected, finish"

    invoke-static {v0}, Lcom/google/android/talk/SignoutActivity;->log(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    goto :goto_0
.end method
