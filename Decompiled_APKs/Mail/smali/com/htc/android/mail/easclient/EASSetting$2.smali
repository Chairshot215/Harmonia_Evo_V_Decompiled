.class Lcom/htc/android/mail/easclient/EASSetting$2;
.super Landroid/content/BroadcastReceiver;
.source "EASSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 197
    if-nez p2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string v2, "intent.eas.mail.optionChange"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->updateSyncForXModeUI(Ljava/lang/Boolean;)V
    invoke-static {v2, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$1000(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/Boolean;)V

    .line 201
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadDaysUI(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$1100(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->setupMailFormatUI()V
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$1200(Lcom/htc/android/mail/easclient/EASSetting;)V

    .line 203
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$1300(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadAttachSizeUI(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$1400(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->updateCalendarSyncDaysUI(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$1500(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    const-string v2, "intent.eas.mail.schedulerChange"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const-string v2, "accountId"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 208
    .local v0, accountId:J
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$2;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->updateScheduleUI()V
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$1600(Lcom/htc/android/mail/easclient/EASSetting;)V

    goto :goto_0
.end method
