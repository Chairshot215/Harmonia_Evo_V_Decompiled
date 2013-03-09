.class Lcom/htc/app/ShareListActivity$3;
.super Landroid/os/Handler;
.source "ShareListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/ShareListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/ShareListActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/ShareListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v4, 0x4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    const v4, 0x20c0194

    invoke-virtual {v3, v4}, Lcom/htc/app/ShareListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/app/ShareListActivity;->launchProgressDialog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/app/ShareListActivity;->access$200(Lcom/htc/app/ShareListActivity;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/urlshorten/IsgdParser;

    invoke-direct {v0}, Lcom/htc/urlshorten/IsgdParser;-><init>()V

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    iget-object v1, v2, Lcom/htc/app/ShareListActivity;->mLongURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mShareHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$000(Lcom/htc/app/ShareListActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/urlshorten/IsgdParser;->shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/htc/urlshorten/IsgdInfo;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/htc/urlshorten/IsgdInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lcom/htc/urlshorten/IsgdInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v8}, Lcom/htc/urlshorten/IsgdInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/app/ShareListActivity;->startSelectedAppWithShortenedURL(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/app/ShareListActivity;->access$400(Lcom/htc/app/ShareListActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v2}, Lcom/htc/app/ShareListActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string v2, "KENLOG"

    const-string v3, "[ShareListActivity] MSG_SHORTEN_COMPLETE_ISGD => incorrect shortened URL..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v4, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mShareHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$000(Lcom/htc/app/ShareListActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    const-string v2, "KENLOG"

    const-string v3, "[ShareListActivity] MSG_SHORTEN_ERROR_ISGD/MSG_SHORTEN_TIMEOUT_ISGD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v4, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mShareHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$000(Lcom/htc/app/ShareListActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Lcom/htc/urlshorten/BitlyParser;

    invoke-direct {v1}, Lcom/htc/urlshorten/BitlyParser;-><init>()V

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    iget-object v2, v2, Lcom/htc/app/ShareListActivity;->mLongURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mShareHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/app/ShareListActivity;->access$000(Lcom/htc/app/ShareListActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x6

    invoke-virtual/range {v1 .. v6}, Lcom/htc/urlshorten/BitlyParser;->shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/urlshorten/BitlyInfo;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/htc/urlshorten/BitlyInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v7}, Lcom/htc/urlshorten/BitlyInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v7}, Lcom/htc/urlshorten/BitlyInfo;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v7}, Lcom/htc/urlshorten/BitlyInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/app/ShareListActivity;->startSelectedAppWithShortenedURL(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/app/ShareListActivity;->access$400(Lcom/htc/app/ShareListActivity;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v2}, Lcom/htc/app/ShareListActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    const-string v2, "KENLOG"

    const-string v3, "[ShareListActivity] MSG_SHORTEN_COMPLETE_BITLY => incorrect shortened URL..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #calls: Lcom/htc/app/ShareListActivity;->startSelectedAppWithoutShortenedURL()V
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$100(Lcom/htc/app/ShareListActivity;)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_4
    const-string v2, "KENLOG"

    const-string v3, "[ShareListActivity] MSG_SHORTEN_TIMEOUT_BITLY/MSG_SHORTEN_ERROR_BITLY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    #calls: Lcom/htc/app/ShareListActivity;->startSelectedAppWithoutShortenedURL()V
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$100(Lcom/htc/app/ShareListActivity;)V

    iget-object v2, p0, Lcom/htc/app/ShareListActivity$3;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v2}, Lcom/htc/app/ShareListActivity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
