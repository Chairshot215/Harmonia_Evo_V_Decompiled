.class Lcom/android/providers/downloads/ui/DownloadList$5;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
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
    .line 492
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->val$downloadId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->val$downloadId:J

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$1200(Lcom/android/providers/downloads/ui/DownloadList;J)V

    .line 496
    return-void
.end method
