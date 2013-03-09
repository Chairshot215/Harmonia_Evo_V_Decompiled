.class Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;
.super Landroid/os/Handler;
.source "HtcViewUnknownContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewUnknownContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mIsDirty:Z

    .line 80
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->access$000(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 83
    .local v0, result:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "ENTITY_QUERY_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CONTACT_INFO_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->dataChanged()V

    .line 88
    :cond_2
    const-string v1, "CONTACT_INFO_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    #getter for: Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->access$100(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    const v4, 0x7f0a00ef

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 91
    :cond_3
    const-string v1, "SUGGESTION_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    #getter for: Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->access$100(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mIsDirty:Z

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
