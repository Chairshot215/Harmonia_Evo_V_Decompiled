.class final Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->sendRequests(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

.field final synthetic val$contentLength:I

.field final synthetic val$macroRequest:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

.field final synthetic val$requests:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

    iput-object p3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$requests:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    iput p4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$contentLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->hasException()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$requests:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->getException()Ljava/lang/Exception;

    move-result-object v2

    #calls: Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->errorRequests([Ljava/lang/Object;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->access$200(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$requests:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    #calls: Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->disposeRequests([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->access$400(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget v1, v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesSent:I

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$contentLength:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->bytesSent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->close()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$requests:[Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    #calls: Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->handleResponses(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->access$300(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;

    invoke-interface {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;->close()V

    throw v0
.end method
