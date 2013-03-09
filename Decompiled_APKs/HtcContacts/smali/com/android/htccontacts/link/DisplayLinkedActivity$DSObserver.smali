.class Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;
.super Landroid/database/DataSetObserver;
.source "DisplayLinkedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DSObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 805
    return-void
.end method


# virtual methods
.method public declared-synchronized onChanged()V
    .locals 1

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 811
    :try_start_1
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$700(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->calculateContactHeader()V

    .line 812
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$700(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->notifyDataSetChanged()V

    .line 813
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :try_start_2
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 816
    monitor-exit p0

    return-void

    .line 813
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 810
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$700(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->notifyDataSetInvalidated()V

    .line 821
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$DSObserver;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$700(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->clearContactHeaderInfo()V

    .line 822
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 824
    return-void
.end method
