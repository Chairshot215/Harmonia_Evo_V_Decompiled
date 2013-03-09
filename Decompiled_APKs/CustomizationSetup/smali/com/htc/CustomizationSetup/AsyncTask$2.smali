.class Lcom/htc/CustomizationSetup/AsyncTask$2;
.super Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/CustomizationSetup/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/AsyncTask;


# direct methods
.method constructor <init>(Lcom/htc/CustomizationSetup/AsyncTask;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask$2;,"Lcom/htc/CustomizationSetup/AsyncTask.2;"
    iput-object p1, p0, Lcom/htc/CustomizationSetup/AsyncTask$2;->this$0:Lcom/htc/CustomizationSetup/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;-><init>(Lcom/htc/CustomizationSetup/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask$2;,"Lcom/htc/CustomizationSetup/AsyncTask.2;"
    iget-object v0, p0, Lcom/htc/CustomizationSetup/AsyncTask$2;->this$0:Lcom/htc/CustomizationSetup/AsyncTask;

    iget-object v1, p0, Lcom/htc/CustomizationSetup/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/htc/CustomizationSetup/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
