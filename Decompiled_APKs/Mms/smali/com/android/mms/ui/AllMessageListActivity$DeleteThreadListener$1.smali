.class Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "AllMessageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

.field final synthetic val$selection:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    iput-object p2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->val$selection:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 728
    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 729
    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v2

    const/16 v3, 0x4e34

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 731
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 732
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->access$300(Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 733
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 734
    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->val$selection:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 735
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 736
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 737
    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->access$400(Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 739
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 741
    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v2, v2, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/AllMessageListAdapter;->setAutoQueryCursor(Z)V

    .line 745
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
