.class Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;
.super Ljava/lang/Object;
.source "MusicPreviewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRequest"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

.field private final mOffset:I

.field private final mSize:I

.field private mUrl:Ljava/lang/String;

.field private final mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/lang/String;Ljava/io/File;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;II)V
    .locals 0
    .parameter
    .parameter "wrapper"
    .parameter "url"
    .parameter "file"
    .parameter "listener"
    .parameter "offset"
    .parameter "maxSize"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    .line 471
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mUrl:Ljava/lang/String;

    .line 472
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mFile:Ljava/io/File;

    .line 473
    iput-object p5, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    .line 474
    iput p6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I

    .line 475
    if-lez p7, :cond_0

    .end local p7
    :goto_0
    iput p7, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mSize:I

    .line 476
    return-void

    .line 475
    .restart local p7
    :cond_0
    const p7, 0x7fffffff

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    #calls: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->fetchUrl(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V
    invoke-static {v0, p0}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->access$1100(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V

    .line 481
    return-void
.end method
