.class public Lcom/google/android/googlequicksearchbox/util/FetchUrlTask;
.super Landroid/os/AsyncTask;
.source "FetchUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/FetchUrlTask;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 33
    return-void
.end method

.method private fetchHttpRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 41
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;

    invoke-direct {v1, p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/FetchUrlTask;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    const/4 v3, 0x3

    invoke-interface {v2, v1, v3}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->get(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/util/FetchUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "urls"

    .prologue
    .line 37
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/util/FetchUrlTask;->fetchHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
