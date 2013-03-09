.class Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;
.super Landroid/os/Handler;
.source "BaseContactDetailLayerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 106
    .local v0, result:Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onContactChanged(Ljava/lang/String;)V

    .line 109
    :cond_1
    return-void

    .line 68
    .end local v0           #result:Landroid/os/AsyncResult;
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsDirty:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->access$002(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;Z)Z

    .line 70
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    iget-boolean v1, v1, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 73
    .restart local v0       #result:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "ENTITY_QUERY_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->access$100(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getTitleString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->access$100(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 84
    :cond_2
    const-string v1, "CONTACT_INFO_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->access$100(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getTitleString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 92
    :cond_3
    const-string v1, "SUGGESTION_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->access$100(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsDirty:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->access$002(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;Z)Z

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
