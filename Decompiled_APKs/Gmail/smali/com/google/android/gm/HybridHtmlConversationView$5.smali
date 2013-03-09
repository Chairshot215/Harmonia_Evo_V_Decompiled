.class Lcom/google/android/gm/HybridHtmlConversationView$5;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView;->onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
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
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$5;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v8, 0x0

    .line 1976
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1978
    .local v3, result:Landroid/os/Bundle;
    const-string v5, "authtoken"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1979
    .local v0, authToken:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1980
    const-string v5, "Gmail"

    const-string v6, "Failed to set cookie: unable to get auth token"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1992
    .end local v0           #authToken:Ljava/lang/String;
    .end local v3           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1984
    .restart local v0       #authToken:Ljava/lang/String;
    .restart local v3       #result:Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView$5;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v5, v5, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gm/provider/Urls;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1985
    .local v4, uri:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView$5;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v5, v5, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/google/android/gm/provider/Urls;->getCookieString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1987
    .local v2, gmailCookie:Ljava/lang/String;
    new-instance v5, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$5;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {v5, v6, v4, v2}, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1988
    .end local v0           #authToken:Ljava/lang/String;
    .end local v2           #gmailCookie:Ljava/lang/String;
    .end local v3           #result:Landroid/os/Bundle;
    .end local v4           #uri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1989
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Gmail"

    const-string v6, "Failed to set cookie: unhandled exception trying to get auth token"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
