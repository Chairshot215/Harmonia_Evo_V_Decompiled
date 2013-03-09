.class Lcom/android/updater/ui/ProgressActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/updater/ui/ProgressActivity$1;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, strAction:Ljava/lang/String;
    const-string v1, "com.android.updater.VERIFY_FOTA_PKG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity$1;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #calls: Lcom/android/updater/ui/ProgressActivity;->SetVerifyState()V
    invoke-static {v1}, Lcom/android/updater/ui/ProgressActivity;->access$000(Lcom/android/updater/ui/ProgressActivity;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "com.android.updater.FOTA_CANCEL_CONFIRM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity$1;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v1}, Lcom/android/updater/ui/ProgressActivity;->finish()V

    goto :goto_0
.end method
