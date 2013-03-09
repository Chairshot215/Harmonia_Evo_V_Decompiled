.class final Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;
.super Ljava/lang/Object;
.source "DocumentView.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/DocumentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WatchedInstallerListener"
.end annotation


# instance fields
.field private final mWatchedDocId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "docId"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;->mWatchedDocId:Ljava/lang/String;

    .line 390
    return-void
.end method


# virtual methods
.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 2
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;->mWatchedDocId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$500(Lcom/google/android/finsky/activities/myapps/DocumentView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$400(Lcom/google/android/finsky/activities/myapps/DocumentView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    :cond_0
    return-void
.end method
