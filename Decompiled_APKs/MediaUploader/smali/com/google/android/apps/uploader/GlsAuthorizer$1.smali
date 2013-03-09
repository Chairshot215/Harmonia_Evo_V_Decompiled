.class Lcom/google/android/apps/uploader/GlsAuthorizer$1;
.super Ljava/lang/Object;
.source "GlsAuthorizer.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/GlsAuthorizer;->fetchAuthToken(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V
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

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/GlsAuthorizer;Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->this$0:Lcom/google/android/apps/uploader/GlsAuthorizer;

    iput-object p2, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
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
    .line 97
    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got authToken for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->val$accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 99
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onCanceled()V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/uploader/GlsAuthorizer$1;->val$listener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
