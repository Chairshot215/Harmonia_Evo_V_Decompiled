.class Lcom/android/htccontacts/ContactDetailMessageActivity$1;
.super Landroid/os/Handler;
.source "ContactDetailMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 158
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/ContactDetailMessageActivity;->mIsDirty:Z

    .line 164
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$000(Lcom/android/htccontacts/ContactDetailMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 167
    .local v0, result:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
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

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$100(Lcom/android/htccontacts/ContactDetailMessageActivity;)Lcom/android/htccontacts/HtcContactInfoBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    const v4, 0x7f0a0121

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$100(Lcom/android/htccontacts/ContactDetailMessageActivity;)Lcom/android/htccontacts/HtcContactInfoBase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 173
    :cond_2
    const-string v1, "CONTACT_INFO_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    :cond_3
    const-string v1, "SUGGESTION_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$100(Lcom/android/htccontacts/ContactDetailMessageActivity;)Lcom/android/htccontacts/HtcContactInfoBase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 180
    :cond_4
    const-string v1, "ENTITY_QUERY_COMPLETED"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #calls: Lcom/android/htccontacts/ContactDetailMessageActivity;->startAsyncQuery()V
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$200(Lcom/android/htccontacts/ContactDetailMessageActivity;)V

    .line 183
    :cond_5
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/ContactDetailMessageActivity;->mIsDirty:Z

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
