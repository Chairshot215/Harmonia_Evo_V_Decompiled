.class Lcom/google/android/talk/AddAccountActivity$1$1;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AddAccountActivity$1;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/AddAccountActivity$1;

.field final synthetic val$finalBundleResult:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AddAccountActivity$1;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->this$1:Lcom/google/android/talk/AddAccountActivity$1;

    iput-object p2, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->val$finalBundleResult:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->this$1:Lcom/google/android/talk/AddAccountActivity$1;

    iget-object v0, v0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AddAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->val$finalBundleResult:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->this$1:Lcom/google/android/talk/AddAccountActivity$1;

    iget-object v0, v0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    iget-object v1, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->val$finalBundleResult:Landroid/os/Bundle;

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/talk/AddAccountActivity;->mCreatedAccount:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/talk/AddAccountActivity;->access$002(Lcom/google/android/talk/AddAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->this$1:Lcom/google/android/talk/AddAccountActivity$1;

    iget-object v0, v0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    #getter for: Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/AddAccountActivity;->access$100(Lcom/google/android/talk/AddAccountActivity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->this$1:Lcom/google/android/talk/AddAccountActivity$1;

    iget-object v1, v1, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity$1$1;->this$1:Lcom/google/android/talk/AddAccountActivity$1;

    iget-object v0, v0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AddAccountActivity;->finish()V

    goto :goto_0
.end method
