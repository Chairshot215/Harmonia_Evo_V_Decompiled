.class Lcom/google/appinventor/components/runtime/Twitter$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->SearchTwitter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->val$myTwitter:Ltwitter4j/Twitter;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->tweets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->val$myTwitter:Ltwitter4j/Twitter;

    new-instance v2, Ltwitter4j/Query;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->val$query:Ljava/lang/String;

    invoke-direct {v2, v3}, Ltwitter4j/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ltwitter4j/Twitter;->search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->tweets:Ljava/util/List;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$12$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$12$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ltwitter4j/TwitterException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v3, "SearchTwitter"

    const/16 v4, 0x13a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$12$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$12$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$12$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Twitter$12$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$12;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
