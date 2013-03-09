.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1005
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1700(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #setter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1802(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Z)Z

    .line 1009
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    monitor-enter v1

    .line 1010
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->appendRoot(Ljava/util/LinkedList;)V

    .line 1012
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #setter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1802(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Z)Z

    .line 1017
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    monitor-enter v1

    .line 1018
    :try_start_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1019
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
