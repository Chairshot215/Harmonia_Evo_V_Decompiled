.class Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "DxDrmClient.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discretix/drm/api/DxDrmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContentmimeType:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mFileName:Ljava/lang/String;

    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    iput-object p3, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mContentmimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mContentmimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmClient$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method
