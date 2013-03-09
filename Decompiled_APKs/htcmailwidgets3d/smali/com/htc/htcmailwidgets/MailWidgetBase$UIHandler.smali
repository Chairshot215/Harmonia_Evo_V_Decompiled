.class public Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;
.super Landroid/os/Handler;
.source "MailWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    .line 314
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 320
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->handleUIMessage(Landroid/os/Message;)V

    .line 321
    return-void
.end method
