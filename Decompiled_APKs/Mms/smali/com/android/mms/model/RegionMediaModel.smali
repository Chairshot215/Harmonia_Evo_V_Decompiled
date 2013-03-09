.class public abstract Lcom/android/mms/model/RegionMediaModel;
.super Lcom/android/mms/model/MediaModel;
.source "RegionMediaModel.java"


# instance fields
.field protected mRegion:Lcom/android/mms/model/RegionModel;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "tag"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 44
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 63
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"
    .parameter "region"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 50
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;Landroid/net/Uri;)V
    .locals 7
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"
    .parameter "region"
    .parameter "uri"

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 56
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 57
    return-void
.end method


# virtual methods
.method public getRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    return v0
.end method

.method public setRegion(Lcom/android/mms/model/RegionModel;)V
    .locals 1
    .parameter "region"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionMediaModel;->notifyModelChanged(Z)V

    .line 73
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 87
    return-void
.end method
