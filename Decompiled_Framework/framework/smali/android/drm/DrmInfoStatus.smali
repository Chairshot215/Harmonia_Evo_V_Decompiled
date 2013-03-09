.class public Landroid/drm/DrmInfoStatus;
.super Ljava/lang/Object;
.source "DrmInfoStatus.java"


# static fields
.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final data:Landroid/drm/ProcessedData;

.field public final infoType:I

.field public final mimeType:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(IILandroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    iput p2, p0, Landroid/drm/DrmInfoStatus;->infoType:I

    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    iput-object p4, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    return-void
.end method
