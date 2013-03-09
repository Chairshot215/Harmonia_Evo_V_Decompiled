.class Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;
.super Landroid/os/Handler;
.source "MailCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveToStorageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailCommon;Lcom/htc/android/mail/MailCommon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;-><init>(Lcom/htc/android/mail/MailCommon;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 991
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SaveToStorageHandler>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1012
    :goto_0
    return-void

    .line 994
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 995
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    const v5, 0x7f0b0136

    #calls: Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailCommon;->access$600(Lcom/htc/android/mail/MailCommon;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    const v5, 0x7f0b0134

    #calls: Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailCommon;->access$600(Lcom/htc/android/mail/MailCommon;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 998
    .local v2, sucMsg:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v3, v3, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1001
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #sucMsg:Ljava/lang/StringBuilder;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/android/mail/Attachment;

    .line 1002
    .local v0, attach:Lcom/htc/android/mail/Attachment;
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play zip file>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v3, v3, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->access$100(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/htc/android/mail/MailCommon;->PlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;I)V

    goto :goto_0

    .line 1006
    .end local v0           #attach:Lcom/htc/android/mail/Attachment;
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto :goto_0

    .line 1009
    :pswitch_3
    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->this$0:Lcom/htc/android/mail/MailCommon;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto/16 :goto_0

    .line 992
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
