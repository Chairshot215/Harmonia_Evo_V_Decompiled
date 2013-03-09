.class Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;
.super Landroid/os/AsyncTask;
.source "MultiExecutableAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/MultiExecutableAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/module/MultiExecutableAsyncTask;


# direct methods
.method private constructor <init>(Lcom/htc/store/module/MultiExecutableAsyncTask;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>.RealAsyncTask;"
    iput-object p1, p0, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->this$0:Lcom/htc/store/module/MultiExecutableAsyncTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/module/MultiExecutableAsyncTask;Lcom/htc/store/module/MultiExecutableAsyncTask$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>.RealAsyncTask;"
    invoke-direct {p0, p1}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;-><init>(Lcom/htc/store/module/MultiExecutableAsyncTask;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>.RealAsyncTask;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->this$0:Lcom/htc/store/module/MultiExecutableAsyncTask;

    #calls: Lcom/htc/store/module/MultiExecutableAsyncTask;->getMultiExecutableAsyncTask()Lcom/htc/store/module/MultiExecutableAsyncTask;
    invoke-static {v0}, Lcom/htc/store/module/MultiExecutableAsyncTask;->access$100(Lcom/htc/store/module/MultiExecutableAsyncTask;)Lcom/htc/store/module/MultiExecutableAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/store/module/MultiExecutableAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>.RealAsyncTask;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->this$0:Lcom/htc/store/module/MultiExecutableAsyncTask;

    #calls: Lcom/htc/store/module/MultiExecutableAsyncTask;->getMultiExecutableAsyncTask()Lcom/htc/store/module/MultiExecutableAsyncTask;
    invoke-static {v0}, Lcom/htc/store/module/MultiExecutableAsyncTask;->access$100(Lcom/htc/store/module/MultiExecutableAsyncTask;)Lcom/htc/store/module/MultiExecutableAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/store/module/MultiExecutableAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>.RealAsyncTask;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    iget-object v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->this$0:Lcom/htc/store/module/MultiExecutableAsyncTask;

    #calls: Lcom/htc/store/module/MultiExecutableAsyncTask;->getMultiExecutableAsyncTask()Lcom/htc/store/module/MultiExecutableAsyncTask;
    invoke-static {v0}, Lcom/htc/store/module/MultiExecutableAsyncTask;->access$100(Lcom/htc/store/module/MultiExecutableAsyncTask;)Lcom/htc/store/module/MultiExecutableAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/store/module/MultiExecutableAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public varargs realPublishProgress([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>.RealAsyncTask;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    invoke-virtual {p0, p1}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 80
    return-void
.end method
