.class Lcom/htc/usage/AdvancedSettingsFragment$1;
.super Landroid/os/AsyncTask;
.source "AdvancedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/AdvancedSettingsFragment;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/AdvancedSettingsFragment;

.field final synthetic val$restrict:Z


# direct methods
.method constructor <init>(Lcom/htc/usage/AdvancedSettingsFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/htc/usage/AdvancedSettingsFragment$1;->this$0:Lcom/htc/usage/AdvancedSettingsFragment;

    iput-boolean p2, p0, Lcom/htc/usage/AdvancedSettingsFragment$1;->val$restrict:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/usage/AdvancedSettingsFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/htc/usage/AdvancedSettingsFragment$1;->this$0:Lcom/htc/usage/AdvancedSettingsFragment;

    #getter for: Lcom/htc/usage/AdvancedSettingsFragment;->mPolicyService:Landroid/net/INetworkPolicyManager;
    invoke-static {v1}, Lcom/htc/usage/AdvancedSettingsFragment;->access$300(Lcom/htc/usage/AdvancedSettingsFragment;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/usage/AdvancedSettingsFragment$1;->val$restrict:Z

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
