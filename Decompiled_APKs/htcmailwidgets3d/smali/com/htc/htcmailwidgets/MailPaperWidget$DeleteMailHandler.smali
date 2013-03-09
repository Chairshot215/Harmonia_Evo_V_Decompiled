.class public Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;
.super Landroid/os/Handler;
.source "MailPaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailPaperWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DeleteMailHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    .line 181
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 182
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 186
    move-object v0, p1

    .line 187
    .local v0, message:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 190
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1e62
        :pswitch_0
    .end packed-switch
.end method
