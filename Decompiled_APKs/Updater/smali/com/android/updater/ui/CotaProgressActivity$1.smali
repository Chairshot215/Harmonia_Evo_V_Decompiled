.class Lcom/android/updater/ui/CotaProgressActivity$1;
.super Landroid/database/ContentObserver;
.source "CotaProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/CotaProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/CotaProgressActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/CotaProgressActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/updater/ui/CotaProgressActivity$1;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity$1;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #calls: Lcom/android/updater/ui/CotaProgressActivity;->refreshDownloadProgress()V
    invoke-static {v0}, Lcom/android/updater/ui/CotaProgressActivity;->access$100(Lcom/android/updater/ui/CotaProgressActivity;)V

    .line 188
    return-void
.end method
