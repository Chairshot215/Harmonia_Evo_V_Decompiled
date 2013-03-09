.class public final Lcom/discretix/drm/api/DxContentInfo;
.super Ljava/lang/Object;
.source "DxContentInfo.java"


# instance fields
.field private mContentMimeType:Ljava/lang/String;

.field private mDrmContentType:Lcom/discretix/drm/api/EDxDrmContentType;

.field private mDrmScheme:Lcom/discretix/drm/api/EDxDrmScheme;

.field private mFileMimeType:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/discretix/drm/api/EDxDrmScheme;Ljava/lang/String;Ljava/lang/String;Lcom/discretix/drm/api/EDxDrmContentType;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/DxContentInfo;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/discretix/drm/api/DxContentInfo;->mDrmScheme:Lcom/discretix/drm/api/EDxDrmScheme;

    iput-object p3, p0, Lcom/discretix/drm/api/DxContentInfo;->mFileMimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/discretix/drm/api/DxContentInfo;->mContentMimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/discretix/drm/api/DxContentInfo;->mDrmContentType:Lcom/discretix/drm/api/EDxDrmContentType;

    return-void
.end method


# virtual methods
.method public final getContentMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxContentInfo;->mContentMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDrmContentType()Lcom/discretix/drm/api/EDxDrmContentType;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxContentInfo;->mDrmContentType:Lcom/discretix/drm/api/EDxDrmContentType;

    return-object v0
.end method

.method public final getDrmScheme()Lcom/discretix/drm/api/EDxDrmScheme;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxContentInfo;->mDrmScheme:Lcom/discretix/drm/api/EDxDrmScheme;

    return-object v0
.end method

.method public final getFileMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxContentInfo;->mFileMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxContentInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/discretix/drm/api/DxContentInfo;->mFilePath:Ljava/lang/String;

    return-void
.end method
