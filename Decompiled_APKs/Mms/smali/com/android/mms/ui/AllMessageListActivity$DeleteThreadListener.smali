.class Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;
.super Ljava/lang/Object;
.source "AllMessageListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AllMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private mDeleteLockedMessages:Z

.field private mDeleteUri:Landroid/net/Uri;

.field private mHtcDeleteUri:Landroid/net/Uri;

.field private mHtcThreadId:J

.field private mThreadId:J

.field final synthetic this$0:Lcom/android/mms/ui/AllMessageListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;JJ)V
    .locals 7
    .parameter
    .parameter "threadId"
    .parameter "htcThreadId"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    .line 637
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 633
    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 638
    iput-wide p2, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    .line 639
    iput-wide p4, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcThreadId:J

    .line 640
    iget-wide v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iput-wide v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    .line 641
    :cond_0
    iget-wide v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcThreadId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iput-wide v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcThreadId:J

    .line 643
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-eqz v3, :cond_6

    .line 644
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 645
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 653
    :goto_0
    sget-object v3, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 654
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 655
    sget-object v2, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    .line 656
    :cond_2
    iget-wide v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcThreadId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 660
    const-string v3, "Amos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmsApp.isSupportBackgroundDeletion(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 663
    iget-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 664
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "bg"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 665
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 667
    iget-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 668
    .local v1, htcBuilder:Landroid/net/Uri$Builder;
    const-string v3, "bg"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 669
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 673
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #htcBuilder:Landroid/net/Uri$Builder;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 674
    iget-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 675
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v3, "trash"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 676
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 678
    iget-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 679
    .restart local v1       #htcBuilder:Landroid/net/Uri$Builder;
    const-string v3, "trash"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 680
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 684
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #htcBuilder:Landroid/net/Uri$Builder;
    :cond_4
    const-string v3, "Amos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeleteUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v3, "Amos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHtcDeleteUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void

    .line 647
    .end local v2           #uri:Landroid/net/Uri;
    :cond_5
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 649
    :cond_6
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 697
    new-instance v1, Lcom/android/mms/ui/AllMessageListActivity$DeletCookie;

    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-direct {v1, v5, v4}, Lcom/android/mms/ui/AllMessageListActivity$DeletCookie;-><init>(Lcom/android/mms/ui/AllMessageListActivity;Lcom/android/mms/ui/AllMessageListActivity$1;)V

    .line 698
    .local v1, cookie:Lcom/android/mms/ui/AllMessageListActivity$DeletCookie;
    iget-wide v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    iput-wide v5, v1, Lcom/android/mms/ui/AllMessageListActivity$DeletCookie;->thread_id:J

    .line 699
    iget-wide v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcThreadId:J

    iput-wide v5, v1, Lcom/android/mms/ui/AllMessageListActivity$DeletCookie;->htcThread_id:J

    .line 700
    const-string v5, "AllMessageListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/mms/ui/AllMessageListActivity$DeletCookie;->thread_id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v5, "AllMessageListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htcThread_id> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcThreadId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-static {v5}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 705
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-static {v4, v9}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-boolean v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteLockedMessages:Z

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 714
    .local v3, selection:Ljava/lang/String;
    :goto_1
    iget-wide v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 715
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-wide v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    new-instance v7, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;

    invoke-direct {v7, p0, v3}, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 712
    .end local v3           #selection:Ljava/lang/String;
    :cond_2
    const-string v3, "locked=0"

    goto :goto_1

    .line 753
    .restart local v3       #selection:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 754
    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v5

    const/16 v6, 0x4e34

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 756
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 757
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mHtcDeleteUri:Landroid/net/Uri;

    iput-object v5, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 758
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 759
    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 760
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 761
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 762
    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mThreadId:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 764
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 765
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v4, v4, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v4, v9}, Lcom/android/mms/ui/AllMessageListAdapter;->setAutoQueryCursor(Z)V

    goto :goto_0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 693
    return-void
.end method
