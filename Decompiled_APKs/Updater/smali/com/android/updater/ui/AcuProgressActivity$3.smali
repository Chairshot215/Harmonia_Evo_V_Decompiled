.class Lcom/android/updater/ui/AcuProgressActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AcuProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/AcuProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/AcuProgressActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/AcuProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/updater/ui/AcuProgressActivity$3;->this$0:Lcom/android/updater/ui/AcuProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 382
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, strAction:Ljava/lang/String;
    const-string v3, "NotifyType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, typeString:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "android.server.checkin.APP_NOTIFY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    if-eqz v2, :cond_0

    const-string v3, "show"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v0, installIntent:Landroid/content/Intent;
    const-class v3, Lcom/android/updater/ui/AcuInstallProgressActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 391
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 392
    iget-object v3, p0, Lcom/android/updater/ui/AcuProgressActivity$3;->this$0:Lcom/android/updater/ui/AcuProgressActivity;

    invoke-virtual {v3, v0}, Lcom/android/updater/ui/AcuProgressActivity;->startActivity(Landroid/content/Intent;)V

    .line 393
    iget-object v3, p0, Lcom/android/updater/ui/AcuProgressActivity$3;->this$0:Lcom/android/updater/ui/AcuProgressActivity;

    invoke-virtual {v3}, Lcom/android/updater/ui/AcuProgressActivity;->finish()V

    .line 396
    .end local v0           #installIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
