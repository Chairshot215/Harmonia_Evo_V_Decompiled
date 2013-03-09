.class Lcom/android/mms/ui/MessageBodyEditor$13;
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
    .line 2401
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->val$temp:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2403
    packed-switch p2, :pswitch_data_0

    .line 2417
    :cond_0
    :goto_0
    return-void

    .line 2405
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->removeAllMedia()V

    .line 2406
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2407
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2409
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2410
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->val$temp:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$702(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2414
    .end local v0           #m:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor$13;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$2800(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->showAttachmentList(Landroid/net/Uri;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$2900(Lcom/android/mms/ui/MessageBodyEditor;Landroid/net/Uri;)V

    goto :goto_0

    .line 2403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
