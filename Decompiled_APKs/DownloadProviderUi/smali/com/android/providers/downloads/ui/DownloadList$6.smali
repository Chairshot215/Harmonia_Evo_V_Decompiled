.class Lcom/android/providers/downloads/ui/DownloadList$6;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->val$downloadId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$1300(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->val$downloadId:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->restartDownload([J)V

    .line 508
    return-void
.end method
