.class Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$2;
.super Ljava/lang/Object;
.source "SetupMailSocialNetworkActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;
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
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .line 938
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v2, "MailSocialNetwork"

    const-string v3, "CALL callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 941
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 942
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 951
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v1

    .line 945
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailSocialNetwork"

    const-string v3, "addAccount was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 946
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 947
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 949
    .local v1, e:Landroid/accounts/AuthenticatorException;
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
