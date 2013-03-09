.class Lcom/htc/htcmailwidgets/MailListWidget$1;
.super Ljava/lang/Object;
.source "MailListWidget.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailListWidget;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailListWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailListWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailListWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    iget-boolean v0, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedGetAutoSyncStatus:Z

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0
.end method
