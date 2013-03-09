.class public Lcom/htc/sunny2/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Constants"

.field public static final MIME_3D_IMAGE_TYPES:[Ljava/lang/String; = null

.field public static final MIME_3D_VIDEO_TYPES:[Ljava/lang/String; = null

.field public static final MIME_TYPE_3GP_2D:Ljava/lang/String; = "video/3gpp"

.field public static final MIME_TYPE_3GP_3D:Ljava/lang/String; = "video/3gpp-3d"

.field public static final MIME_TYPE_JPG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_JPS:Ljava/lang/String; = "image/jps"

.field public static final MIME_TYPE_MP4_2D:Ljava/lang/String; = "video/mp4"

.field public static final MIME_TYPE_MP4_3D:Ljava/lang/String; = "video/mp4-3d"

.field public static final MIME_TYPE_MPO:Ljava/lang/String; = "image/mpo"

.field public static final MIME_TYPE_XJPS:Ljava/lang/String; = "image/x-jps"

.field public static final MIME_TYPE_XMPO:Ljava/lang/String; = "image/x-mpo"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jps"

    aput-object v1, v0, v3

    const-string v1, "image/x-jps"

    aput-object v1, v0, v4

    const-string v1, "image/mpo"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "image/x-mpo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sunny2/common/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "video/mp4-3d"

    aput-object v1, v0, v3

    const-string v1, "video/3gpp-3d"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny2/common/Constants;->MIME_3D_VIDEO_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
