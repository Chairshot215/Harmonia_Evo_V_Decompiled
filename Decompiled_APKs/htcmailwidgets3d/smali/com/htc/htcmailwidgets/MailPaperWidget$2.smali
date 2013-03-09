.class Lcom/htc/htcmailwidgets/MailPaperWidget$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailPaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailPaperWidget;
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
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 715
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v0

    .line 716
    .local v0, index:I
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 722
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$100(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$100(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$100(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v1

    .line 724
    .local v1, mail:Lcom/htc/htcmailwidgets/MailData;
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget v5, v1, Lcom/htc/htcmailwidgets/MailData;->mId:I

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountProtocol:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->launchDetail(ILjava/lang/String;Z)V

    .line 727
    .end local v1           #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_0
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-ne v2, v3, :cond_1

    .line 730
    :cond_1
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v2, :cond_2

    .line 733
    :cond_2
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 736
    :cond_3
    return-void

    .line 724
    .restart local v1       #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 713
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailPaperWidget$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
