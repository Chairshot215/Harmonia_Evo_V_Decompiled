.class abstract Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NetworkCursorLogic"
.end annotation


# instance fields
.field protected volatile mError:Lcom/google/android/gm/provider/Gmail$CursorError;

.field protected volatile mErrorOccurred:Z

.field protected volatile mFetcherThread:Ljava/lang/Thread;

.field protected mFetcherThreadLock:Ljava/lang/Object;

.field final mQueryId:J

.field private mSelectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4817
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4812
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThreadLock:Ljava/lang/Object;

    .line 4912
    iput-object v4, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mSelectionArgs:[Ljava/lang/String;

    .line 4818
    sget-wide v0, Lcom/google/android/gm/provider/MailEngine;->sNextQueryId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gm/provider/MailEngine;->sNextQueryId:J

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mQueryId:J

    .line 4819
    iput-object v4, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    .line 4820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 4821
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 4822
    return-void
.end method


# virtual methods
.method protected final clearErrorState()V
    .locals 1

    .prologue
    .line 4951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 4952
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 4953
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 4871
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 4872
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADING:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 4880
    .local v1, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4881
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4884
    const-string v2, "error"

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$CursorError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4886
    return-object v0

    .line 4873
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    if-eqz v2, :cond_1

    .line 4874
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ERROR:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    goto :goto_0

    .line 4875
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->isCursorComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4876
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    goto :goto_0

    .line 4878
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :cond_2
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    goto :goto_0
.end method

.method protected final getIsInErrorState()Z
    .locals 1

    .prologue
    .line 4947
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    return v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4919
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 4956
    const/4 v0, 0x0

    return v0
.end method

.method public isCursorComplete()Z
    .locals 1

    .prologue
    .line 4866
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .parameter "extras"

    .prologue
    .line 4890
    monitor-enter p0

    :try_start_0
    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4891
    .local v0, command:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4892
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "retry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4893
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->getIsInErrorState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4894
    const-string v2, "Gmail"

    const-string v3, "Mail cursor told to retry, but not in error state"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4903
    :goto_0
    const-string v2, "commandResponse"

    const-string v3, "ok"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4909
    :goto_1
    monitor-exit p0

    return-object v1

    .line 4895
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 4896
    const-string v2, "Gmail"

    const-string v3, "Mail cursor told to retry, but already fetching"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4890
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #response:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4898
    .restart local v0       #command:Ljava/lang/String;
    .restart local v1       #response:Landroid/os/Bundle;
    :cond_1
    :try_start_2
    const-string v2, "Gmail"

    const-string v3, "Mail cursor told to retry, retrying"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4899
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->clearErrorState()V

    .line 4900
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->startThread()Z

    .line 4901
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x0

    #calls: Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V
    invoke-static {v2, v3}, Lcom/google/android/gm/provider/MailEngine;->access$3100(Lcom/google/android/gm/provider/MailEngine;Z)V

    goto :goto_0

    .line 4906
    :cond_2
    const-string v2, "commandResponse"

    const-string v3, "unknownCommand"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4829
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->runInternal()V

    .line 4830
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 4831
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4851
    :goto_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    monitor-enter v2

    .line 4852
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 4853
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4855
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4856
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #calls: Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V
    invoke-static {v1, v6}, Lcom/google/android/gm/provider/MailEngine;->access$3100(Lcom/google/android/gm/provider/MailEngine;Z)V

    .line 4857
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThreadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4858
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    .line 4859
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4860
    return-void

    .line 4832
    :catch_0
    move-exception v0

    .line 4833
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Gmail"

    const-string v2, "MailCursor encountered an IOException: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4834
    iput-boolean v5, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 4835
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->IO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto :goto_0

    .line 4836
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 4837
    .local v0, e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    const-string v1, "Gmail"

    const-string v2, "MailCursor encountered an AuthenticationException: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4839
    iput-boolean v5, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 4840
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->AUTH_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto :goto_0

    .line 4841
    .end local v0           #e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    :catch_2
    move-exception v0

    .line 4842
    .local v0, e:Lcom/google/android/gm/provider/MailSync$ResponseParseException;
    const-string v1, "Gmail"

    const-string v2, "MailCursor encountered a ResponseParseException: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4844
    iput-boolean v5, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 4845
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->PARSE_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto :goto_0

    .line 4846
    .end local v0           #e:Lcom/google/android/gm/provider/MailSync$ResponseParseException;
    :catch_3
    move-exception v0

    .line 4847
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Gmail"

    const-string v2, "MailCursor encountered a SQLiteException: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4848
    iput-boolean v5, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 4849
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->DB_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto :goto_0

    .line 4855
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 4859
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected abstract runInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation
.end method

.method protected setSelectionArguments([Ljava/lang/String;)V
    .locals 0
    .parameter "selectionArgs"

    .prologue
    .line 4915
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mSelectionArgs:[Ljava/lang/String;

    .line 4916
    return-void
.end method

.method protected final startThread()Z
    .locals 4

    .prologue
    .line 4926
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 4928
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThreadLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4929
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mMailEngineClosing:Z
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$3200(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4930
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    .line 4931
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4932
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4936
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    monitor-enter v1

    .line 4937
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 4938
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4940
    :cond_0
    monitor-exit v1

    .line 4943
    :goto_0
    return v0

    .line 4940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4934
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4936
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    monitor-enter v1

    .line 4937
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 4938
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4940
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4943
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 4934
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4936
    :catchall_2
    move-exception v0

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    monitor-enter v1

    .line 4937
    :try_start_7
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    .line 4938
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4940
    :cond_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method
