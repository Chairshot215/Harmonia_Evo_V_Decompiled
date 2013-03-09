.class Lcom/google/android/voicesearch/logging/LoggingService$2;
.super Landroid/os/AsyncTask;
.source "LoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/logging/LoggingService;->flushClientReports()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/logging/LoggingService;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/logging/LoggingService;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/voicesearch/logging/LoggingService$2;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/logging/LoggingService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$2;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #getter for: Lcom/google/android/voicesearch/logging/LoggingService;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->access$400(Lcom/google/android/voicesearch/logging/LoggingService;)Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->sendPendingClientReports()V

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/logging/LoggingService$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$2;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #calls: Lcom/google/android/voicesearch/logging/LoggingService;->stopServiceIfNeeded()V
    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->access$500(Lcom/google/android/voicesearch/logging/LoggingService;)V

    .line 126
    return-void
.end method
