.class Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$3;
.super Ljava/lang/Object;
.source "SocialNetworkSetupActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->removeAccountInAccountManager(I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    .line 744
    .local v1, failed:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 745
    const/4 v1, 0x0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "OOBE_SocialNetworkSetupActivity"

    const-string v3, "OperationCanceledException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 750
    .local v0, e:Ljava/io/IOException;
    const-string v2, "OOBE_SocialNetworkSetupActivity"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 752
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "OOBE_SocialNetworkSetupActivity"

    const-string v3, "AuthenticatorException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
