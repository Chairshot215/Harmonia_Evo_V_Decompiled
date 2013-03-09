.class Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$3;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Lcom/android/mms/view/EditableMediaView$OnReplaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->create(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)Lcom/android/mms/view/EditableMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$3;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplace(Lcom/android/mms/model/MediaModel;)V
    .locals 3
    .parameter "media"

    .prologue
    .line 373
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$3;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    :goto_0
    return-void

    .line 378
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$3;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 381
    .restart local v0       #m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 385
    .end local v0           #m:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$3;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 386
    .restart local v0       #m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
