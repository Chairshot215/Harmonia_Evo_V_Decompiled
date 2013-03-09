.class Lcom/android/mms/util/ContactNameCache$1;
.super Landroid/database/ContentObserver;
.source "ContactNameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ContactNameCache;->initObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ContactNameCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ContactNameCache;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/mms/util/ContactNameCache$1;->this$0:Lcom/android/mms/util/ContactNameCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfUpdate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 217
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactNameCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$1;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$1;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$1;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/android/mms/util/ContactNameCache;->access$302(Z)Z

    .line 236
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$1;->this$0:Lcom/android/mms/util/ContactNameCache;

    #calls: Lcom/android/mms/util/ContactNameCache;->processInvalid()V
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$400(Lcom/android/mms/util/ContactNameCache;)V

    .line 240
    :cond_2
    return-void

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$1;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$1;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
