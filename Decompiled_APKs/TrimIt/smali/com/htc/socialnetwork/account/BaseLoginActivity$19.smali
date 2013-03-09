.class Lcom/htc/socialnetwork/account/BaseLoginActivity$19;
.super Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;
.source "BaseLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;->getDefaultLoginRunnable()Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct {p0, p1}, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    return-void
.end method


# virtual methods
.method public doWork()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getLoginTask()Lcom/htc/socialnetwork/account/LoginTasks;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getAuthenticateData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/socialnetwork/account/LoginTasks;->callLogin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
