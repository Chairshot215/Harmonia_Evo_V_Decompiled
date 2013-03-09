.class Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;
.super Landroid/os/Handler;
.source "HtcViewMyContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewMyContactCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$000(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->bDoingBuildSocialNetworkEntryTask:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$100(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->reConstruct()V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$200(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$200(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
