.class Lcom/htc/htcmailwidgets/MailSummaryWidget$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailSummaryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailSummaryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 613
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v0

    .line 614
    .local v0, index:I
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 620
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->access$100(Lcom/htc/htcmailwidgets/MailSummaryWidget;)Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->access$100(Lcom/htc/htcmailwidgets/MailSummaryWidget;)Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->access$100(Lcom/htc/htcmailwidgets/MailSummaryWidget;)Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v1

    .line 622
    .local v1, mail:Lcom/htc/htcmailwidgets/MailData;
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    iget v5, v1, Lcom/htc/htcmailwidgets/MailData;->mId:I

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    iget v2, v2, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountProtocol:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->launchDetail(ILjava/lang/String;Z)V

    .line 625
    .end local v1           #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_0
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-ne v2, v3, :cond_1

    .line 628
    :cond_1
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v2, :cond_2

    .line 631
    :cond_2
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 634
    :cond_3
    return-void

    .line 622
    .restart local v1       #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 611
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
