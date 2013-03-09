.class Lcom/android/updater/service/UpdaterCheckIntranetService$1;
.super Ljava/lang/Thread;
.source "UpdaterCheckIntranetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/service/UpdaterCheckIntranetService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/service/UpdaterCheckIntranetService;


# direct methods
.method constructor <init>(Lcom/android/updater/service/UpdaterCheckIntranetService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService$1;->this$0:Lcom/android/updater/service/UpdaterCheckIntranetService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 64
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService$1;->this$0:Lcom/android/updater/service/UpdaterCheckIntranetService;

    #getter for: Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/updater/service/UpdaterCheckIntranetService;->access$000(Lcom/android/updater/service/UpdaterCheckIntranetService;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFOTA"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService$1;->this$0:Lcom/android/updater/service/UpdaterCheckIntranetService;

    #calls: Lcom/android/updater/service/UpdaterCheckIntranetService;->doCheckConfirmStatus()V
    invoke-static {v0}, Lcom/android/updater/service/UpdaterCheckIntranetService;->access$100(Lcom/android/updater/service/UpdaterCheckIntranetService;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService$1;->this$0:Lcom/android/updater/service/UpdaterCheckIntranetService;

    #calls: Lcom/android/updater/service/UpdaterCheckIntranetService;->doCheckAcuConfirmStatus()V
    invoke-static {v0}, Lcom/android/updater/service/UpdaterCheckIntranetService;->access$200(Lcom/android/updater/service/UpdaterCheckIntranetService;)V

    goto :goto_0
.end method
