.class public abstract Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TaskCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mResponse:Lcom/htc/socialnetwork/account/TaskResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/socialnetwork/account/TaskResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;


# direct methods
.method public constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v2, "BaseLoginActivity"

    const-string v3, "run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->getResponse()Lcom/htc/socialnetwork/account/TaskResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/socialnetwork/account/TaskResponse;->onStart()V

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->doWork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->getResponse()Lcom/htc/socialnetwork/account/TaskResponse;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/socialnetwork/account/TaskResponse;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->getResponse()Lcom/htc/socialnetwork/account/TaskResponse;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/htc/socialnetwork/account/TaskResponse;->onError(Lcom/htc/socialnetwork/SocialNetworkException;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract doWork()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public getResponse()Lcom/htc/socialnetwork/account/TaskResponse;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->mResponse:Lcom/htc/socialnetwork/account/TaskResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->mResponse:Lcom/htc/socialnetwork/account/TaskResponse;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v0, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->defaultResponse:Lcom/htc/socialnetwork/account/TaskResponse;

    goto :goto_0
.end method

.method public setResponse(Lcom/htc/socialnetwork/account/TaskResponse;)Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;
    .locals 0

    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;->mResponse:Lcom/htc/socialnetwork/account/TaskResponse;

    return-object p0
.end method
