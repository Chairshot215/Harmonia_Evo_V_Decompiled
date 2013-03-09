.class Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/CustomizationSetup/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/htc/CustomizationSetup/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/htc/CustomizationSetup/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/CustomizationSetup/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;,"Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, data:[Ljava/lang/Object;,"[TData;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;->mTask:Lcom/htc/CustomizationSetup/AsyncTask;

    .line 453
    iput-object p2, p0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 454
    return-void
.end method
