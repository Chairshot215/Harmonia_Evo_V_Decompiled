.class public Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;
.super Landroid/os/Handler;
.source "MailListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtractDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailListWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailListWidget;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    .line 111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 116
    move-object v0, p1

    .line 117
    .local v0, message:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 120
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    #calls: Lcom/htc/htcmailwidgets/MailListWidget;->extractCursorTask(Landroid/database/Cursor;)V
    invoke-static {v2, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->access$000(Lcom/htc/htcmailwidgets/MailListWidget;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x22b9
        :pswitch_0
    .end packed-switch
.end method
