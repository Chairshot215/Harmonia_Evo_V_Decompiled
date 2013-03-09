.class public Lcom/google/android/apps/uploader/MasfUploadConnector;
.super Ljava/lang/Object;
.source "MasfUploadConnector.java"

# interfaces
.implements Lcom/google/android/apps/uploader/UploadConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/MasfUploadConnector$DefaultMASFProvider;,
        Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;,
        Lcom/google/android/apps/uploader/MasfUploadConnector$RetryingListener;
    }
.end annotation


# static fields
.field private static final REFRESH_SUFFIX:Ljava/lang/String; = "REFRESHED"

.field private static final UPLOAD_WINDOW_SIZE:I = 0x3


# instance fields
.field protected context:Landroid/content/Context;

.field private currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

.field private masfProvider:Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/google/android/apps/uploader/MasfUploadConnector$DefaultMASFProvider;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/MasfUploadConnector$DefaultMASFProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->masfProvider:Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->masfProvider:Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    return-object p1
.end method

.method static synthetic access$100(I)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/apps/uploader/MasfUploadConnector;->isSuccessResponse(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/apps/uploader/MasfUploadConnector;->isAuthErrorResponse(I)Z

    move-result v0

    return v0
.end method

.method private static isAuthErrorResponse(I)Z
    .locals 1
    .parameter

    .prologue
    .line 299
    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x195

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSuccessResponse(I)Z
    .locals 1
    .parameter

    .prologue
    .line 305
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelCurrentUploadRequest()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling current upload request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->masfProvider:Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;

    iget-object v1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;->cancelResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)V

    .line 169
    :cond_0
    return-void
.end method

.method public makeUploadRequest(Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/uploader/MasfUploadConnector$1;-><init>(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getRequestTemplate()Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/apps/uploader/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    const-string v3, "%=_auth_token_=%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    :goto_0
    new-instance v2, Lcom/google/android/apps/uploader/MasfUploadRequestParser;

    invoke-direct {v2}, Lcom/google/android/apps/uploader/MasfUploadRequestParser;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/apps/uploader/MasfUploadRequestParser;->createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;)Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getUploadTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_2

    const-string v2, "REFRESHED"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->setRequestId(Ljava/lang/String;)V

    .line 112
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uploading ticketID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->setMaximumWindowSize(I)V

    .line 117
    new-instance v0, Lcom/google/android/apps/uploader/MasfUploadConnector$2;

    iget-object v2, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getAccount()Ljava/lang/String;

    move-result-object v3

    if-nez p4, :cond_3

    const/4 v1, 0x1

    move v5, v1

    :goto_2
    move-object v1, p0

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/uploader/MasfUploadConnector$2;-><init>(Lcom/google/android/apps/uploader/MasfUploadConnector;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;->setListener(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest$Listener;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->masfProvider:Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;

    iget-object v1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector;->currentUploadRequest:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;->submitResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)V

    .line 161
    return-void

    .line 101
    :cond_1
    const-string v2, "MediaUploader"

    const-string v3, "got null authToken"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 117
    :cond_3
    const/4 v1, 0x0

    move v5, v1

    goto :goto_2
.end method
