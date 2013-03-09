.class Lcom/htc/android/mail/MailList$23;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->initScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/htc/android/mail/MailList$23;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 2169
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x1

    .line 2172
    packed-switch p2, :pswitch_data_0

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2174
    :pswitch_0
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    const-string v1, "OnScrollListener.SCROLL_STATE_FLING>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$23;->this$0:Lcom/htc/android/mail/MailList;

    #setter for: Lcom/htc/android/mail/MailList;->mIsScrolling:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/MailList;->access$3502(Lcom/htc/android/mail/MailList;Z)Z

    goto :goto_0

    .line 2178
    :pswitch_1
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    const-string v1, "OnScrollListener.SCROLL_STATE_IDLE>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$23;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailList;->mIsScrolling:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList;->access$3502(Lcom/htc/android/mail/MailList;Z)Z

    .line 2180
    iget-object v0, p0, Lcom/htc/android/mail/MailList$23;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3600(Lcom/htc/android/mail/MailList;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/htc/android/mail/MailList$23;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3600(Lcom/htc/android/mail/MailList;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2182
    iget-object v0, p0, Lcom/htc/android/mail/MailList$23;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList;->access$3602(Lcom/htc/android/mail/MailList;Landroid/os/Message;)Landroid/os/Message;

    goto :goto_0

    .line 2186
    :pswitch_2
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MailList"

    const-string v1, "OnScrollListener.SCROLL_STATE_TOUCH_SCROLL>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList$23;->this$0:Lcom/htc/android/mail/MailList;

    #setter for: Lcom/htc/android/mail/MailList;->mIsScrolling:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/MailList;->access$3502(Lcom/htc/android/mail/MailList;Z)Z

    goto :goto_0

    .line 2172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
