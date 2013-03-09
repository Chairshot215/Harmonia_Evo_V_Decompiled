.class Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->promptForCredentials()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;->this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 726
    .local v1, result:Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManager.get() callback - result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;->this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    iget-object v2, v2, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v2}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;->this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    iget-object v3, v3, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v3}, Lcom/google/android/talk/AccountSelectionActivity;->access$1100(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;->this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    iget-object v4, v4, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v2, v3, v4}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 744
    .end local v1           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "promptForCredentials(): User canceled, exit"

    invoke-static {v2}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 733
    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;->this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    iget-object v2, v2, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v2}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0

    .line 735
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 736
    .local v0, e:Ljava/io/IOException;
    const-string v2, "promptForCredentials(): IO Error, exit"

    invoke-static {v2}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 737
    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;->this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    iget-object v2, v2, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v2}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0

    .line 738
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 739
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "promptForCredentials(): Not authenticated"

    invoke-static {v2}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;->this$1:Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    iget-object v2, v2, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v2}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0
.end method
