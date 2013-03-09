.class Lcom/google/android/apps/uploader/GlsAuthorizer$3;
.super Ljava/lang/Object;
.source "GlsAuthorizer.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/GlsAuthorizer;->addAccount(Landroid/app/Activity;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V
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
.field final synthetic this$0:Lcom/google/android/apps/uploader/GlsAuthorizer;

.field final synthetic val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/GlsAuthorizer;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$3;->this$0:Lcom/google/android/apps/uploader/GlsAuthorizer;

    iput-object p2, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$3;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 164
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$3;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 174
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$3;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onCanceled()V

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$3;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 171
    :catch_2
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$3;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
