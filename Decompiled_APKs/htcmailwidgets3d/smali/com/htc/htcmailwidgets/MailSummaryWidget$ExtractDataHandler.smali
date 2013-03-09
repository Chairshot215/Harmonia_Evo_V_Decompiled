.class public Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;
.super Landroid/os/Handler;
.source "MailSummaryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailSummaryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtractDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 117
    move-object v0, p1

    .line 118
    .local v0, message:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 121
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    #calls: Lcom/htc/htcmailwidgets/MailSummaryWidget;->extractCursorTask(Landroid/database/Cursor;)V
    invoke-static {v2, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->access$000(Lcom/htc/htcmailwidgets/MailSummaryWidget;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x22b9
        :pswitch_0
    .end packed-switch
.end method
