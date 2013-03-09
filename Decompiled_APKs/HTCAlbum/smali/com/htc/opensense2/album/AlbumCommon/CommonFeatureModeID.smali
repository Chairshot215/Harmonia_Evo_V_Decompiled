.class public Lcom/htc/opensense2/album/AlbumCommon/CommonFeatureModeID;
.super Ljava/lang/Object;
.source "CommonFeatureModeID.java"


# static fields
.field public static CURRENT_MODE:I = 0x0

.field public static final DELETE:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final NO_PHOTOVIDEO:I = 0x8000

.field public static final NO_SD:I = 0x4000

.field public static final RECENT_ALBUM:I = 0x2000

.field public static final UNKNOWN:I = 0x0

.field public static final UPLOAD_EDITOR:I = 0x1000

.field public static final UPLOAD_EDITOR_FACEBOOK:I = 0x1001

.field public static final UPLOAD_EDITOR_FLICKR:I = 0x1002


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    .line 16
    const-class v0, Lcom/htc/opensense2/album/AlbumCommon/CommonFeatureModeID;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/AlbumCommon/CommonFeatureModeID;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetFeatureMode()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/CommonFeatureModeID;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][CommonFeatureModeID][resetFeatureMode]: Feature Mode has been reseted to normal!!"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense2/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    .line 22
    return-void
.end method
