.class Lcom/android/mms/util/ContactNameCache$2;
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
    .line 243
    iput-object p1, p0, Lcom/android/mms/util/ContactNameCache$2;->this$0:Lcom/android/mms/util/ContactNameCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfUpdate"

    .prologue
    const/4 v2, 0x7

    .line 246
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactNameCache"

    const-string v1, "received MSG_FILTER_UPDATE_THREADS_NAME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$2;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$2;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$2;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/ContactNameCache$2;->this$0:Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method
