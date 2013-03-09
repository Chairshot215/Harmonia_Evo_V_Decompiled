.class Lcom/google/appinventor/components/runtime/Twitter$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$11;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$11;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$11;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Status;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->FriendTimelineReceived(Ljava/util/List;)V

    return-void
.end method
