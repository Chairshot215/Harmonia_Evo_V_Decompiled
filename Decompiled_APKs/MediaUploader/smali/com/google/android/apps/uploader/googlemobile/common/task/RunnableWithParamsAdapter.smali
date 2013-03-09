.class public Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final methodCallId:I

.field private final params:[Ljava/lang/Object;

.field private final runnableParams:Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParams;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->methodCallId:I

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParams;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParams;

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->methodCallId:I

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParams;->run(I[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[runnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",methodCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->methodCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
