.class Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;
.super Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->updateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->val$authTokenType:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;)V

    return-void
.end method


# virtual methods
.method public handleResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, token:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->val$authTokenType:Ljava/lang/String;

    #calls: Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->setToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->access$200(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    #calls: Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->notifyChanged()V
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->access$300(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)V

    goto :goto_0
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 248
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;->handleResult(Landroid/os/Bundle;)V

    return-void
.end method
