.class Lcom/google/android/apps/uploader/MasfUploadConnector$2;
.super Lcom/google/android/apps/uploader/MasfUploadConnector$RetryingListener;
.source "MasfUploadConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/MasfUploadConnector;->makeUploadRequest(Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

.field final synthetic val$listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/MasfUploadConnector;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

    iput-object p6, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->val$listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/apps/uploader/MasfUploadConnector$RetryingListener;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;Z)V

    return-void
.end method


# virtual methods
.method public onRequestCanceled()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector;->access$002(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    .line 149
    return-void
.end method

.method public onRequestFailed(Lcom/google/android/apps/uploader/ApplicationException;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->val$listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadApplicationFailure(Lcom/google/android/apps/uploader/ApplicationException;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector;->access$002(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    .line 136
    return-void
.end method

.method public onRequestFailed(Lcom/google/android/apps/uploader/NetworkException;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->val$listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadNetworkFailure(Lcom/google/android/apps/uploader/NetworkException;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector;->access$002(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    .line 130
    return-void
.end method

.method public onRequestProgress(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->val$listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadProgress(J)V

    .line 154
    return-void
.end method

.method public onRequestRetry(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->val$listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadRetry()V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector;->access$002(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    .line 144
    return-void
.end method

.method public onRequestSuccess(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->val$listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadSuccess()V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;->this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector;->access$002(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    .line 124
    return-void
.end method
