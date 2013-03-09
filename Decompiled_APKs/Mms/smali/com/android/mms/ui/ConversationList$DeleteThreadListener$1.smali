.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1399
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$300(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 1400
    .local v2, selection:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v4, v4, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1401
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v4, v4, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v4

    const/16 v5, 0x4e2a

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1403
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 1404
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$500(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 1405
    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 1406
    iput-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 1407
    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 1408
    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 1409
    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 1411
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1412
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1413
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 1419
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 1399
    .end local v2           #selection:Ljava/lang/String;
    :cond_1
    const-string v2, "locked=0"

    goto :goto_0
.end method
