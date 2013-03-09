.class public Lcom/google/android/finsky/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 6
    .parameter "uri"
    .parameter "title"
    .parameter "notificationPackage"
    .parameter "notificationClass"
    .parameter "cookieName"
    .parameter "cookieValue"
    .parameter "fileUri"
    .parameter "wifiOnly"
    .parameter "invisible"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "otheruid"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p7, :cond_3

    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getFileDestinationConstant()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "hint"

    invoke-virtual {p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "notificationpackage"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "notificationclass"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "cookiedata"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    if-nez p9, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    :goto_1
    if-eqz p8, :cond_2

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "allowed_network_types"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "is_public_api"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "allow_roaming"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    :cond_2
    return-void

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method toContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method
