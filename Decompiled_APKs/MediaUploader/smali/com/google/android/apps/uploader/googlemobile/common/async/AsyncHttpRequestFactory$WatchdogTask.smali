.class Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;
.super Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchdogTask"
.end annotation


# instance fields
.field request:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogFired()V

    return-void
.end method

.method public setRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    return-void
.end method
