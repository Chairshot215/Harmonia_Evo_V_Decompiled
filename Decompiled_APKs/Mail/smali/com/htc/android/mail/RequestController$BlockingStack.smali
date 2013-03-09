.class Lcom/htc/android/mail/RequestController$BlockingStack;
.super Ljava/lang/Object;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockingStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 2934
    .local p0, this:Lcom/htc/android/mail/RequestController$BlockingStack;,"Lcom/htc/android/mail/RequestController$BlockingStack<TE;>;"
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2935
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    .line 2936
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2976
    .local p0, this:Lcom/htc/android/mail/RequestController$BlockingStack;,"Lcom/htc/android/mail/RequestController$BlockingStack<TE;>;"
    monitor-enter p0

    .line 2977
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 2980
    :cond_0
    monitor-exit p0

    .line 2981
    return-void

    .line 2980
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2947
    .local p0, this:Lcom/htc/android/mail/RequestController$BlockingStack;,"Lcom/htc/android/mail/RequestController$BlockingStack<TE;>;"
    :goto_0
    monitor-enter p0

    .line 2948
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2949
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 2953
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2951
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 2939
    .local p0, this:Lcom/htc/android/mail/RequestController$BlockingStack;,"Lcom/htc/android/mail/RequestController$BlockingStack<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    .line 2940
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2941
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2942
    monitor-exit p0

    .line 2943
    return-void

    .line 2942
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 2958
    .local p0, this:Lcom/htc/android/mail/RequestController$BlockingStack;,"Lcom/htc/android/mail/RequestController$BlockingStack<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    .line 2959
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 2960
    monitor-exit p0

    .line 2961
    return-void

    .line 2960
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2964
    .local p0, this:Lcom/htc/android/mail/RequestController$BlockingStack;,"Lcom/htc/android/mail/RequestController$BlockingStack<TE;>;"
    monitor-enter p0

    .line 2965
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2966
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2970
    .local p0, this:Lcom/htc/android/mail/RequestController$BlockingStack;,"Lcom/htc/android/mail/RequestController$BlockingStack<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    monitor-enter p0

    .line 2971
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$BlockingStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2972
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
