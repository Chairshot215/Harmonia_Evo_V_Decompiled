.class public Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;
.super Ljava/lang/Object;
.source "CommonFeatureModeID.java"


# static fields
.field public static CURRENT_MODE:I = 0x0

.field public static final DELETE:I = 0x100

.field public static final DELETE_MULTIPLE:I = 0x101
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final NO_PHOTOVIDEO:I = 0x8000

.field public static final NO_SD:I = 0x4000

.field public static final ONLINE_EDIT:I = 0x10000

.field public static final PICKER:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PICKER_MULTIPLE:I = 0x804
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PICKER_WIDGET_ALBUM:I = 0x801
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PICKER_WIDGET_PHOTO:I = 0x802
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECENT_ALBUM:I = 0x2000

.field public static final SETAS:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETAS_MULTIPLE:I = 0x401
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHARE:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHARE_MULTIPLE:I = 0x201
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

    sput v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    .line 37
    const-class v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeleteMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    sget v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPickerMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    sget v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSetAsMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    sget v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShareMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    sget v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUploadEditorMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    sget v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetFeatureMode()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][CommonFeatureModeID][resetFeatureMode]: Feature Mode has been reseted to normal!!"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    .line 43
    return-void
.end method
