.class Lcom/android/updater/ui/AcuProgressActivity$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/updater/ui/AcuProgressActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/updater/ui/AcuProgressActivity$2;->this$0:Lcom/android/updater/ui/AcuProgressActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity$2;->this$0:Lcom/android/updater/ui/AcuProgressActivity;

    #calls: Lcom/android/updater/ui/AcuProgressActivity;->refreshDownloadProgress()V
    invoke-static {v0}, Lcom/android/updater/ui/AcuProgressActivity;->access$000(Lcom/android/updater/ui/AcuProgressActivity;)V

    .line 375
    return-void
.end method
