.class Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplyClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;",
        ">;"
    }
.end annotation


# instance fields
.field messageId:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2982
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 2980
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;->messageId:J

    .line 2983
    iput-wide p1, p0, Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;->messageId:J

    .line 2984
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2987
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2100()Lcom/htc/htcmailwidgets/IMailCallbackListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;->messageId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcmailwidgets/IMailCallbackListener;->onTriggerReplyListener(JLcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V

    .line 2988
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2979
    check-cast p1, Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V

    return-void
.end method
