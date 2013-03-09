.class Lcom/android/updater/ui/AcuProgressActivity$1;
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
    .line 70
    iput-object p1, p0, Lcom/android/updater/ui/AcuProgressActivity$1;->this$0:Lcom/android/updater/ui/AcuProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, strAction:Ljava/lang/String;
    const-string v1, "android.server.checkin.APPUPDATE_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity$1;->this$0:Lcom/android/updater/ui/AcuProgressActivity;

    invoke-virtual {v1}, Lcom/android/updater/ui/AcuProgressActivity;->finish()V

    .line 78
    :cond_0
    return-void
.end method
