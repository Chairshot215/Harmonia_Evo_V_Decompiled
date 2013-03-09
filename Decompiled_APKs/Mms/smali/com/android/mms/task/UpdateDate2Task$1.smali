.class Lcom/android/mms/task/UpdateDate2Task$1;
.super Ljava/lang/Object;
.source "UpdateDate2Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/task/UpdateDate2Task;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/task/UpdateDate2Task;


# direct methods
.method constructor <init>(Lcom/android/mms/task/UpdateDate2Task;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    const-string v2, "UpdateDate2Task"

    const-string v3, "started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    #calls: Lcom/android/mms/task/UpdateDate2Task;->getID(Z)Ljava/util/ArrayList;
    invoke-static {v2, v6}, Lcom/android/mms/task/UpdateDate2Task;->access$000(Lcom/android/mms/task/UpdateDate2Task;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    .local v1, smsID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    #calls: Lcom/android/mms/task/UpdateDate2Task;->getID(Z)Ljava/util/ArrayList;
    invoke-static {v2, v5}, Lcom/android/mms/task/UpdateDate2Task;->access$000(Lcom/android/mms/task/UpdateDate2Task;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 187
    .local v0, mmsID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iput v5, v2, Lcom/android/mms/task/SampleTask;->mStart:I

    .line 189
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/mms/task/SampleTask;->mEnd:I

    .line 190
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iput v5, v2, Lcom/android/mms/task/SampleTask;->mProgress:I

    .line 191
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    #calls: Lcom/android/mms/task/UpdateDate2Task;->processArray(ZLjava/util/ArrayList;)V
    invoke-static {v2, v6, v1}, Lcom/android/mms/task/UpdateDate2Task;->access$100(Lcom/android/mms/task/UpdateDate2Task;ZLjava/util/ArrayList;)V

    .line 192
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    #calls: Lcom/android/mms/task/UpdateDate2Task;->processArray(ZLjava/util/ArrayList;)V
    invoke-static {v2, v5, v0}, Lcom/android/mms/task/UpdateDate2Task;->access$100(Lcom/android/mms/task/UpdateDate2Task;ZLjava/util/ArrayList;)V

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iput-boolean v6, v2, Lcom/android/mms/task/SampleTask;->bFinished:Z

    .line 196
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iput-boolean v5, v2, Lcom/android/mms/task/SampleTask;->bStarted:Z

    .line 197
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iput-boolean v5, v2, Lcom/android/mms/task/SampleTask;->bPaused:Z

    .line 198
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iput-boolean v5, v2, Lcom/android/mms/task/SampleTask;->bCanceled:Z

    .line 199
    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iget-object v2, v2, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/task/UpdateDate2Task$1;->this$0:Lcom/android/mms/task/UpdateDate2Task;

    iget-object v2, v2, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    invoke-interface {v2}, Lcom/android/mms/task/ICoreTaskCallback;->onStop()V

    .line 201
    :cond_2
    const-string v2, "UpdateDate2Task"

    const-string v3, "finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method
