.class Lcom/htc/htcmailwidgets/MailWidgetBase$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$2;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 363
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-ne v0, v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$2;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    #calls: Lcom/htc/htcmailwidgets/MailWidgetBase;->surpressHostSlide(Z)V
    invoke-static {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$100(Lcom/htc/htcmailwidgets/MailWidgetBase;Z)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$2;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v1, 0x0

    #calls: Lcom/htc/htcmailwidgets/MailWidgetBase;->surpressHostSlide(Z)V
    invoke-static {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$200(Lcom/htc/htcmailwidgets/MailWidgetBase;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 361
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method
