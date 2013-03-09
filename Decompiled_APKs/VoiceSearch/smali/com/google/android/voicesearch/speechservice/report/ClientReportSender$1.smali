.class Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$1;
.super Ljava/lang/Object;
.source "ClientReportSender.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;)V
    .locals 2
    .parameter "taskToBeExecuted"

    .prologue
    .line 95
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method
