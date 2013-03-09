.class Lcom/android/providers/downloads/ui/DownloadList$7;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1402(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/Long;)Ljava/lang/Long;

    .line 591
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1502(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 592
    return-void
.end method
