.class Lcom/android/htccontacts/HtcSendContactActivity$1;
.super Landroid/os/Handler;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcSendContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 210
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$000(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    .line 213
    const-string v3, "HtcSendContactActivity"

    const-string v4, "mUri is null, call finish() to close activity..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->finish()V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$100(Lcom/android/htccontacts/HtcSendContactActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    new-instance v4, Lcom/android/htccontacts/HtcProfileContactInfo;

    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/htccontacts/HtcSendContactActivity;->access$000(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/HtcProfileContactInfo;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->access$202(Lcom/android/htccontacts/HtcSendContactActivity;Lcom/android/htccontacts/HtcContactInfo;)Lcom/android/htccontacts/HtcContactInfo;

    .line 220
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$200(Lcom/android/htccontacts/HtcSendContactActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    const/16 v4, 0x3e7

    iput v4, v3, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 224
    :goto_1
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$200(Lcom/android/htccontacts/HtcSendContactActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/htccontacts/HtcSendContactActivity;->access$400(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v7, v5}, Lcom/android/htccontacts/HtcContactInfo;->registerForChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 227
    .local v0, loadContactInfo:Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 228
    .local v1, loadContactInfoThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 222
    .end local v0           #loadContactInfo:Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;
    .end local v1           #loadContactInfoThread:Ljava/lang/Thread;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    new-instance v4, Lcom/android/htccontacts/HtcContactInfo;

    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/htccontacts/HtcSendContactActivity;->access$000(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/htccontacts/HtcSendContactActivity;->access$300(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/HtcContactInfo;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->access$202(Lcom/android/htccontacts/HtcSendContactActivity;Lcom/android/htccontacts/HtcContactInfo;)Lcom/android/htccontacts/HtcContactInfo;

    goto :goto_1

    .line 232
    :pswitch_1
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mIsDirty:Z
    invoke-static {v3, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->access$502(Lcom/android/htccontacts/HtcSendContactActivity;Z)Z

    .line 234
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mIsForegroundActivity:Z
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$600(Lcom/android/htccontacts/HtcSendContactActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 237
    .local v2, result:Landroid/os/AsyncResult;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 238
    const-string v3, "ENTITY_QUERY_COMPLETED"

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mENTITY_QUERY_COMPLETED:Z
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$700(Lcom/android/htccontacts/HtcSendContactActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->dataChanged()V
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$800(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 240
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mENTITY_QUERY_COMPLETED:Z
    invoke-static {v3, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->access$702(Lcom/android/htccontacts/HtcSendContactActivity;Z)Z

    .line 243
    :cond_3
    const-string v3, "CONTACT_INFO_COMPLETED"

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$100(Lcom/android/htccontacts/HtcSendContactActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 245
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v4}, Lcom/android/htccontacts/HtcSendContactActivity;->access$200(Lcom/android/htccontacts/HtcSendContactActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    const v6, 0x7f0a00e6

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 249
    :goto_2
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->hideLinkView()V

    .line 251
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mCONTACT_INFO_COMPLETED:Z
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$900(Lcom/android/htccontacts/HtcSendContactActivity;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 252
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->dataChanged()V
    invoke-static {v3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$800(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 253
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mCONTACT_INFO_COMPLETED:Z
    invoke-static {v3, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->access$902(Lcom/android/htccontacts/HtcSendContactActivity;Z)Z

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mIsDirty:Z
    invoke-static {v3, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->access$502(Lcom/android/htccontacts/HtcSendContactActivity;Z)Z

    goto/16 :goto_0

    .line 247
    :cond_5
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v4}, Lcom/android/htccontacts/HtcSendContactActivity;->access$200(Lcom/android/htccontacts/HtcSendContactActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    const v6, 0x7f0a00e3

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
