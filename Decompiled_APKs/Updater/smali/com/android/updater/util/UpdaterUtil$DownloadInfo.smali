.class public Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
.super Ljava/lang/Object;
.source "UpdaterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/util/UpdaterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadInfo"
.end annotation


# instance fields
.field public downloadId:I

.field public downloadName:Ljava/lang/String;

.field public downloadPath:Ljava/lang/String;

.field public downloadStatus:I

.field public downloadVisibility:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "status"
    .parameter "name"
    .parameter "path"
    .parameter "visibility"

    .prologue
    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p1, p0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadId:I

    .line 217
    iput p2, p0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    .line 218
    iput-object p3, p0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadName:Ljava/lang/String;

    .line 219
    iput-object p4, p0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    .line 220
    iput p5, p0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadVisibility:I

    .line 221
    return-void
.end method
