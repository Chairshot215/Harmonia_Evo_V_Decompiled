.class Lcom/android/updater/ui/ProgressActivity$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/updater/ui/ProgressActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/updater/ui/ProgressActivity$2;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity$2;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #calls: Lcom/android/updater/ui/ProgressActivity;->refreshDownloadProgress()V
    invoke-static {v0}, Lcom/android/updater/ui/ProgressActivity;->access$200(Lcom/android/updater/ui/ProgressActivity;)V

    .line 293
    return-void
.end method
