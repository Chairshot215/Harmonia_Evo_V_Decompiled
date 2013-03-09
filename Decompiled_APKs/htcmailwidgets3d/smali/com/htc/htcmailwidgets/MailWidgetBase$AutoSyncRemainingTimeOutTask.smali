.class public Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;
.super Ljava/util/TimerTask;
.source "MailWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AutoSyncRemainingTimeOutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method protected constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 302
    return-void
.end method
