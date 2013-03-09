.class Lcom/android/mms/ui/MessageBodyEditor$15;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->showActionList(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;

.field final synthetic val$temp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->val$temp:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2456
    packed-switch p2, :pswitch_data_0

    .line 2481
    :cond_0
    :goto_0
    return-void

    .line 2459
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2460
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2464
    .end local v1           #m:Landroid/os/Message;
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->removeAllMedia()V

    .line 2465
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2466
    .restart local v1       #m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2468
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2469
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->val$temp:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageBodyEditor;->access$702(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2473
    .end local v1           #m:Landroid/os/Message;
    :pswitch_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$1800(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 2474
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2475
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$15;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->previewVCalendar(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$900(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 2456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
