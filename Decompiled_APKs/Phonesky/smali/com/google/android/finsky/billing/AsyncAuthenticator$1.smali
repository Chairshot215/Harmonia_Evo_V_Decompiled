.class Lcom/google/android/finsky/billing/AsyncAuthenticator$1;
.super Landroid/os/AsyncTask;
.source "AsyncAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/AsyncAuthenticator;->getToken(Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;Ljava/lang/String;)V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/volley/AuthFailureError;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/AsyncAuthenticator;

.field final synthetic val$invalidToken:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/AsyncAuthenticator;Ljava/lang/String;Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->this$0:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    iput-object p2, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->val$invalidToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->val$listener:Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 4
    .parameter "voids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/AuthFailureError;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->val$invalidToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->this$0:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    #getter for: Lcom/google/android/finsky/billing/AsyncAuthenticator;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;
    invoke-static {v1}, Lcom/google/android/finsky/billing/AsyncAuthenticator;->access$000(Lcom/google/android/finsky/billing/AsyncAuthenticator;)Lcom/android/volley/toolbox/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->val$invalidToken:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/volley/toolbox/Authenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->this$0:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    #getter for: Lcom/google/android/finsky/billing/AsyncAuthenticator;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;
    invoke-static {v1}, Lcom/google/android/finsky/billing/AsyncAuthenticator;->access$000(Lcom/google/android/finsky/billing/AsyncAuthenticator;)Lcom/android/volley/toolbox/Authenticator;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/volley/toolbox/Authenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, authFailureError:Lcom/android/volley/AuthFailureError;
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/AuthFailureError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, result:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/android/volley/AuthFailureError;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->val$listener:Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;->onAuthTokenReceived(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->val$listener:Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/volley/AuthFailureError;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;->onError(Lcom/android/volley/AuthFailureError;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
