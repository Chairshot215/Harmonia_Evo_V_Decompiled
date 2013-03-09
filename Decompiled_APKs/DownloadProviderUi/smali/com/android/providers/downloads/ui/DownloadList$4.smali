.class Lcom/android/providers/downloads/ui/DownloadList$4;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V
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
    .line 264
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$900(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 269
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$900(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v1

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$800(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    .line 270
    return-void
.end method
