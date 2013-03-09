.class Lcom/htc/htcmailwidgets/MailListWidget$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailListWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailListWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailListWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    iget-wide v0, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailListWidget;->launchAccountList()V

    .line 601
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 596
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailListWidget$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
