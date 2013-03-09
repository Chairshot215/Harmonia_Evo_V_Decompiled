.class public Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;
.super Landroid/os/Handler;
.source "MailPaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailPaperWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtractDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 166
    move-object v0, p1

    .line 167
    .local v0, message:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 170
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->extractCursorTask(Landroid/database/Cursor;)V
    invoke-static {v2, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$000(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x22b9
        :pswitch_0
    .end packed-switch
.end method
