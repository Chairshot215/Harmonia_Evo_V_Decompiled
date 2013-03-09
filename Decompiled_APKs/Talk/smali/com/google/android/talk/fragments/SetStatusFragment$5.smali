.class Lcom/google/android/talk/fragments/SetStatusFragment$5;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->makeDefaultStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$5;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$5;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$400(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$5;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$400(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->logout()V

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$5;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$300(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$5;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1800(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/AccountLoginUtils;->setInactiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$5;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 759
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "RemoteException failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
