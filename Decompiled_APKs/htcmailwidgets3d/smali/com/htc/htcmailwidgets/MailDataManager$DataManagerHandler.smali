.class Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;
.super Landroid/os/Handler;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataManagerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "loop"

    .prologue
    .line 3007
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3008
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 3012
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3013
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3043
    :cond_0
    :goto_0
    return-void

    .line 3015
    :pswitch_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage of DataManagerHandler: dataMSG_UPDATE_TIMESTRING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3017
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateTimes()V

    .line 3018
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1602(Z)Z

    goto :goto_0

    .line 3022
    :pswitch_1
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage of DataManagerHandler: dataMSG_UPDATE_MAILCONTACTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateContactsToMail()V

    .line 3025
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2202(Z)Z

    goto :goto_0

    .line 3029
    :pswitch_2
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage of DataManagerHandler: dataMSG_UPDATE_MAILSTATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->updateMailStatus()V
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2400()V

    .line 3032
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2302(Z)Z

    goto :goto_0

    .line 3036
    :pswitch_3
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage of DataManagerHandler: dataMSG_BUILD_STATUSMAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3038
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->buildChangedMap()V
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1000()V

    .line 3039
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1102(Z)Z

    goto :goto_0

    .line 3013
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
