.class Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "ReportIndicatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ReportIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportIndicatorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ReportIndicatorCache;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/ReportIndicatorCache;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;->this$0:Lcom/android/mms/util/ReportIndicatorCache;

    .line 314
    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    .line 315
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/util/ReportIndicatorCache;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;->this$0:Lcom/android/mms/util/ReportIndicatorCache;

    .line 318
    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    .line 319
    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 324
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 326
    :pswitch_0
    const-string v1, "ReportIndicatorCache"

    const-string v2, "MSG_QUERY_REPORTS >>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;->this$0:Lcom/android/mms/util/ReportIndicatorCache;

    #calls: Lcom/android/mms/util/ReportIndicatorCache;->onReportsQueryComplete()V
    invoke-static {v1}, Lcom/android/mms/util/ReportIndicatorCache;->access$200(Lcom/android/mms/util/ReportIndicatorCache;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_1
    iget-object v1, p0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;->this$0:Lcom/android/mms/util/ReportIndicatorCache;

    #calls: Lcom/android/mms/util/ReportIndicatorCache;->notifyOvserverInBackground()V
    invoke-static {v1}, Lcom/android/mms/util/ReportIndicatorCache;->access$300(Lcom/android/mms/util/ReportIndicatorCache;)V

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "ReportIndicatorCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage_Debug e >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch
.end method
