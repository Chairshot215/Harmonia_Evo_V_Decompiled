.class public Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 17091
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v11, 0x14

    .line 17094
    iget v9, p1, Landroid/os/Message;->what:I

    .line 17095
    .local v9, token:I
    packed-switch v9, :pswitch_data_0

    .line 17126
    :cond_0
    :goto_0
    return-void

    .line 17098
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 17099
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 17100
    .local v1, media:Lcom/android/mms/model/MediaModel;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v2, ""

    .line 17102
    .local v2, text:Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsFromDraft:Z
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsEditOriginal:Z
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageBodyEditor;->converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 17103
    .local v8, slideshowUri:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 17104
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getPduPersister()Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    .line 17105
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 17106
    .local v7, newmsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 17109
    .end local v7           #newmsg:Landroid/os/Message;
    .end local v8           #slideshowUri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 17110
    .local v6, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 17111
    .restart local v7       #newmsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 17100
    .end local v2           #text:Ljava/lang/String;
    .end local v6           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v7           #newmsg:Landroid/os/Message;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 17113
    .restart local v2       #text:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 17114
    .local v6, e:Lcom/google/android/mms/MmsException;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 17115
    .restart local v7       #newmsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 17121
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    .end local v2           #text:Ljava/lang/String;
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .end local v7           #newmsg:Landroid/os/Message;
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHandleReadReport:Z
    invoke-static {v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 17122
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->handleReadReportAndMarkAsRead()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 17095
    nop

    :pswitch_data_0
    .packed-switch 0x4eea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
