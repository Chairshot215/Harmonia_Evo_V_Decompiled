.class Lcom/android/providers/downloads/ui/DownloadList$1;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->onCreate(Landroid/os/Bundle;)V
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
    .line 201
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z
    invoke-static {v1, v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$402(Lcom/android/providers/downloads/ui/DownloadList;Z)Z

    .line 207
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 209
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
