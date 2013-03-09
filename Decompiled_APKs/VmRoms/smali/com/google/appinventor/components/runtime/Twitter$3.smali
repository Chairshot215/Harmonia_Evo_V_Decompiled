.class Lcom/google/appinventor/components/runtime/Twitter$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->resultReturned(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$myRequestToken:Ltwitter4j/http/RequestToken;

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;

.field final synthetic val$oauthVerifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/Twitter;Ltwitter4j/http/RequestToken;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$myTwitter:Ltwitter4j/Twitter;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$myRequestToken:Ltwitter4j/http/RequestToken;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$myTwitter:Ltwitter4j/Twitter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$myRequestToken:Ltwitter4j/http/RequestToken;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #setter for: Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/http/AccessToken;
    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$802(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/http/AccessToken;)Ltwitter4j/http/AccessToken;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/http/AccessToken;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$800(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/http/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$902(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #calls: Lcom/google/appinventor/components/runtime/Twitter;->saveAccessToken(Ltwitter4j/http/AccessToken;)V
    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$1000(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/http/AccessToken;)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$3$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$3$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ltwitter4j/TwitterException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ltwitter4j/TwitterException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v3, "Authorize"

    const/16 v4, 0x130

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Twitter;->DeAuthorize()V

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ltwitter4j/TwitterException; {:try_start_8 .. :try_end_8} :catch_0
.end method
