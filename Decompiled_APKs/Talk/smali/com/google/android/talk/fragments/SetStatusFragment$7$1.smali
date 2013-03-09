.class Lcom/google/android/talk/fragments/SetStatusFragment$7$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/SetStatusFragment$7;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$7$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$7$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$7;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$7;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1800(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->clearSelfAvatarCache()V

    .line 836
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$7$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$7;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$7;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2100(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->updateRoster()V

    .line 839
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$7$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$7;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$7;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->initializeFromImSession()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$500(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 840
    return-void
.end method
