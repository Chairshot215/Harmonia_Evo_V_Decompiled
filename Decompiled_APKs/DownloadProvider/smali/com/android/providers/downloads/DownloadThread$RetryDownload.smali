.class Lcom/android/providers/downloads/DownloadThread$RetryDownload;
.super Ljava/lang/Throwable;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryDownload"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadThread;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/DownloadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread$RetryDownload;->this$0:Lcom/android/providers/downloads/DownloadThread;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/DownloadThread;Lcom/android/providers/downloads/DownloadThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread$RetryDownload;-><init>(Lcom/android/providers/downloads/DownloadThread;)V

    return-void
.end method
