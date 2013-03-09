.class public Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningDownload"
.end annotation


# instance fields
.field public final contentUri:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "contentUri"
    .parameter "status"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    .line 98
    return-void
.end method
