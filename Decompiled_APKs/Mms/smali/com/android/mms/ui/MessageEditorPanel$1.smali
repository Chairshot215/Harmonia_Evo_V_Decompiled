.class Lcom/android/mms/ui/MessageEditorPanel$1;
.super Ljava/lang/Object;
.source "MessageEditorPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditorPanel;->setEditorPanelOnTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditorPanel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditorPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getEditorHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageEditorPanel;->access$000(Lcom/android/mms/ui/MessageEditorPanel;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v1}, Lcom/android/mms/ui/MessageEditorPanel;->access$100(Lcom/android/mms/ui/MessageEditorPanel;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v6

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v1}, Lcom/android/mms/ui/MessageEditorPanel;->access$100(Lcom/android/mms/ui/MessageEditorPanel;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->getMedia()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 134
    .local v0, media:Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getEditorHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageEditorPanel;->access$000(Lcom/android/mms/ui/MessageEditorPanel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getEditorHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MessageEditorPanel;->access$000(Lcom/android/mms/ui/MessageEditorPanel;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v1}, Lcom/android/mms/ui/MessageEditorPanel;->access$100(Lcom/android/mms/ui/MessageEditorPanel;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->getSlideshowUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getEditorHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageEditorPanel;->access$000(Lcom/android/mms/ui/MessageEditorPanel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getEditorHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MessageEditorPanel;->access$000(Lcom/android/mms/ui/MessageEditorPanel;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditorPanel$1;->this$0:Lcom/android/mms/ui/MessageEditorPanel;

    #calls: Lcom/android/mms/ui/MessageEditorPanel;->getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v4}, Lcom/android/mms/ui/MessageEditorPanel;->access$100(Lcom/android/mms/ui/MessageEditorPanel;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageBodyEditor;->getSlideshowUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
