.class public Lcom/htc/htcCOTAClient/DownloadReceiver$CancelInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcCOTAClient/DownloadReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelInstallReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 627
    sget-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v1, "The installation is canceled. Delete the record in Download Mgr."

    invoke-static {v0, v1}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    #calls: Lcom/htc/htcCOTAClient/DownloadReceiver;->removeAllCOTADownloads()V
    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$100()V

    .line 629
    return-void
.end method
