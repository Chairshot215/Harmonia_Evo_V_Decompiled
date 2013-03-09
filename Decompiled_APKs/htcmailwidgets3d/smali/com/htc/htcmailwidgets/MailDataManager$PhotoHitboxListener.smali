.class Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoHitboxListener"
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
.field messageId:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2956
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 2954
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;->messageId:J

    .line 2957
    iput-wide p1, p0, Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;->messageId:J

    .line 2958
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2961
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2100()Lcom/htc/htcmailwidgets/IMailCallbackListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;->messageId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcmailwidgets/IMailCallbackListener;->onTriggerPhotoListener(JLcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    .line 2962
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2953
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
