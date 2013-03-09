.class Lcom/google/appinventor/components/runtime/Twitter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->Authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$myConsumerKey:Ljava/lang/String;

.field final synthetic val$myConsumerSecret:Ljava/lang/String;

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/Twitter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myTwitter:Ltwitter4j/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    #calls: Lcom/google/appinventor/components/runtime/Twitter;->checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$000(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$1$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myTwitter:Ltwitter4j/Twitter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myTwitter:Ltwitter4j/Twitter;

    const-string v2, "appinventor://twitter"

    invoke-virtual {v1, v2}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ltwitter4j/http/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #setter for: Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/http/RequestToken;
    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$402(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/http/RequestToken;)Ltwitter4j/http/RequestToken;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$500(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/Twitter;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$500(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->requestCode:I
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$700(Lcom/google/appinventor/components/runtime/Twitter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ltwitter4j/TwitterException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

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

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v3, "Authorize"

    const/16 v4, 0x12f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Twitter;->DeAuthorize()V

    goto/16 :goto_0

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

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ltwitter4j/TwitterException; {:try_start_8 .. :try_end_8} :catch_0
.end method
