.class Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagePlaybackInfoListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
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
    .line 2944
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 2942
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;->messageId:J

    .line 2945
    iput-wide p1, p0, Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;->messageId:J

    .line 2946
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2949
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2100()Lcom/htc/htcmailwidgets/IMailCallbackListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;->messageId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcmailwidgets/IMailCallbackListener;->onTriggerPlaybackListener(JLcom/htc/fusion/fx/FxPlaybackInfo;)V

    .line 2950
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2941
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
