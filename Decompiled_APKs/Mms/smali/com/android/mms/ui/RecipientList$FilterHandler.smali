.class Lcom/android/mms/ui/RecipientList$FilterHandler;
.super Landroid/os/Handler;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterHandler"
.end annotation


# instance fields
.field mRecipientList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/RecipientList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/mms/ui/RecipientList;)V
    .locals 1
    .parameter "looper"
    .parameter "list"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList$FilterHandler;->mRecipientList:Ljava/lang/ref/WeakReference;

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, -0x1

    .line 249
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;

    .line 252
    .local v2, obj:Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;
    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$100(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RecipientList$Recipient;->filter(Landroid/content/Context;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v3

    .line 253
    .local v3, result:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$FilterHandler;->mRecipientList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/RecipientList;

    #getter for: Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/ui/RecipientList;->access$200(Lcom/android/mms/ui/RecipientList;)Ljava/util/ArrayList;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$100(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 258
    .local v1, index:I
    if-eq v1, v6, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$FilterHandler;->mRecipientList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/RecipientList;

    #getter for: Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/ui/RecipientList;->access$200(Lcom/android/mms/ui/RecipientList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 259
    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$100(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    iput-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    .line 262
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$FilterHandler;->mRecipientList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/RecipientList;

    #getter for: Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/ui/RecipientList;->access$200(Lcom/android/mms/ui/RecipientList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_1
    const/4 v4, 0x2

    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mUpdateReason:I
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$300(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 270
    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v4, :cond_0

    .line 271
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 273
    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshOneRecipientButton(Lcom/android/mms/ui/RecipientList$Recipient;)V

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "RecipientList"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 278
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    if-eq v1, v6, :cond_0

    .line 279
    const/4 v4, 0x1

    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mUpdateReason:I
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$300(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 280
    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v4, :cond_0

    .line 282
    #getter for: Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshOneRecipientButton(Lcom/android/mms/ui/RecipientList$Recipient;)V

    goto/16 :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
