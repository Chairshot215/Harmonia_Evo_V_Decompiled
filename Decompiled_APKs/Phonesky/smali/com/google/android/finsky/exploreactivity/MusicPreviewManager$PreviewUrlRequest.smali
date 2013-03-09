.class Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;
.super Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;
.source "MusicPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewUrlRequest"
.end annotation


# instance fields
.field private final mPriority:Lcom/android/volley/Request$Priority;

.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;Lcom/android/volley/Request$Priority;)V
    .locals 2
    .parameter
    .parameter "request"
    .parameter "url"
    .parameter "priority"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;->this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    .line 517
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;

    invoke-direct {v1, p1, p2}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;-><init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 530
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 531
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;Lcom/android/volley/Request$Priority;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 513
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;-><init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;Lcom/android/volley/Request$Priority;)V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
