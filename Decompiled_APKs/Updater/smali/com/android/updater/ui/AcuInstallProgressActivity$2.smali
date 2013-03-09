.class Lcom/android/updater/ui/AcuInstallProgressActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AcuInstallProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/AcuInstallProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/AcuInstallProgressActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/AcuInstallProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/updater/ui/AcuInstallProgressActivity$2;->this$0:Lcom/android/updater/ui/AcuInstallProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, strAction:Ljava/lang/String;
    const-string v3, "NotifyType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, typeString:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "android.server.checkin.APP_DOWNLOAD_TRIGGERED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, downloadIntent:Landroid/content/Intent;
    const-class v3, Lcom/android/updater/ui/AcuProgressActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    iget-object v3, p0, Lcom/android/updater/ui/AcuInstallProgressActivity$2;->this$0:Lcom/android/updater/ui/AcuInstallProgressActivity;

    invoke-virtual {v3}, Lcom/android/updater/ui/AcuInstallProgressActivity;->finish()V

    .line 147
    .end local v0           #downloadIntent:Landroid/content/Intent;
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "android.server.checkin.APP_NOTIFY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    if-eqz v2, :cond_1

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/updater/ui/AcuInstallProgressActivity$2;->this$0:Lcom/android/updater/ui/AcuInstallProgressActivity;

    invoke-virtual {v3}, Lcom/android/updater/ui/AcuInstallProgressActivity;->finish()V

    .line 154
    :cond_1
    return-void
.end method
