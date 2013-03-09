.class public Lcom/htc/album/helper/MenuManager;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;,
        Lcom/htc/album/helper/MenuManager$RotateThread;,
        Lcom/htc/album/helper/MenuManager$SetAsFavorThread;,
        Lcom/htc/album/helper/MenuManager$RotateCallbackListener;,
        Lcom/htc/album/helper/MenuManager$RotateStateListener;,
        Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;,
        Lcom/htc/album/helper/MenuManager$UpdateLocationCallback;,
        Lcom/htc/album/helper/MenuManager$DecodeThumbTask;,
        Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;,
        Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    }
.end annotation


# static fields
.field public static final ACTION_SET_AS_CONTACTICON:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_SET_AS_FAVORITES:Ljava/lang/String; = "com.htc.HTCAlbum.MY_FAVORITES"

.field public static final ACTION_SET_AS_FOOTPRINTS:Ljava/lang/String; = "com.htc.android.setasFootprint"

.field public static final ACTION_SET_AS_LOCATIONS:Ljava/lang/String; = "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

.field public static final ACTION_SET_AS_WALLPAPER:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final DEFAULT_SHOW_TAG:Z = true

.field public static final DEFAULT_TAG_FIRSTTIME:Z = true

#the value of this static final field might be set in the static constructor
.field public static final DISABLE_GEOCODE_RELEATE_FUNCTION:Z = false

.field public static final EXCLUDE_ALL:I = -0x1

.field public static final EXCLUDE_COMMENT:I = 0x8000

.field public static final EXCLUDE_CROP_MENU:I = 0x8

.field public static final EXCLUDE_DELETE_MENU:I = 0x10

.field public static final EXCLUDE_DETAILS_MENU:I = 0x40

.field public static final EXCLUDE_EDIT_PHOTO_MENU:I = 0x40000

.field public static final EXCLUDE_NONE:I = 0x0

.field public static final EXCLUDE_PRINT_MENU:I = 0x80000

.field public static final EXCLUDE_PROTECTION_MENU:I = 0x80

.field public static final EXCLUDE_REFRESH:I = 0x1000

.field public static final EXCLUDE_ROTATE_MENU:I = 0x20

.field public static final EXCLUDE_SELECT_PLAYER:I = 0x20000

.field public static final EXCLUDE_SETTING_MENU:I = 0x100

.field public static final EXCLUDE_SET_AS_FAVORITE:I = 0x200

.field public static final EXCLUDE_SET_MENU:I = 0x4

.field public static final EXCLUDE_SHARELINK:I = 0x2000

.field public static final EXCLUDE_SHARE_MENU:I = 0x2

.field public static final EXCLUDE_SHOWHIDE_CAPTION:I = 0x4000

.field public static final EXCLUDE_SHOW_ON_MAP:I = 0x400

.field public static final EXCLUDE_SLIDESHOW_MENU:I = 0x1

.field public static final EXCLUDE_TAG:I = 0x10000

.field public static final EXCLUDE_TAG_HIDE:I = 0x100000

.field public static final EXCLUDE_VIEW_FULL:I = 0x800

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final PERF_TAG_TABLET_DETAILS:Ljava/lang/String; = "[showTabletItemDetails]"

.field public static final PKG_NAME_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PKG_NAME_HTC_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final PKG_NAME_HTC_FLICKR:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final PKG_NAME_HTC_MAIL:Ljava/lang/String; = "com.htc.android.mail"

.field public static final PKG_NAME_HTC_MESSAGES:Ljava/lang/String; = "com.android.mms"

.field public static final PKG_NAME_HTC_RENREN:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final PKG_NAME_HTC_SINA:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final PKG_NAME_HTC_SINAWEIBO:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final PKG_NAME_HTC_TWITTER:Ljava/lang/String; = "com.htc.htctwitter"

.field public static final SERVICE_NAME_HTC_RENREN:Ljava/lang/String; = "RenRen"

.field public static final SERVICE_NAME_HTC_SINA:Ljava/lang/String; = "Sina"

.field public static final SERVICE_NAME_HTC_SINAWEIBO:Ljava/lang/String; = "SinaWeiBo"

.field private static final sDateFormat:Ljava/lang/CharSequence;


# instance fields
.field private final EDIT_MENU_ID_ADJUST_3D_ALIGNMENT:I

.field private final EDIT_MENU_ID_CROP:I

.field private final EDIT_MENU_ID_EFFECTS:I

.field private final EDIT_MENU_ID_ROTATE_LEFT:I

.field private final EDIT_MENU_ID_ROTATE_RIGHT:I

.field private final EDIT_MENU_ID_SAVE_AS_2D:I

.field private detailThumb:Landroid/graphics/Bitmap;

.field private imgName:Ljava/lang/String;

.field private imgSubName:Ljava/lang/String;

.field private mCustomChooser:Landroid/app/AlertDialog;

.field private mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

.field public mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

.field private mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field private mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

.field private mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

.field private mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

.field private mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

.field private mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

.field public mbAllowEdit:Z

.field private tmpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    const-class v0, Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    .line 188
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    .line 5365
    const-string v0, "yyyy-MM-dd"

    sput-object v0, Lcom/htc/album/helper/MenuManager;->sDateFormat:Ljava/lang/CharSequence;

    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 179
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 181
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_SAVE_AS_2D:I

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ADJUST_3D_ALIGNMENT:I

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_CROP:I

    .line 184
    iput v2, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_EFFECTS:I

    .line 185
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ROTATE_RIGHT:I

    .line 186
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ROTATE_LEFT:I

    .line 192
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    .line 194
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 197
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 217
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    .line 5358
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    .line 5359
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    .line 5360
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 5361
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    .line 5362
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->tmpName:Ljava/lang/String;

    .line 5363
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    .line 5371
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 5372
    iput-boolean v2, p0, Lcom/htc/album/helper/MenuManager;->mbAllowEdit:Z

    .line 230
    return-void
.end method

.method public static CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "act"
    .parameter "sData"
    .parameter "type"

    .prologue
    .line 1036
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CallPrintDialog2]+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1039
    :cond_0
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CallPrintDialog2]-:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_0
    return-void

    .line 1045
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1047
    .local v1, data:Landroid/net/Uri;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.westtek.jcp"

    const-string v5, "com.westtek.jcp.JCPRINT"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .local v0, component:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1051
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1059
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "password"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1062
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1064
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[CallPrintDialog2]-"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetDataPathByUri0(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 1071
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 1072
    .local v2, columns:[Ljava/lang/String;
    const-string v7, ""

    .line 1073
    .local v7, dataPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1077
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1079
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1091
    :cond_0
    if-eqz v6, :cond_1

    .line 1093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1094
    const/4 v6, 0x0

    .line 1098
    :cond_1
    :goto_0
    return-object v7

    .line 1085
    :catch_0
    move-exception v8

    .line 1087
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    if-eqz v6, :cond_1

    .line 1093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1094
    const/4 v6, 0x0

    goto :goto_0

    .line 1091
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1094
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static GetDataPathByUri1(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 15
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 1103
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "date_modified"

    aput-object v1, v2, v0

    .line 1106
    .local v2, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1109
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1111
    if-nez v6, :cond_0

    .line 1112
    const-string v0, ""

    .line 1147
    :goto_0
    return-object v0

    .line 1114
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1116
    .local v10, n:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1119
    .local v11, x:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1120
    .local v12, y:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v13, v0

    .line 1121
    .local v13, z:J
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v7, v0

    .line 1123
    .local v7, d:J
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1127
    .end local v7           #d:J
    .end local v10           #n:I
    .end local v11           #x:Ljava/lang/String;
    .end local v12           #y:Ljava/lang/String;
    .end local v13           #z:J
    :catch_0
    move-exception v9

    .line 1129
    .local v9, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz v6, :cond_2

    .line 1136
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1137
    const/4 v6, 0x0

    .line 1147
    :cond_2
    :goto_2
    const-string v0, ""

    goto :goto_0

    .line 1140
    :catch_1
    move-exception v9

    .line 1142
    .restart local v9       #e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception][close]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$RotateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/album/helper/MenuManager$RotateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$SetAsFavorThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$DecodeThumbTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/MenuManager;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p7}, Lcom/htc/album/helper/MenuManager;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 116
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    .locals 5
    .parameter "context"
    .parameter "detailsContainer"
    .parameter "resID"
    .parameter "value"
    .parameter "bFirstRowAdded"

    .prologue
    .line 3710
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3712
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[addRowToDetailsContainer] Null context or detailsContainer found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3713
    const/4 v3, 0x0

    .line 3727
    :goto_0
    return v3

    .line 3716
    :cond_1
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3717
    .local v0, rowLayout:Landroid/widget/LinearLayout;
    invoke-static {v0, p4}, Lcom/htc/album/helper/MenuManager;->setItemDetailsShadowBg(Landroid/view/View;Z)V

    .line 3719
    const v3, 0x7f0a001a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3720
    .local v1, textNameView:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 3722
    const v3, 0x7f0a001b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3723
    .local v2, textValueView:Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3725
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3727
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static callSetAsPicker(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 6
    .parameter "activity"
    .parameter "adapter"
    .parameter "ri"

    .prologue
    const/4 v3, 0x1

    .line 1339
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1341
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[callSetAsPicker] Null activity or adapter or IComparableRI found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :goto_0
    return-void

    .line 1345
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1346
    .local v1, share:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v2

    .line 1347
    .local v2, supportType:I
    const/high16 v4, 0x2

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    move v0, v3

    .line 1349
    .local v0, multiPicker:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1350
    const-string v4, "com.htc.album.ACTION_PICK_NF_MULTIPLE_ITEM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    :goto_2
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_5

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_5

    .line 1357
    const-string v4, "*/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    :goto_3
    const-string v4, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1374
    const-string v4, "show_drm_all"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1376
    :cond_2
    const-string v4, "key_bucket_id"

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getFolderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const-string v4, "key_folder_name"

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    const-string v4, "folder_type"

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getFolderType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1379
    const-string v4, "show_drm_settable"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1380
    const-string v4, "disable_2d_conversion"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1382
    if-eqz v0, :cond_8

    .line 1383
    const/high16 v3, 0x44

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1347
    .end local v0           #multiPicker:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1352
    .restart local v0       #multiPicker:Z
    :cond_4
    const-string v4, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1359
    :cond_5
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_6

    .line 1361
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1363
    :cond_6
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_7

    .line 1365
    const-string v4, "video/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1369
    :cond_7
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[callSetAsPicker] Unsupported type found!!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1385
    :cond_8
    const/high16 v3, 0x33

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static callSharePicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;Ljava/lang/Object;)V
    .locals 10
    .parameter "activity"
    .parameter "collectionInfo"
    .parameter "ri"
    .parameter "objExtra"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1181
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1183
    :cond_0
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[callSharePicker] Null activity or adapter or IComparableRI found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    .end local p3
    :cond_1
    :goto_0
    return-void

    .line 1187
    .restart local p3
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1188
    .local v3, share:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v4

    .line 1189
    .local v4, supportType:I
    sget-object v7, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][ShareMenuManager][callSharePicker]: type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/high16 v7, 0x2

    and-int/2addr v7, v4

    if-eqz v7, :cond_7

    move v1, v5

    .line 1193
    .local v1, multiPicker:Z
    :goto_1
    if-eqz v1, :cond_8

    .line 1194
    const-string v7, "com.htc.album.ACTION_PICK_NF_MULTIPLE_ITEM"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    :goto_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1199
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1202
    const-string v7, "com.htc.android.mail"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.bluetooth"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1204
    :cond_3
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    :goto_3
    const-string v7, "com.htc.socialnetwork.flickr"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.htc.socialnetwork.facebook"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1253
    :cond_4
    const-string v7, "request_htc_upload_list"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1256
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1257
    .local v0, extras:Landroid/os/Bundle;
    const-string v7, "collection_info"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1258
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1260
    if-eqz p3, :cond_6

    .line 1262
    instance-of v7, p3, [I

    if-eqz v7, :cond_6

    .line 1263
    const-string v7, "photoIds"

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1266
    :cond_6
    const-string v7, "do_share"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1267
    const-string v7, "force_2d_result"

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->support3DShare(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    :goto_4
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1271
    if-eqz v1, :cond_11

    .line 1273
    const-string v5, "request_3d_list"

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1274
    const/high16 v5, 0x22

    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #multiPicker:Z
    .end local v2           #pkgName:Ljava/lang/String;
    .restart local p3
    :cond_7
    move v1, v6

    .line 1191
    goto/16 :goto_1

    .line 1196
    .restart local v1       #multiPicker:Z
    :cond_8
    const-string v7, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1207
    .restart local v2       #pkgName:Ljava/lang/String;
    :cond_9
    const-string v7, "com.android.mms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1209
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 1212
    :cond_a
    const-string v7, "com.htc.mmsmediaproxy"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1214
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1217
    :cond_b
    const-string v7, "com.htc.customizepkg1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1219
    const-string v7, "image/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1230
    :cond_c
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_d

    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_d

    .line 1232
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1235
    :cond_d
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_e

    .line 1237
    const-string v7, "image/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1240
    :cond_e
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_f

    .line 1242
    const-string v7, "video/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1247
    :cond_f
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[callSharePicker] Unsupported type found!!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local p3
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_10
    move v5, v6

    .line 1267
    goto/16 :goto_4

    .line 1278
    :cond_11
    const/high16 v5, 0x11

    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V
    .locals 4
    .parameter "activity"
    .parameter "collectionInfo"

    .prologue
    .line 1152
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1154
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[callSharePickerForPrint] Null activity or collectionInfo not found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :goto_0
    return-void

    .line 1158
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1160
    .local v1, share:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1161
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "collection_info"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1162
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1164
    const-string v2, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    const-string v2, "MimeTypeFilter"

    sget-object v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->sPrintSupport:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    const-string v2, "show_drm_shareable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1169
    const-string v2, "disable_2d_conversion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1171
    const/high16 v2, 0x55

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .parameter "act"
    .parameter "sData"

    .prologue
    .line 2340
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    .local v0, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2350
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2352
    const-string v3, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2354
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2356
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2360
    const/16 v3, 0x13ba

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2361
    return-void
.end method

.method public static doSetAsMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1325
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1327
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[doSetAsMultiMedia] Null activity or pickerResult found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    .end local p0
    :goto_0
    return-void

    .line 1331
    .restart local p0
    :cond_1
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1333
    .local v0, andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v1, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v1}, Lcom/htc/album/helper/MenuManager;-><init>()V

    .line 1334
    .local v1, menuMgr:Lcom/htc/album/helper/MenuManager;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {v1, p0, v0}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "shareIntent"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "isDRM"

    .prologue
    .line 1285
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1287
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[doSetAsSingleMedia] Null activity or shareIntent or imageUri found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    .end local p0
    :goto_0
    return-void

    .line 1291
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, action:Ljava/lang/String;
    const-string v3, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1294
    .local v1, className:Ljava/lang/String;
    const-string v3, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1296
    new-instance v2, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v2}, Lcom/htc/album/helper/MenuManager;-><init>()V

    .line 1297
    .local v2, menuMgr:Lcom/htc/album/helper/MenuManager;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {v2, p0, p2}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1299
    .end local v2           #menuMgr:Lcom/htc/album/helper/MenuManager;
    .restart local p0
    :cond_2
    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1302
    const-class v3, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1304
    invoke-static {p0, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->setWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1308
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    const-string v3, "mimeType"

    invoke-virtual {p1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1313
    :cond_4
    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1315
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-static {p0, p2}, Lcom/htc/album/helper/MenuManager;->setLocations(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1319
    .restart local p0
    :cond_5
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[doSetAsMedia] Not supported!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1628
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1630
    :cond_0
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[doShareMultiMedia] Error..."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :cond_1
    :goto_0
    return-void

    .line 1634
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, action:Ljava/lang/String;
    const-string v10, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1636
    .local v8, sharedPkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1638
    .local v6, mime:Ljava/lang/String;
    const-string v10, "SharedAdapter.KEY_SHARE_TO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    .line 1639
    .local v7, shareItemGroup:Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;
    if-eqz v7, :cond_3

    .line 1640
    const-string v10, "SharedAdapter.KEY_SHARE_TO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1642
    :cond_3
    const-string v10, "com.htc.socialnetwork.facebook"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.htc.socialnetwork.flickr"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1645
    :cond_4
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias]: Facebook / Flickr, (sharedPkgName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " )"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1649
    .local v5, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 1651
    :cond_5
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: mediaList is null or empty !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1657
    .local v3, intentShare:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    .local v2, conpont:Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1660
    const-string v10, "com.htc.socialnetwork.facebook"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1661
    .local v4, isFacebook:Z
    if-eqz v4, :cond_7

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v9, v10, v11

    .line 1664
    .local v9, strServiceName:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1665
    if-eqz v3, :cond_8

    .line 1667
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1669
    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string v10, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1671
    const-string v10, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1672
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1661
    .end local v9           #strServiceName:Ljava/lang/String;
    :cond_7
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v9, v10, v11

    goto :goto_1

    .line 1675
    .restart local v9       #strServiceName:Ljava/lang/String;
    :cond_8
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMultiMedia]: setScanIntent NG ! strServiceName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1677
    .end local v2           #conpont:Landroid/content/ComponentName;
    .end local v3           #intentShare:Landroid/content/Intent;
    .end local v4           #isFacebook:Z
    .end local v5           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v9           #strServiceName:Ljava/lang/String;
    :cond_9
    invoke-static {v8}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1681
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1683
    .restart local v5       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_b

    .line 1685
    :cond_a
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: mediaList is null or empty !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1690
    :cond_b
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias][]: +, Sina - sharedPkgName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1694
    .restart local v3       #intentShare:Landroid/content/Intent;
    invoke-static {p0, v8}, Lcom/htc/album/helper/MenuManager;->getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1696
    if-nez v3, :cond_c

    .line 1698
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: can\'t get conponet name !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1702
    :cond_c
    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1704
    const-string v10, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1705
    const-string v10, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1706
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1707
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1710
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias]: -, Sina medialist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1713
    .end local v3           #intentShare:Landroid/content/Intent;
    .end local v5           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_d
    const-string v10, "com.htc.android.mail"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1716
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMedias]: Package = com.htc.android.mail"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1719
    .local v1, andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1721
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1723
    .end local v1           #andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_e
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "com.htc.vmm.SEND_MULTIPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1725
    :cond_f
    sget-object v10, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][MenuManager][doShareMedias]: Intent.ACTION_SEND_MULTIPLE"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1728
    .restart local v1       #andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1729
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 20
    .parameter "context"
    .parameter "shareIntent"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    .line 1395
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1401
    .local v3, action:Ljava/lang/String;
    const-string v17, "SharedAdapter.KEY_PACKAGE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1402
    .local v13, sharedPkgName:Ljava/lang/String;
    const-string v17, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1403
    .local v14, sharedPkgNameForOther:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1405
    .local v10, selectSharePkgName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1407
    .local v6, fromAlbum:Z
    const-string v17, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    .line 1408
    .local v12, shareItemGroup:Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;
    if-eqz v12, :cond_2

    .line 1409
    const-string v17, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1411
    :cond_2
    if-eqz v13, :cond_5

    .line 1413
    const/4 v6, 0x1

    .line 1414
    move-object v10, v13

    .line 1422
    :cond_3
    :goto_1
    if-eqz v10, :cond_0

    .line 1424
    const-string v17, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1427
    :cond_4
    if-eqz v6, :cond_8

    .line 1431
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1432
    .local v7, intentShare:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v13, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    .local v5, conpont:Landroid/content/ComponentName;
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1435
    const-string v17, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1436
    .local v8, isFacebook:Z
    if-eqz v8, :cond_6

    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v15, v17, v18

    .line 1439
    .local v15, strServiceName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1441
    if-eqz v7, :cond_7

    .line 1443
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1444
    .local v9, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1446
    .local v16, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1447
    .local v4, bundle:Landroid/os/Bundle;
    const-string v17, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const-string v17, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v17, "com.htc.opensense.upload.TITLE"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v17, "com.htc.opensense.upload.DESCRIPTION"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1454
    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    const-string v17, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1456
    const-string v17, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1457
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1416
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #conpont:Landroid/content/ComponentName;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v8           #isFacebook:Z
    .end local v9           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v15           #strServiceName:Ljava/lang/String;
    .end local v16           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5
    if-eqz v14, :cond_3

    .line 1418
    const/4 v6, 0x0

    .line 1419
    move-object v10, v14

    goto/16 :goto_1

    .line 1436
    .restart local v5       #conpont:Landroid/content/ComponentName;
    .restart local v7       #intentShare:Landroid/content/Intent;
    .restart local v8       #isFacebook:Z
    :cond_6
    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v15, v17, v18

    goto :goto_2

    .line 1460
    .restart local v15       #strServiceName:Ljava/lang/String;
    :cond_7
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleMedia]: setScanIntent NG ! strServiceName: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1464
    .end local v5           #conpont:Landroid/content/ComponentName;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v8           #isFacebook:Z
    .end local v15           #strServiceName:Ljava/lang/String;
    :cond_8
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v18, "[HTCAlbum][MenuManager][doShareSingleMedia]: com.htc.socialnetwork.facebook or com.htc.socialnetwork.flickr"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1466
    .restart local v9       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1468
    .restart local v16       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1469
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v17, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v17, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v17, "com.htc.opensense.upload.TITLE"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string v17, "com.htc.opensense.upload.DESCRIPTION"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1476
    .restart local v7       #intentShare:Landroid/content/Intent;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    const-string v17, "SharedAdapter.KEY_CLASS_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    const-string v17, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1480
    const-string v17, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1481
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1484
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v9           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v16           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_9
    invoke-static {v13}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1488
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleMedia]: +, sharedPkgName: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1493
    .restart local v7       #intentShare:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v13, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    .restart local v5       #conpont:Landroid/content/ComponentName;
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1496
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/album/helper/MenuManager;->getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1498
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1499
    .restart local v9       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1501
    .restart local v16       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1502
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v17, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v17, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v17, "com.htc.opensense.upload.TITLE"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v17, "com.htc.opensense.upload.DESCRIPTION"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1509
    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const-string v17, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1511
    const-string v17, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1512
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1515
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v18, "[HTCAlbum][MenuManager][doShareSingleMedia]: -"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1517
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #conpont:Landroid/content/ComponentName;
    .end local v7           #intentShare:Landroid/content/Intent;
    .end local v9           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v16           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_a
    const-string v17, "com.android.mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1519
    const-string v17, "android.intent.action.SEND_MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    invoke-virtual/range {p1 .. p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1523
    :cond_b
    const-string v17, "com.htc.vmm.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1525
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleVMMMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->isGroupItem()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1528
    const/4 v11, 0x0

    .line 1529
    .local v11, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const-string v17, "image"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1530
    const v17, 0x10001

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v11

    .line 1534
    :cond_c
    :goto_3
    if-eqz v11, :cond_d

    .line 1536
    invoke-interface {v11}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1537
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleVMMMedia]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v11}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    .end local v11           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_d
    const-string v17, "com.htc.vmm.SEND"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1544
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1531
    .restart local v11       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_e
    const-string v17, "video"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1532
    const v17, 0x10002

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v11

    goto :goto_3

    .line 1548
    .end local v11           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_f
    const-string v17, "com.htc.mmsmediaproxy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1550
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v18, "[HTCAlbum][MenuManager][doShareSingleMedia]: com.htc.mmsmediaproxy"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p1 .. p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1552
    const/high16 v17, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1553
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1557
    :cond_10
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->isGroupItem()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1560
    const/4 v11, 0x0

    .line 1561
    .restart local v11       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const-string v17, "image"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1562
    const v17, 0x10001

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v11

    .line 1566
    :cond_11
    :goto_4
    if-eqz v11, :cond_12

    .line 1568
    invoke-interface {v11}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1569
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][MenuManager][doShareSingleMedia]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v11}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    .end local v11           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_12
    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1576
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1563
    .restart local v11       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_13
    const-string v17, "video"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1564
    const v17, 0x10002

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v11

    goto :goto_4
.end method

.method private static excludeItem(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "id"

    .prologue
    .line 562
    if-nez p0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 566
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 567
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static exclusionSlideShow(Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V
    .locals 7
    .parameter "image"
    .parameter "exclusion"

    .prologue
    const/4 v4, 0x1

    .line 247
    if-nez p0, :cond_1

    .line 249
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[exclusionSlideShow] Null image found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 255
    .restart local p0
    :cond_1
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    .line 256
    .local v2, isDRM:Z
    if-eqz v2, :cond_3

    check-cast p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p0
    move-object v1, p0

    .line 258
    .local v1, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    .line 259
    .local v0, drmType:I
    :goto_2
    if-ne v0, v4, :cond_5

    move v3, v4

    .line 261
    .local v3, isDRMFL:Z
    :goto_3
    if-eqz v2, :cond_2

    move v4, v3

    .line 262
    .local v4, showSlideShow:Z
    :cond_2
    if-nez v4, :cond_0

    .line 263
    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 256
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v3           #isDRMFL:Z
    .end local v4           #showSlideShow:Z
    .restart local p0
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 258
    .end local p0
    .restart local v1       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 259
    .restart local v0       #drmType:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "activity"
    .parameter "durationMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4019
    if-nez p0, :cond_0

    .line 4021
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[formatDuration] Null activity found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    :cond_0
    const-string v5, "fullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "durationMs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    div-int/lit16 v0, p1, 0x3e8

    .line 4026
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 4027
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 4028
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 4030
    .local v4, s:I
    if-nez v2, :cond_1

    .line 4031
    const v5, 0x7f0b0072

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4038
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4034
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_1
    const v5, 0x7f0b0073

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter "context"
    .parameter "szService"

    .prologue
    .line 1738
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1739
    :cond_0
    const/4 v1, 0x0

    .line 1783
    :cond_1
    :goto_0
    return-object v1

    .line 1741
    :cond_2
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1743
    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 1746
    :cond_4
    const/4 v1, 0x0

    .line 1747
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1748
    .local v2, intentQuery:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1750
    .local v0, actList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p1}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1753
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1754
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intentQuery:Landroid/content/Intent;
    const-string v6, "htc.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1755
    .restart local v2       #intentQuery:Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    const/high16 v6, 0x1

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1761
    const/4 v5, 0x0

    .line 1763
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_1

    .line 1765
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_6

    .line 1763
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1768
    :cond_6
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1770
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MenuManager][getServiceComponentName]: Set Componet Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1773
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1782
    .end local v3           #nIndex:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_7
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MenuManager][getServiceComponentName]: unknow service name. szService: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static hideExifInformation(Landroid/view/View;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 4051
    return-void
.end method

.method public static isCHSCustomerUploadPkgName(Ljava/lang/String;)Z
    .locals 2
    .parameter "strPkgName"

    .prologue
    const/4 v0, 0x0

    .line 1585
    if-nez p0, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return v0

    .line 1588
    :cond_1
    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1592
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMMSUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 4880
    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mms"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 4
    .parameter "activity"
    .parameter "aPhoto"

    .prologue
    .line 4699
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4701
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[launchComments] null dispMgrListener or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    :cond_1
    :goto_0
    return-void

    .line 4705
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4706
    .local v0, callerIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 4709
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4710
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/album/SocialNetwork/ActivityMainComments;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4712
    const-string v2, "service_name"

    const-string v3, "service_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4714
    const-string v2, "user_id"

    const-string v3, "user_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4716
    const-string v2, "photo_id"

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4717
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "type"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 4602
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4604
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[launchCropMode] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4619
    :goto_0
    return-void

    .line 4608
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4609
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4610
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4611
    const-string v2, "cropType"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4613
    const-string v2, "toast_crop_result"

    if-eqz p4, :cond_2

    const-string v3, "toast_crop_result"

    invoke-virtual {p4, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4615
    if-eqz p4, :cond_3

    .line 4616
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4618
    :cond_3
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "dataPath"
    .parameter "degreesRotated"

    .prologue
    .line 4640
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 4641
    return-void
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "dataPath"
    .parameter "degreesRotated"
    .parameter "extras"

    .prologue
    .line 4648
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4650
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[launchEnhancerMode] null activity or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4667
    :goto_0
    return-void

    .line 4654
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4655
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.album"

    const-string v3, "com.htc.album.addons.photoenhancer.PhotoEnhancer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4656
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4657
    const-string v2, "filePath"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4658
    const-string v2, "degree"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4660
    if-eqz p5, :cond_2

    .line 4662
    const-string v2, "output"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4663
    .local v1, mOutputPath:Ljava/lang/String;
    const-string v2, "externalGivenOutputPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4666
    .end local v1           #mOutputPath:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x7f08

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 3
    .parameter "activity"
    .parameter "image"

    .prologue
    .line 4623
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4625
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[launchEnhancerMode] null activity or image found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4635
    :goto_0
    return-void

    .line 4629
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4630
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.album"

    const-string v2, "com.htc.album.addons.photoenhancer.PhotoEnhancer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4631
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4632
    const-string v1, "filePath"

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4633
    const-string v1, "degree"

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4634
    const/16 v1, 0x7f08

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchFullScreen(Landroid/app/Activity;IILcom/htc/opensense2/album/DisplayManagerInterface;Z)V
    .locals 6
    .parameter "activity"
    .parameter "position"
    .parameter "viewWidth"
    .parameter "dispMgrListener"
    .parameter "doTransition"

    .prologue
    .line 4338
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->launchFullScreen(Landroid/app/Activity;IILcom/htc/opensense2/album/DisplayManagerInterface;ZLandroid/os/Bundle;)V

    .line 4339
    return-void
.end method

.method public static launchFullScreen(Landroid/app/Activity;IILcom/htc/opensense2/album/DisplayManagerInterface;ZLandroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "position"
    .parameter "viewWidth"
    .parameter "dispMgrListener"
    .parameter "doTransition"
    .parameter "params"

    .prologue
    .line 4393
    return-void
.end method

.method public static launchFullScreenToDMR(Landroid/app/Activity;IILcom/htc/opensense2/album/DisplayManagerInterface;ZLcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "position"
    .parameter "viewWidth"
    .parameter "dispMgrListener"
    .parameter "doTransition"
    .parameter "imageList"
    .parameter "params"

    .prologue
    .line 4333
    return-void
.end method

.method public static launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V
    .locals 11
    .parameter "activity"
    .parameter "image"
    .parameter "imageList"
    .parameter "params"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1997
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1999
    :cond_0
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[launchGif] null activity or image found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :goto_0
    return-void

    .line 2003
    :cond_1
    const/4 v4, -0x1

    .line 2006
    .local v4, pos:I
    if-eqz p3, :cond_2

    .line 2007
    :try_start_0
    const-string v7, "position"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2014
    :cond_2
    :goto_1
    invoke-static {p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 2015
    .local v1, dmr:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v7

    if-ne v9, v7, :cond_4

    .line 2019
    if-ne v4, v10, :cond_3

    move v4, v6

    .end local v4           #pos:I
    :cond_3
    invoke-static {p0, v1, p2, v4, p3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2009
    .end local v1           #dmr:Ljava/lang/String;
    .restart local v4       #pos:I
    :catch_0
    move-exception v2

    .line 2011
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_1

    .line 2023
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #dmr:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "directmode"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_6

    if-eqz p3, :cond_6

    .line 2025
    const/4 v7, 0x3

    const/16 v8, 0x1398

    if-ne v4, v10, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-static {p0, v7, v8, v9, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    .line 2030
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2031
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2033
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 2034
    .local v5, uri:Landroid/net/Uri;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 2035
    .local v0, dataPath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2037
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2048
    :goto_3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2039
    :cond_7
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2041
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 2045
    :cond_8
    const-string v6, "path"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public static launchSettings(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 4297
    return-void
.end method

.method public static launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V
    .locals 7
    .parameter "activity"
    .parameter "adapter"
    .parameter "posStart"
    .parameter "objExtra"

    .prologue
    .line 1900
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1902
    :cond_0
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[launchSlideShow] null activity or adapter found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    .end local p3
    :goto_0
    return-void

    .line 1906
    .restart local p3
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1907
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1908
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[launchSlideShow] null image at 0 found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1911
    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1913
    .local v3, startTarget:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1914
    .local v4, strPath:Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v5, :cond_3

    .line 1916
    invoke-virtual {p1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    .line 1919
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 1921
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1922
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1923
    const-string v5, "key_bucket_id"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    const-string v5, "itemIndex"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1925
    const-string v5, "itemfullpath"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    const-string v5, "slideshow_setting_mode"

    const-string v6, "album_mode"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    const-string v5, "folder_type"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    const-string v5, "key_folder_name"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    if-eqz p3, :cond_4

    .line 1932
    instance-of v5, p3, [I

    if-eqz v5, :cond_4

    .line 1933
    const-string v5, "photoIds"

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1936
    :cond_4
    const v5, 0x7f0a0097

    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V
    .locals 10
    .parameter "activity"
    .parameter "selectedImage"
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1940
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1941
    :cond_0
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[launchVideo] null activity or image found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    :goto_0
    return-void

    .line 1945
    :cond_1
    invoke-static {p0, v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, dmr:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1949
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v0, v5, v6, p2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1952
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "directmode"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_5

    if-eqz p2, :cond_5

    .line 1954
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1955
    .local v3, pos:Ljava/lang/Integer;
    if-eqz p2, :cond_3

    .line 1959
    :try_start_0
    const-string v5, "position"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1967
    :cond_3
    :goto_1
    const/4 v5, 0x3

    const/16 v6, 0x1398

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_4

    const/4 v3, 0x0

    .end local v3           #pos:Ljava/lang/Integer;
    :cond_4
    invoke-static {p0, v5, v6, v8, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    .line 1972
    :cond_5
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_6

    instance-of v5, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v5, :cond_6

    move-object v5, p1

    .line 1974
    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->setDrmStateToNonCheck()V

    .line 1977
    :cond_6
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 1979
    .local v4, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1982
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launch Video Player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v5, "com.htc.video"

    const-string v6, "com.htc.video.ViewVideo"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1984
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1985
    const-string v5, "Extras"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1987
    const/16 v5, 0x13bb

    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1989
    :catch_0
    move-exception v1

    .line 1991
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launch Video player failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #pos:Ljava/lang/Integer;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 5
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "clickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v2, 0x0

    .line 1811
    if-nez p1, :cond_0

    .line 1813
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "You must specify first parameter"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    :goto_0
    return-object v2

    .line 1817
    :cond_0
    if-nez p3, :cond_1

    .line 1819
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "The share list is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1823
    :cond_1
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v2, 0x1

    invoke-direct {v0, p1, p3, v2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1824
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    invoke-static {p1, v0}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->rearrangeListItem(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 1825
    new-instance v2, Lcom/htc/album/helper/MenuManager$4;

    invoke-direct {v2, p0, p4, v0}, Lcom/htc/album/helper/MenuManager$4;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    invoke-static {p1, p2, v0, v2}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1841
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_2

    .line 1843
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 1845
    :cond_2
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    .line 1847
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1848
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1851
    :cond_3
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static playVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "activity"
    .parameter "image"
    .parameter "imageList"
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 2053
    const/4 v0, 0x0

    .line 2055
    .local v0, bPlayed:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2057
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[playVideo] null activity or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    :goto_0
    return v1

    .line 2061
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2062
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[playVideo] isCorrupted!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2066
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2068
    invoke-static {p0, p1, p3}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 2069
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 2081
    goto :goto_0

    .line 2071
    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 2073
    invoke-static {p0, p1, p2, p3}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 2074
    const/4 v0, 0x1

    goto :goto_1

    .line 2078
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private recycleDetailBitmap()V
    .locals 0

    .prologue
    .line 3771
    return-void
.end method

.method private renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "adapter"
    .parameter "pos"
    .parameter "curImage"
    .parameter "oldName"
    .parameter "newName"
    .parameter "subFileName"

    .prologue
    .line 4111
    const/4 v10, 0x0

    .line 4112
    .local v10, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-nez v10, :cond_1

    .line 4240
    :cond_0
    :goto_0
    return-void

    .line 4116
    :cond_1
    if-nez p2, :cond_2

    .line 4118
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null adapter"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4122
    :cond_2
    if-nez p4, :cond_3

    .line 4124
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[renameFile] null image found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4128
    :cond_3
    const/4 v0, 0x0

    const v1, 0x7f0b003f

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v2, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    .local v3, dialog:Lcom/htc/app/HtcProgressDialog;
    move-object v9, p1

    .line 4134
    check-cast v9, Landroid/app/Activity;

    .line 4135
    .local v9, activity:Landroid/app/Activity;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/album/helper/MenuManager$15;

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/album/helper/MenuManager$15;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/app/HtcProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4239
    .local v11, th:Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static setContentIntoRow(Landroid/widget/TextView;I)V
    .locals 2
    .parameter "textview"
    .parameter "contentId"

    .prologue
    .line 3775
    if-eqz p0, :cond_0

    .line 3777
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3778
    .local v0, content:Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lcom/htc/album/helper/MenuManager;->setContentIntoRow(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3780
    .end local v0           #content:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private static setContentIntoRow(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "textview"
    .parameter "content"

    .prologue
    const/4 v6, 0x0

    .line 3783
    if-nez p0, :cond_0

    .line 3808
    :goto_0
    return-void

    .line 3786
    :cond_0
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 3788
    .local v3, styleSpan:Landroid/text/style/StyleSpan;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3789
    .local v0, colName:Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3795
    .local v2, st:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3796
    .local v1, index:I
    if-gez v1, :cond_1

    .line 3797
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3799
    :cond_1
    const/16 v4, 0x21

    invoke-virtual {v2, v3, v6, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3802
    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3804
    if-eqz p1, :cond_2

    .line 3805
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3807
    :cond_2
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 8
    .parameter "activity"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4767
    if-eqz p0, :cond_0

    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    if-nez p2, :cond_1

    .line 4769
    :cond_0
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[setFootprint] Null activity or data or result not OK"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4784
    :goto_0
    return-void

    .line 4773
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.android.setasFootprint"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4774
    .local v1, footprint:Landroid/content/Intent;
    const-string v6, "com.htc.android.footprints"

    const-string v7, "com.htc.android.footprints.activity.FootprintDetailEditActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4775
    const-string v6, "filepath"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4776
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 4777
    invoke-static {v5}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 4778
    .local v0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4779
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4780
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4782
    .end local v0           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4783
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static setItemDetailsShadowBg(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "bFirstRowAdded"

    .prologue
    .line 3732
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 3736
    :cond_0
    return-void
.end method

.method private setKeepScreenOn(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "screenOn"

    .prologue
    .line 5238
    if-nez p1, :cond_0

    .line 5250
    :goto_0
    return-void

    .line 5241
    :cond_0
    new-instance v0, Lcom/htc/album/helper/MenuManager$25;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/helper/MenuManager$25;-><init>(Lcom/htc/album/helper/MenuManager;ZLandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static setLatLngDetails(Landroid/view/View;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .parameter "d"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4082
    .local p2, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public static setLocations(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .parameter "activity"
    .parameter "imageUri"

    .prologue
    .line 4788
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4796
    :cond_0
    :goto_0
    return-void

    .line 4791
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4792
    .local v1, footprint:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4793
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "FILE_URI"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4794
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4795
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setLockScreen(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "activity"
    .parameter "image"

    .prologue
    .line 4733
    return-void
.end method

.method private setTabletLatLngDetails(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 7
    .parameter "context"
    .parameter "detailsContainer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v4, 0x437f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4086
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 4088
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[setTabletLatLngDetails] Null context or detailsContainer or exifData found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    :cond_1
    :goto_0
    return-void

    .line 4092
    :cond_2
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v2

    .line 4093
    .local v2, latlng:[F
    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v3, :cond_1

    .line 4095
    aget v3, v2, v6

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    aget v3, v2, v5

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 4099
    const v3, 0x7f0b0080

    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v3, v4, v5}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    .line 4100
    const v3, 0x7f0b0081

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v3, v4, v5}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    .line 4103
    new-instance v0, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v3, v4}, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 4104
    .local v0, cb:Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 4105
    .local v1, geocoder:Landroid/location/Geocoder;
    new-instance v3, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;

    invoke-direct {v3, v1, v2, v0}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;-><init>(Landroid/location/Geocoder;[FLcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "srcBmp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3740
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3742
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[setThumbnailImageMask] Null context or srcBmp found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    const/4 v1, 0x0

    .line 3755
    :goto_0
    return-object v1

    .line 3746
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3752
    .local v0, maskBmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v1, :cond_2

    .line 3753
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 3755
    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmapWithCustomMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static setWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "isDRM"

    .prologue
    .line 4753
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4755
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[setWallpaper] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4763
    :goto_0
    return-void

    .line 4758
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4759
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4760
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4761
    const-string v1, "drm_content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4762
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setWallpaperWithPreview(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    .line 4737
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4740
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[setWallpaperWithPreview] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4749
    :goto_0
    return-void

    .line 4744
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4745
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4746
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4747
    const-string v1, "drm_content"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4748
    const/16 v1, 0x7f01

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static setupDefaultVideoDetailRows(Landroid/content/Context;Landroid/view/View;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    .locals 0
    .parameter "context"
    .parameter "d"
    .parameter "video"

    .prologue
    .line 3918
    return-void
.end method

.method private static setupDefaultVideoDetailRows2(Landroid/content/Context;Landroid/view/View;Lcom/htc/album/DetailDlgParams;)V
    .locals 0
    .parameter "context"
    .parameter "d"
    .parameter "detailDlgParams"

    .prologue
    .line 2447
    return-void
.end method

.method private static setupTabletVideoDetailRows(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    .locals 24
    .parameter "context"
    .parameter "detailsContainer"
    .parameter "video"

    .prologue
    .line 3922
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3924
    :cond_0
    sget-object v17, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v18, "[setupDefaultVideoDetailRows] Null context or detailsContainer or VideoObject found!!"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    :goto_0
    return-void

    .line 3928
    :cond_1
    new-instance v16, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3932
    .local v16, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3937
    const/4 v8, 0x0

    .line 3938
    .local v8, dimensionWidth:I
    const/4 v7, 0x0

    .line 3940
    .local v7, dimensionHeight:I
    const/16 v17, 0x12

    :try_start_1
    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3944
    const/16 v17, 0x13

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    .line 3953
    :goto_1
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->isDrm()Z

    move-result v17

    if-nez v17, :cond_2

    if-lez v8, :cond_2

    if-lez v7, :cond_2

    .line 3954
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3955
    .local v15, resolution:Ljava/lang/String;
    const v17, 0x7f0b006e

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3960
    .end local v15           #resolution:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x9

    :try_start_3
    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3963
    .local v9, durationMs:I
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/htc/album/helper/MenuManager;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 3964
    .local v10, durationValue:Ljava/lang/String;
    const v17, 0x7f0b006f

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v10, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3971
    .end local v9           #durationMs:I
    .end local v10           #durationValue:Ljava/lang/String;
    :goto_2
    const v17, 0x7f0b0074

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x6b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 3974
    .local v14, frame_rate:Ljava/lang/String;
    const v17, 0x7f0b0070

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v14, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3981
    .end local v14           #frame_rate:Ljava/lang/String;
    :goto_3
    const/16 v17, 0x14

    :try_start_5
    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3985
    .local v4, bitRate:J
    const-wide/32 v17, 0xf4240

    cmp-long v17, v4, v17

    if-gez v17, :cond_5

    .line 3986
    const v17, 0x7f0b0075

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/16 v20, 0x3e8

    div-long v20, v4, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3991
    .local v6, bps:Ljava/lang/String;
    :goto_4
    const v17, 0x7f0b0071

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v6, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3997
    .end local v4           #bitRate:J
    .end local v6           #bps:Ljava/lang/String;
    :goto_5
    const/16 v17, 0x6c

    :try_start_6
    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    .line 4000
    .local v13, format:Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v17, ""

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_4

    .line 4001
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getMimeType()Ljava/lang/String;

    move-result-object v13

    .line 4003
    :cond_4
    const v17, 0x7f0b007c

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v13, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4010
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 4011
    :catch_0
    move-exception v12

    .line 4012
    .local v12, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 3948
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v13           #format:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 3949
    .local v11, e:Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    .line 3950
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3965
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v11

    .line 3966
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    :try_start_8
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 4005
    .end local v7           #dimensionHeight:I
    .end local v8           #dimensionWidth:I
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v12

    .line 4007
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    :try_start_9
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4010
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 4011
    :catch_4
    move-exception v12

    .line 4012
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 3975
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .restart local v7       #dimensionHeight:I
    .restart local v8       #dimensionWidth:I
    :catch_5
    move-exception v11

    .line 3976
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    :try_start_b
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 4009
    .end local v7           #dimensionHeight:I
    .end local v8           #dimensionWidth:I
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v17

    .line 4010
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7

    .line 4013
    :goto_6
    throw v17

    .line 3988
    .restart local v4       #bitRate:J
    .restart local v7       #dimensionHeight:I
    .restart local v8       #dimensionWidth:I
    :cond_5
    const v17, 0x7f0b0076

    :try_start_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    long-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x412e848000000000L

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    move-result-object v6

    .restart local v6       #bps:Ljava/lang/String;
    goto/16 :goto_4

    .line 3992
    .end local v4           #bitRate:J
    .end local v6           #bps:Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 3993
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    :try_start_e
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_5

    .line 4011
    .end local v7           #dimensionHeight:I
    .end local v8           #dimensionWidth:I
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v12

    .line 4012
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_6
.end method

.method public static showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 12
    .parameter "context"
    .parameter "image"

    .prologue
    .line 4799
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4801
    :cond_0
    sget-object v8, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[showOnMap] null context or image found!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4835
    :cond_1
    :goto_0
    return-void

    .line 4805
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 4806
    .local v2, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 4807
    invoke-static {v2}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v4

    .line 4808
    .local v4, latlng:[F
    if-nez v4, :cond_3

    .line 4810
    sget-object v8, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[showOnMap] NO LatLng found!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4813
    :cond_3
    const/4 v8, 0x0

    aget v3, v4, v8

    .line 4814
    .local v3, latitude:F
    const/4 v8, 0x1

    aget v5, v4, v8

    .line 4823
    .local v5, longitude:F
    :try_start_0
    const-string v8, "http://maps.google.com/maps?f=q&q=(%s,%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4824
    .local v7, url:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.google.android.apps.maps"

    const-string v9, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4825
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 4826
    .local v6, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4827
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v6           #mapsIntent:Landroid/content/Intent;
    .end local v7           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4829
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v8, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "GMM activity not found!"

    invoke-static {v8, v9, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4830
    const-string v8, "geo:%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4831
    .restart local v7       #url:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4832
    .restart local v6       #mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showPhotoMenuOnline(Landroid/app/Activity;Landroid/view/Menu;I)V
    .locals 12
    .parameter "activity"
    .parameter "menu"
    .parameter "exclusion"

    .prologue
    const v11, 0x7f0a00a5

    const v10, 0x7f0a00a4

    const v9, 0x7f0a009a

    const v8, 0x7f0a0099

    const/4 v7, 0x1

    .line 613
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 615
    :cond_0
    sget-object v5, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[showPhotoMenuOnline] Null activity or menu found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 619
    .local v1, inflater:Landroid/view/MenuInflater;
    const v5, 0x7f0e0001

    invoke-virtual {v1, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 621
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_2

    .line 623
    const v5, 0x7f0a00a2

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 625
    :cond_2
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    .line 627
    const v5, 0x7f0a00a3

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 629
    :cond_3
    and-int/lit16 v5, p2, 0x2000

    if-eqz v5, :cond_4

    .line 631
    const v5, 0x7f0a00a1

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 633
    :cond_4
    and-int/lit16 v5, p2, 0x800

    if-eqz v5, :cond_5

    .line 635
    const v5, 0x7f0a008e

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 637
    :cond_5
    and-int/lit16 v5, p2, 0x4000

    if-eqz v5, :cond_6

    .line 639
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 640
    invoke-static {p1, v11}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 641
    const v5, 0x7f0a00a6

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 642
    const v5, 0x7f0a00a7

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 644
    :cond_6
    const/high16 v5, 0x1

    and-int/2addr v5, p2

    if-eqz v5, :cond_7

    .line 646
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 647
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 650
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "service_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, service:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 653
    .local v3, pref:Landroid/content/SharedPreferences;
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 655
    const v5, 0x7f0a00a6

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 656
    const v5, 0x7f0a00a7

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 658
    const/4 v0, 0x0

    .line 660
    .local v0, bShow:Z
    const-string v5, "showCaption"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 661
    if-eqz v0, :cond_b

    .line 662
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 666
    :goto_0
    const-string v5, "showTag"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 667
    if-eqz v0, :cond_c

    .line 668
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 692
    .end local v0           #bShow:Z
    :cond_8
    :goto_1
    const/4 v2, 0x0

    .line 698
    .local v2, menuItem:Landroid/view/MenuItem;
    const v5, 0x7f0a00a2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 699
    const v5, 0x208033b

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 701
    :cond_9
    const v5, 0x7f0a00a3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 702
    const v5, 0x2080321

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 722
    :cond_a
    return-void

    .line 664
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .restart local v0       #bShow:Z
    :cond_b
    invoke-static {p1, v11}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_0

    .line 670
    :cond_c
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1

    .line 672
    .end local v0           #bShow:Z
    :cond_d
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 674
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 675
    invoke-static {p1, v11}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 677
    const/4 v0, 0x0

    .line 679
    .restart local v0       #bShow:Z
    const-string v5, "showCaption"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 680
    if-eqz v0, :cond_e

    .line 681
    const v5, 0x7f0a00a6

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 685
    :goto_2
    const-string v5, "showTag"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 686
    if-eqz v0, :cond_f

    .line 687
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1

    .line 683
    :cond_e
    const v5, 0x7f0a00a7

    invoke-static {p1, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_2

    .line 689
    :cond_f
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1
.end method

.method public static support3DShare(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 234
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.htctwitter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendSetAsAttachData(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsAttachData]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 821
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsAttachData] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 827
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v3, "mimeType"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 832
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "android.intent.action.ATTACH_DATA"

    const v4, 0x10001

    invoke-static {v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public appendSetAsContactIcon(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsContactIcon]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 841
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsContactIcon] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_1
    :goto_0
    return-void

    .line 845
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 847
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.ATTACH_IMAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, contactIntent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 850
    .local v2, setAsContactList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    .line 851
    const-string v3, "com.android.contacts.action.ATTACH_IMAGE"

    const v4, 0x10001

    invoke-static {p3, v2, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public appendSetAsFavorite(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 856
    .local p2, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez p1, :cond_0

    .line 858
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[appendSetAsFavorite] null context found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_0
    return-void

    .line 862
    :cond_0
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[appendSetAsFavorite]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const v1, 0x7f0b006b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v0

    .line 864
    .local v0, myFav:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v1, 0x20003

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 865
    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setQueriedActionName(Ljava/lang/String;)V

    .line 866
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public appendSetAsFootprints(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 871
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsFootprints]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 875
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsFootprints] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 890
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 892
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    const v4, 0x10001

    invoke-static {p3, v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[appendSetAsLockScreen]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    if-nez p1, :cond_0

    .line 923
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[appendSetAsLockScreen] null context found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :goto_0
    return-void

    .line 927
    :cond_0
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->ENABLE_SET_LOCKSCREEN:Z

    if-eqz v1, :cond_1

    .line 929
    const v1, 0x7f0b006c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v0

    .line 930
    .local v0, lockscreen:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 931
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 935
    .end local v0           #lockscreen:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[appendSetAsLockScreen] LiveWallpaper enabled, Set As LockScreen disabled!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendSetAsWallpaper(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 899
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsWallpaper]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 903
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[appendSetAsWallpaper] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 909
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 910
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v3, "mimeType"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.Wallpaper"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 914
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "android.intent.action.ATTACH_DATA"

    const/high16 v4, 0x33

    invoke-static {p3, v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public dismissShowingDialog()V
    .locals 1

    .prologue
    .line 5254
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5256
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5259
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 5260
    return-void
.end method

.method public gotoShareLink(Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "nResTitle"
    .parameter "szUrlLink"

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 575
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[gotoShareLink] Null context found!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v4, 0x0

    .line 608
    :goto_0
    return-object v4

    .line 579
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, intentText:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    move-object v3, p3

    .line 584
    .local v3, szWebLink:Ljava/lang/String;
    new-instance v0, Lcom/htc/album/helper/MenuManager$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/htc/album/helper/MenuManager$1;-><init>(Lcom/htc/album/helper/MenuManager;Ljava/lang/String;Landroid/content/Context;)V

    .line 606
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 608
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0
.end method

.method public isPhotoHaveExifInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "strMimetype"

    .prologue
    const/4 v0, 0x0

    .line 547
    if-nez p1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return v0

    .line 550
    :cond_1
    const-string v1, "image/jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/jps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/mpo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V
    .locals 9
    .parameter "activity"
    .parameter "adapter"
    .parameter "position"
    .parameter "curImage"
    .parameter "custListener"
    .parameter "rotateDegrees"

    .prologue
    .line 5132
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 5177
    :cond_0
    :goto_0
    return-void

    .line 5136
    :cond_1
    const/16 v0, 0x5a

    if-eq p6, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p6, v0, :cond_0

    .line 5141
    :cond_2
    new-instance v8, Lcom/htc/album/helper/MenuManager$24;

    invoke-direct {v8, p0, p2, p1}, Lcom/htc/album/helper/MenuManager$24;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V

    .line 5171
    .local v8, listener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;
    move v5, p6

    .line 5172
    .local v5, rotation:I
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    if-eqz v0, :cond_3

    .line 5174
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->cancel()V

    .line 5176
    :cond_3
    new-instance v0, Lcom/htc/album/helper/MenuManager$RotateThread;

    if-nez p5, :cond_4

    move-object v6, v8

    :goto_1
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    goto :goto_0

    :cond_4
    move-object v6, p5

    goto :goto_1
.end method

.method public makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I
    .locals 9
    .parameter "context"
    .parameter "image"
    .parameter "viewFromOtherAp"
    .parameter "viewSingleImage"
    .parameter "canSetAsImageCount"
    .parameter "exclusion"

    .prologue
    .line 422
    sget-boolean v6, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-eqz v6, :cond_0

    .line 423
    or-int/lit16 p6, p6, 0x400

    .line 426
    :cond_0
    if-nez p2, :cond_1

    .line 428
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[makeExclusion] null image found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v6, -0x1

    .line 542
    :goto_0
    return v6

    .line 432
    :cond_1
    const-string v6, "video/x-wmv-drm"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 433
    .local v2, isWMDrm:Z
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_10

    :cond_2
    const/4 v1, 0x1

    .line 435
    .local v1, isDrm:Z
    :goto_1
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 441
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_3

    const-string v6, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "mms"

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 445
    or-int/lit8 p6, p6, 0x2

    .line 448
    or-int/lit16 p6, p6, 0x400

    .line 452
    :cond_3
    if-eqz p3, :cond_6

    .line 454
    const v6, 0x40738

    or-int/2addr p6, v6

    .line 461
    if-eqz p4, :cond_4

    .line 462
    or-int/lit16 p6, p6, 0x401

    .line 465
    :cond_4
    if-eqz v1, :cond_5

    .line 466
    if-eqz v2, :cond_11

    const/4 v4, 0x1

    .line 467
    .local v4, type:I
    :goto_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 468
    or-int/lit8 p6, p6, 0x4

    .line 473
    .end local v4           #type:I
    :cond_5
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 474
    or-int/lit8 p6, p6, 0x40

    .line 478
    :cond_6
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, mimeType:Ljava/lang/String;
    if-nez v3, :cond_7

    const-string v3, "none"

    .line 482
    :cond_7
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 484
    or-int/lit16 p6, p6, 0x400

    .line 488
    :cond_8
    if-eqz v1, :cond_a

    .line 489
    const/high16 v6, 0x4

    or-int/2addr p6, v6

    .line 490
    or-int/lit8 p6, p6, 0x8

    .line 491
    or-int/lit8 p6, p6, 0x20

    .line 493
    or-int/lit16 p6, p6, 0x400

    .line 494
    if-eqz v2, :cond_12

    const/4 v4, 0x1

    .line 495
    .restart local v4       #type:I
    :goto_3
    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    .line 496
    or-int/lit8 p6, p6, 0x2

    .line 498
    :cond_9
    if-eqz v2, :cond_a

    .line 499
    or-int/lit16 p6, p6, 0x80

    .line 505
    .end local v4           #type:I
    :cond_a
    if-nez v1, :cond_c

    .line 507
    or-int/lit16 p6, p6, 0x80

    .line 508
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 510
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v0

    .line 511
    .local v0, hasInfo:Z
    if-nez v0, :cond_b

    .line 513
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t have gps info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    or-int/lit16 p6, p6, 0x400

    .line 520
    .end local v0           #hasInfo:Z
    :cond_b
    invoke-static {p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_c

    .line 522
    or-int/lit8 p6, p6, 0x20

    .line 527
    :cond_c
    const/4 v6, 0x1

    if-gt p5, v6, :cond_d

    .line 528
    or-int/lit8 p6, p6, 0x1

    .line 533
    :cond_d
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 534
    or-int/lit16 p6, p6, 0x200

    .line 537
    :cond_e
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 538
    or-int/lit16 p6, p6, 0x800

    :cond_f
    move v6, p6

    .line 542
    goto/16 :goto_0

    .line 433
    .end local v1           #isDrm:Z
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #isDrm:Z
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_11
    move-object v6, p2

    .line 466
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    goto/16 :goto_2

    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_12
    move-object v6, p2

    .line 494
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    goto :goto_3
.end method

.method public menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "clickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 1856
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez p1, :cond_0

    .line 1858
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "You must specify first parameter"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const/4 v2, 0x0

    .line 1888
    :goto_0
    return-object v2

    .line 1862
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p3, v2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1863
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    invoke-static {p1, v0}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->rearrangeListItem(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 1864
    new-instance v2, Lcom/htc/album/helper/MenuManager$5;

    invoke-direct {v2, p0, p4, v0}, Lcom/htc/album/helper/MenuManager$5;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    invoke-static {p1, p2, v0, v2}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1880
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_1

    .line 1882
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 1883
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1885
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 1886
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1888
    :cond_2
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onclickImageRotate(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;IILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 8
    .parameter "activity"
    .parameter "adapter"
    .parameter "nIndex"
    .parameter "nRotate"
    .parameter "custListener"
    .parameter "rotateStateListener"
    .parameter "pluginWarningMessage"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    .line 4545
    invoke-virtual {p2, p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4547
    .local v4, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v0, :cond_1

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4549
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][onclickImageRotate!]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4550
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-ne p4, v3, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-interface {v1, v0, p3, v7}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 4599
    :goto_1
    return-void

    .line 4550
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 4554
    :cond_1
    if-ne p4, v3, :cond_3

    const/16 v5, 0x5a

    .line 4555
    .local v5, rotation:I
    :goto_2
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    if-eqz v0, :cond_2

    .line 4556
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->cancel()V

    .line 4558
    :cond_2
    if-nez p7, :cond_5

    .line 4559
    new-instance v0, Lcom/htc/album/helper/MenuManager$RotateThread;

    if-nez p5, :cond_4

    move-object v6, p6

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    goto :goto_1

    .line 4554
    .end local v5           #rotation:I
    :cond_3
    const/16 v5, 0x10e

    goto :goto_2

    .restart local v5       #rotation:I
    :cond_4
    move-object v6, p5

    .line 4559
    goto :goto_3

    .line 4562
    :cond_5
    new-instance v1, Lcom/htc/album/helper/MenuManager$17;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/htc/album/helper/MenuManager$17;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;)V

    invoke-interface {p7, v1}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->setListenerOK(Lcom/htc/album/AlbumUtility/IPluginButtonStateListener;)V

    .line 4588
    new-instance v0, Lcom/htc/album/helper/MenuManager$18;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/MenuManager$18;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-interface {p7, v0}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->setListenerCancel(Lcom/htc/album/AlbumUtility/IPluginButtonStateListener;)V

    .line 4596
    invoke-interface {p7}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->show()V

    goto :goto_1
.end method

.method public preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v1, :cond_0

    .line 1615
    sget-object v1, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[preDoPrintSingleMedia]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1617
    .local v0, tempIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V

    .line 1624
    .end local v0           #tempIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1622
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preDoShareMultiMedia(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "adapter"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v0, :cond_0

    .line 1602
    sget-object v0, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[preDoShareMultiMedia]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p3, p4}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V

    .line 1609
    :goto_0
    return-void

    .line 1607
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .parameter "activity"
    .parameter "imageUri"

    .prologue
    .line 4839
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4845
    :cond_0
    :goto_0
    return-void

    .line 4842
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4843
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4844
    invoke-virtual {p0, p1, v0}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4849
    .local p2, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4851
    :cond_0
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[setFavorite] null activity or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4874
    :goto_0
    return-void

    .line 4855
    :cond_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4856
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 4857
    const v2, 0x7f0b003f

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4858
    .local v1, loggingStr1:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4859
    new-instance v2, Lcom/htc/album/helper/MenuManager$19;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/MenuManager$19;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4867
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 4869
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4870
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->cancel()V

    .line 4872
    :cond_2
    new-instance v2, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/htc/app/HtcProgressDialog;)V

    iput-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    .line 4873
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->start()V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    .line 225
    return-void
.end method

.method public setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    .line 243
    return-void
.end method

.method public showDefaultItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;Z)V
    .locals 0
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"

    .prologue
    .line 3112
    return-void
.end method

.method public showDefaultItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2607
    return-void
.end method

.method public showDefaultProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2212
    return-void
.end method

.method public showEditPhotoMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 18
    .parameter "activity"
    .parameter "mainAdapter"
    .parameter "position"
    .parameter "custListener"
    .parameter "pluginWarningMessage"

    .prologue
    .line 4437
    if-nez p2, :cond_0

    .line 4439
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][MenuManager][showEditPhotoMenu]: no adapter..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4534
    :goto_0
    return-void

    .line 4442
    :cond_0
    invoke-virtual/range {p2 .. p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4443
    .local v5, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v5, :cond_1

    .line 4445
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][MenuManager][showEditPhotoMenu]: no item..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4451
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4452
    .local v11, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v3, :cond_2

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4454
    const v3, 0x7f0b00ca

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v16

    .line 4455
    .local v16, menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4457
    .end local v16           #menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_2
    const v3, 0x20c01fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v12

    .line 4458
    .local v12, menu_crop:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0b00c4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v13

    .line 4459
    .local v13, menu_enhance:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v15

    .line 4460
    .local v15, menu_rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0b0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v14

    .line 4461
    .local v14, menu_rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4462
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 4466
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4467
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4471
    :cond_3
    const v17, 0x7f0b00c5

    new-instance v3, Lcom/htc/album/helper/MenuManager$16;

    move-object/from16 v4, p0

    move/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/htc/album/helper/MenuManager$16;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public showImageRotateMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)Landroid/app/AlertDialog;
    .locals 11
    .parameter "activity"
    .parameter "adapter"
    .parameter "position"
    .parameter "curImage"
    .parameter "custListener"

    .prologue
    .line 5078
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 5079
    :cond_0
    const/4 v0, 0x0

    .line 5127
    :goto_0
    return-object v0

    .line 5081
    :cond_1
    new-instance v6, Lcom/htc/album/helper/MenuManager$22;

    invoke-direct {v6, p0, p2, p1}, Lcom/htc/album/helper/MenuManager$22;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;Landroid/app/Activity;)V

    .line 5105
    .local v6, listener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5106
    .local v7, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const v0, 0x7f0b0004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v9

    .line 5107
    .local v9, rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v8

    .line 5108
    .local v8, rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5109
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5110
    const v10, 0x20c01fb

    new-instance v0, Lcom/htc/album/helper/MenuManager$23;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/album/helper/MenuManager$23;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V

    invoke-virtual {p0, p1, v10, v7, v0}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 5127
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showImageRotateMenu(Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V
    .locals 10
    .parameter "activity"
    .parameter "position"
    .parameter "curImage"
    .parameter "listener"

    .prologue
    .line 5054
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 5073
    :cond_0
    :goto_0
    return-void

    .line 5057
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5058
    .local v6, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const v0, 0x7f0b0004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v8

    .line 5059
    .local v8, rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v7

    .line 5060
    .local v7, rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5061
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5062
    const v9, 0x20c01fb

    new-instance v0, Lcom/htc/album/helper/MenuManager$21;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager$21;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V

    invoke-virtual {p0, p1, v9, v6, v0}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"

    .prologue
    .line 3760
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/helper/MenuManager;->showTabletItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public showItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2380
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->showTabletItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public showItemDetails_FromIImage(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;ILcom/htc/opensense2/album/util/ImageManager$IImage;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "pos"
    .parameter "curImage"
    .parameter "bAllowEdit"

    .prologue
    .line 2371
    iput-object p2, p0, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 2373
    iput-boolean p5, p0, Lcom/htc/album/helper/MenuManager;->mbAllowEdit:Z

    .line 2375
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public showPhotoEditMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 19
    .parameter "activity"
    .parameter "mainAdapter"
    .parameter "position"
    .parameter "curImage"
    .parameter "cusListener"
    .parameter "pluginWarningMessage"

    .prologue
    .line 4893
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 5049
    :cond_0
    :goto_0
    return-void

    .line 4919
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4921
    .local v12, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-interface/range {p4 .. p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v3, :cond_2

    .line 4924
    const v3, 0x7f0b00ca

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v14

    .line 4925
    .local v14, menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4927
    .end local v14           #menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_2
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    if-eqz v3, :cond_3

    .line 4928
    const v3, 0x7f0b0101

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v13

    .line 4929
    .local v13, menu_adjust_3d_alignment:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4933
    .end local v13           #menu_adjust_3d_alignment:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_3
    const v3, 0x20c01fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v10

    .line 4934
    .local v10, crop:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4936
    const v3, 0x7f0b00c4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v11

    .line 4937
    .local v11, enhance:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4939
    const/4 v15, 0x0

    .line 4940
    .local v15, nCount:I
    invoke-interface/range {p4 .. p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4942
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v15

    .line 4945
    :cond_4
    const/4 v3, 0x1

    if-lt v3, v15, :cond_5

    .line 4947
    const v3, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v17

    .line 4948
    .local v17, rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4950
    const v3, 0x7f0b0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v16

    .line 4951
    .local v16, rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4954
    .end local v16           #rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v17           #rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_5
    const v18, 0x7f0b00c5

    new-instance v3, Lcom/htc/album/helper/MenuManager$20;

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/htc/album/helper/MenuManager$20;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public showPhotoMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V
    .locals 10
    .parameter "context"
    .parameter "menuInflater"
    .parameter "menu"
    .parameter "image"
    .parameter "exclusion"

    .prologue
    const v9, 0x7f0a0093

    const v8, 0x7f0a0092

    const v7, 0x7f0a0091

    const v6, 0x7f0a008f

    const v5, 0x7f0a008e

    .line 269
    if-eqz p1, :cond_0

    if-nez p4, :cond_2

    .line 271
    :cond_0
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[showPhotoMenu] null activity or image found!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    const/high16 v4, 0x7f0e

    invoke-virtual {p2, v4, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 277
    and-int/lit16 v4, p5, 0x800

    if-eqz v4, :cond_23

    .line 278
    invoke-static {p3, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 279
    invoke-static {p3, v6}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 286
    :goto_1
    and-int/lit8 v4, p5, 0x1

    if-nez v4, :cond_3

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    :cond_3
    const v4, 0x7f0a0097

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 289
    :cond_4
    and-int/lit8 v4, p5, 0x2

    if-nez v4, :cond_5

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/helper/MenuManager;->isMMSUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "video/x-wmv-drm"

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 290
    :cond_5
    const v4, 0x7f0a009b

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 292
    :cond_6
    and-int/lit8 v4, p5, 0x4

    if-nez v4, :cond_7

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 293
    :cond_7
    invoke-static {p3, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 295
    :cond_8
    and-int/lit8 v4, p5, 0x8

    if-nez v4, :cond_9

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 296
    :cond_9
    const v4, 0x7f0a0096

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 298
    :cond_a
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_b

    .line 299
    const v4, 0x7f0a0095

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 301
    :cond_b
    and-int/lit8 v4, p5, 0x20

    if-nez v4, :cond_c

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 302
    :cond_c
    const v4, 0x7f0a0094

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 304
    :cond_d
    and-int/lit8 v4, p5, 0x40

    if-eqz v4, :cond_e

    .line 305
    const v4, 0x7f0a00a0

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 307
    :cond_e
    and-int/lit16 v4, p5, 0x80

    if-eqz v4, :cond_f

    .line 308
    const v4, 0x7f0a009f

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 310
    :cond_f
    and-int/lit16 v4, p5, 0x100

    if-eqz v4, :cond_10

    .line 311
    const v4, 0x7f0a009e

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 313
    :cond_10
    and-int/lit16 v4, p5, 0x200

    if-nez v4, :cond_11

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_12

    .line 314
    :cond_11
    invoke-static {p3, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 316
    :cond_12
    and-int/lit16 v4, p5, 0x400

    if-nez v4, :cond_13

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_13

    sget-boolean v4, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-eqz v4, :cond_14

    .line 317
    :cond_13
    const v4, 0x7f0a009d

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 319
    :cond_14
    const/high16 v4, 0x2

    and-int/2addr v4, p5

    if-eqz v4, :cond_15

    .line 320
    const v4, 0x7f0a0098

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 322
    :cond_15
    const/high16 v4, 0x4

    and-int/2addr v4, p5

    if-nez v4, :cond_16

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 323
    :cond_16
    const v4, 0x7f0a0090

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 326
    :cond_17
    const/high16 v4, 0x8

    and-int/2addr v4, p5

    if-nez v4, :cond_18

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 327
    :cond_18
    const v4, 0x7f0a009c

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 330
    :cond_19
    const/high16 v4, 0x10

    and-int/2addr v4, p5

    if-eqz v4, :cond_25

    .line 332
    const v4, 0x7f0a0099

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 333
    const v4, 0x7f0a009a

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 345
    :goto_2
    const/high16 v4, 0x1

    and-int/2addr v4, p5

    if-eqz v4, :cond_1a

    .line 347
    invoke-static {p3, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 354
    :cond_1a
    const/4 v1, 0x0

    .line 360
    .local v1, menuItem:Landroid/view/MenuItem;
    const v4, 0x7f0a009b

    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 361
    const v4, 0x2080337

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 363
    :cond_1b
    invoke-interface {p3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 364
    const v4, 0x2080335

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 366
    :cond_1c
    const v4, 0x7f0a009f

    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 367
    const v4, 0x20809fd

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 373
    :cond_1d
    const v4, 0x7f0a0095

    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 374
    const v4, 0x2080323

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 376
    :cond_1e
    const v4, 0x7f0a009e

    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 377
    const v4, 0x2080336

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 383
    :cond_1f
    const v4, 0x7f0a00a0

    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 384
    const v4, 0x2080328

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 386
    :cond_20
    invoke-interface {p3, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 387
    const v4, 0x2080332

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 401
    :cond_21
    const v4, 0x7f0a009c

    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, nResID:I
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Menu_Print(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_22

    .line 405
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 409
    .end local v2           #nResID:I
    :cond_22
    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 410
    const v4, 0x2080324

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 280
    .end local v1           #menuItem:Landroid/view/MenuItem;
    :cond_23
    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 281
    invoke-static {p3, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_1

    .line 283
    :cond_24
    invoke-static {p3, v6}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_1

    .line 337
    :cond_25
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 338
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v4, "showTag"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 339
    .local v0, bShow:Z
    if-eqz v0, :cond_26

    .line 340
    const v4, 0x7f0a0099

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_2

    .line 342
    :cond_26
    const v4, 0x7f0a009a

    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_2
.end method

.method public showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2330
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/helper/MenuManager;->showTabletProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2332
    return-void
.end method

.method public showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;
    .locals 1
    .parameter "context"
    .parameter "image"
    .parameter "position"

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;
    .locals 9
    .parameter "context"
    .parameter "image"
    .parameter "position"
    .parameter "viewSingle"

    .prologue
    const/4 v8, 0x1

    .line 731
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[MenuManager][showSetAsMenu]"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 735
    :cond_0
    sget-object v6, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[showSetAsMenu] null context or image found, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v6, 0x0

    .line 812
    :goto_0
    return-object v6

    .line 739
    :cond_1
    move-object v1, p2

    .line 741
    .local v1, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    .line 742
    .local v3, isDrm:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v5, realInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    .local v2, fakeInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez v3, :cond_5

    .line 746
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsAttachData(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 749
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsContactIcon(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 752
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 767
    :cond_2
    :goto_1
    if-nez p4, :cond_3

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v6

    if-nez v6, :cond_3

    .line 768
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsFavorite(Landroid/content/Context;Ljava/util/List;)V

    .line 770
    :cond_3
    if-nez v3, :cond_4

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-nez v6, :cond_4

    .line 771
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsFootprints(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 773
    :cond_4
    new-instance v0, Lcom/htc/album/helper/MenuManager$2;

    invoke-direct {v0, p0, p3, p1, v1}, Lcom/htc/album/helper/MenuManager$2;-><init>(Lcom/htc/album/helper/MenuManager;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 807
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v4, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 809
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 810
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 812
    const v6, 0x20c01f8

    invoke-virtual {p0, p1, v6, v4, v0}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 754
    .end local v0           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    .end local v4           #mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    :cond_5
    instance-of v6, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 755
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 757
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsWallpaper(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 760
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public showShareMediaFolderMenu(Landroid/content/Context;IIZLcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .parameter "clickListener"

    .prologue
    const/4 v1, 0x0

    .line 1793
    if-nez p1, :cond_1

    .line 1795
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[showShareMediaFolderMenu] Null context"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :cond_0
    :goto_0
    return-object v1

    .line 1799
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1800
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    sget-object v2, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][MenuManager][shareItems]: Ends"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1807
    const v1, 0x20c00a2

    invoke-direct {p0, p1, v1, v0, p5}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "image"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 946
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 948
    :cond_0
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[showShareMediaMenu] null context or adapter found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :goto_0
    return-object v1

    .line 952
    :cond_1
    move-object v5, p2

    .line 953
    .local v5, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v5, :cond_2

    .line 955
    sget-object v3, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[showShareMediaMenu] null image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_2
    invoke-static {p1, v5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v2

    .line 962
    .local v2, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 964
    new-instance v0, Lcom/htc/album/helper/MenuManager$3;

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager$3;-><init>(Lcom/htc/album/helper/MenuManager;Ljava/util/ArrayList;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 997
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    const v1, 0x20c00a2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1000
    .end local v0           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    :cond_3
    const v3, 0x7f0b000c

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showTabletItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 52
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"

    .prologue
    .line 3310
    if-nez p3, :cond_0

    .line 3312
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[showItemDetails] null image found!!"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    const/16 v21, 0x0

    .line 3705
    :goto_0
    return-object v21

    .line 3316
    :cond_0
    const v4, 0x7f030007

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 3317
    .local v5, d:Landroid/widget/ScrollView;
    const v4, 0x7f0a001e

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 3320
    .local v22, detailsContainer:Landroid/view/ViewGroup;
    const v4, 0x7f0a0021

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 3323
    .local v30, imageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 3324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3326
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v31

    .line 3328
    .local v31, isDrm:Z
    const/16 v45, -0x1

    .line 3329
    .local v45, size:I
    const v4, 0x7f0a0023

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/EditText;

    .line 3330
    .local v24, editText:Landroid/widget/EditText;
    const v4, 0x7f0a0022

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 3331
    .local v47, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3332
    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3333
    const/16 v4, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3335
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 3336
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 3337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v46

    .line 3338
    .local v46, subFileIndex:I
    const/4 v4, -0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_12

    .line 3339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v48

    .line 3340
    .local v48, tmpSubName:Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    .line 3341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    const/4 v6, 0x0

    move/from16 v0, v46

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 3345
    .end local v48           #tmpSubName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3349
    const/4 v14, 0x0

    .line 3352
    .local v14, bFirstRowAdded:Z
    if-eqz p5, :cond_1

    const-string v4, "file"

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3357
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v28

    .line 3358
    .local v28, fullPathName:Ljava/lang/String;
    const/16 v40, 0x0

    .line 3359
    .local v40, pathName:Ljava/lang/String;
    if-eqz v28, :cond_2

    .line 3360
    const/16 v37, 0x0

    .line 3361
    .local v37, nStart:I
    const/16 v4, 0x2f

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v36

    .line 3362
    .local v36, nLastIndex:I
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 3363
    move-object/from16 v0, v28

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    .line 3366
    .end local v36           #nLastIndex:I
    .end local v37           #nStart:I
    :cond_2
    if-eqz v40, :cond_3

    .line 3368
    const v4, 0x7f0b006d

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v40

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3373
    .end local v28           #fullPathName:Ljava/lang/String;
    .end local v40           #pathName:Ljava/lang/String;
    :cond_3
    if-nez p5, :cond_5

    .line 3375
    const-string v20, ""

    .line 3376
    .local v20, dateString:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v18

    .line 3377
    .local v18, dateSort:J
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-nez v4, :cond_4

    .line 3379
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v18

    .line 3380
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-nez v4, :cond_4

    .line 3382
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateAdded()J

    move-result-wide v18

    .line 3385
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-eqz v4, :cond_5

    .line 3387
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    .line 3388
    .local v17, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 3389
    .local v15, cal:Ljava/util/Calendar;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3391
    sget-object v4, Lcom/htc/album/helper/MenuManager;->sDateFormat:Ljava/lang/CharSequence;

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3394
    const/16 v4, 0xb

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v29

    .line 3395
    .local v29, hour:I
    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v35

    .line 3399
    .local v35, min:I
    const/16 v4, 0xa

    move/from16 v0, v29

    if-ge v0, v4, :cond_13

    .line 3400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3404
    :goto_2
    const/16 v4, 0xa

    move/from16 v0, v35

    if-ge v0, v4, :cond_14

    .line 3405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3411
    :goto_3
    const v4, 0x7f0b0077

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3416
    .end local v15           #cal:Ljava/util/Calendar;
    .end local v17           #date:Ljava/util/Date;
    .end local v18           #dateSort:J
    .end local v20           #dateString:Ljava/lang/String;
    .end local v29           #hour:I
    .end local v35           #min:I
    :cond_5
    const-string v34, ""

    .line 3419
    .local v34, lengthString:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v42

    .line 3420
    .local v42, recordLength:J
    const-wide/16 v6, -0x1

    cmp-long v4, v42, v6

    if-nez v4, :cond_6

    .line 3421
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v49

    .line 3423
    .local v49, uri:Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3425
    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v39

    .line 3427
    .local v39, path:Ljava/lang/String;
    :try_start_0
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3428
    .local v27, file:Ljava/io/File;
    const-string v4, "[showTabletItemDetails]"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3430
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v42

    .line 3437
    .end local v27           #file:Ljava/io/File;
    .end local v39           #path:Ljava/lang/String;
    .end local v49           #uri:Landroid/net/Uri;
    :cond_6
    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v4, v42, v6

    if-lez v4, :cond_7

    .line 3438
    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 3441
    :cond_7
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3442
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v16

    .line 3444
    .local v16, data:Ljava/io/InputStream;
    if-eqz v16, :cond_8

    .line 3445
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    .line 3446
    .local v32, length:J
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 3448
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3456
    .end local v16           #data:Ljava/io/InputStream;
    .end local v32           #length:J
    :cond_8
    :goto_5
    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3457
    const v4, 0x7f0b007b

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3461
    :cond_9
    if-nez v31, :cond_a

    .line 3462
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 3464
    .local v44, resolution:Ljava/lang/String;
    const v4, 0x7f0b006e

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3469
    .end local v44           #resolution:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    instance-of v4, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    if-eqz v4, :cond_15

    move-object/from16 v4, p3

    .line 3470
    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/htc/album/helper/MenuManager;->setupTabletVideoDetailRows(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V

    .line 3479
    :goto_6
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "video/x-wmv-drm"

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3480
    :cond_b
    const v4, 0x7f0b0078

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b007a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4, v6, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3492
    :goto_7
    const/16 v26, 0x0

    .line 3494
    .local v26, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3495
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v26

    .line 3497
    :cond_c
    if-eqz v26, :cond_11

    .line 3499
    const-string v4, "Make"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 3500
    .local v50, value:Ljava/lang/String;
    if-eqz v50, :cond_d

    .line 3501
    const v4, 0x7f0b007d

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3504
    :cond_d
    const-string v4, "Model"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    .end local v50           #value:Ljava/lang/String;
    check-cast v50, Ljava/lang/String;

    .line 3505
    .restart local v50       #value:Ljava/lang/String;
    if-eqz v50, :cond_e

    .line 3506
    const v4, 0x7f0b007e

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3509
    :cond_e
    const-string v4, "WhiteBalance"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    .end local v50           #value:Ljava/lang/String;
    check-cast v50, Ljava/lang/String;

    .line 3510
    .restart local v50       #value:Ljava/lang/String;
    if-eqz v50, :cond_f

    .line 3511
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/htc/album/AlbumUtility/ExifUtil;->whiteBalanceToString(I)Ljava/lang/String;

    move-result-object v50

    .line 3514
    :cond_f
    if-eqz v50, :cond_10

    const-string v4, ""

    move-object/from16 v0, v50

    if-eq v0, v4, :cond_10

    .line 3515
    const v4, 0x7f0b007f

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-static {v0, v1, v4, v2, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    .line 3518
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->setTabletLatLngDetails(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    .line 3523
    .end local v50           #value:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3525
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 3343
    .end local v14           #bFirstRowAdded:Z
    .end local v26           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v34           #lengthString:Ljava/lang/String;
    .end local v42           #recordLength:J
    :cond_12
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    goto/16 :goto_1

    .line 3402
    .restart local v14       #bFirstRowAdded:Z
    .restart local v15       #cal:Ljava/util/Calendar;
    .restart local v17       #date:Ljava/util/Date;
    .restart local v18       #dateSort:J
    .restart local v20       #dateString:Ljava/lang/String;
    .restart local v29       #hour:I
    .restart local v35       #min:I
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 3407
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 3432
    .end local v15           #cal:Ljava/util/Calendar;
    .end local v17           #date:Ljava/util/Date;
    .end local v18           #dateSort:J
    .end local v20           #dateString:Ljava/lang/String;
    .end local v29           #hour:I
    .end local v35           #min:I
    .restart local v34       #lengthString:Ljava/lang/String;
    .restart local v39       #path:Ljava/lang/String;
    .restart local v42       #recordLength:J
    .restart local v49       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v23

    .line 3433
    .local v23, e:Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 3450
    .end local v23           #e:Ljava/lang/Exception;
    .end local v39           #path:Ljava/lang/String;
    .end local v49           #uri:Landroid/net/Uri;
    .restart local v16       #data:Ljava/io/InputStream;
    :catch_1
    move-exception v25

    .line 3451
    .local v25, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 3452
    .end local v25           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4

    .line 3475
    .end local v16           #data:Ljava/io/InputStream;
    :cond_15
    const v4, 0x7f0b007c

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4, v6, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_6

    .line 3482
    :cond_16
    const v4, 0x7f0b0078

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4, v6, v14}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_7

    .line 3531
    .restart local v26       #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0015

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v51, 0x20c015f

    new-instance v6, Lcom/htc/album/helper/MenuManager$12;

    move-object/from16 v7, p0

    move/from16 v8, v31

    move-object/from16 v9, v24

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v6 .. v13}, Lcom/htc/album/helper/MenuManager$12;-><init>(Lcom/htc/album/helper/MenuManager;ZLandroid/widget/EditText;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move/from16 v0, v51

    invoke-virtual {v4, v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x20c01d6

    new-instance v7, Lcom/htc/album/helper/MenuManager$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$11;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x20c01d6

    new-instance v7, Lcom/htc/album/helper/MenuManager$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$10;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 3589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v21, v0

    .line 3592
    .local v21, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3596
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v6, 0x20200b2

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/Button;

    .line 3597
    .local v41, positiveBtn:Landroid/widget/Button;
    if-eqz v41, :cond_18

    const/4 v4, 0x4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3598
    :cond_18
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v6, 0x20200b6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/Button;

    .line 3599
    .local v38, negativeBtn:Landroid/widget/Button;
    if-eqz v38, :cond_19

    const/4 v4, 0x4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3601
    :cond_19
    if-nez v31, :cond_1a

    if-nez p5, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/album/helper/MenuManager;->mbAllowEdit:Z

    if-eqz v4, :cond_1a

    .line 3604
    invoke-static/range {p1 .. p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_EditTextBackground(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3605
    new-instance v4, Lcom/htc/album/helper/MenuManager$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v47

    move-object/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$13;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/widget/HtcAlertDialog;Landroid/widget/TextView;Landroid/widget/EditText;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3686
    :cond_1a
    new-instance v4, Lcom/htc/album/helper/MenuManager$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/MenuManager$14;-><init>(Lcom/htc/album/helper/MenuManager;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3702
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3703
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showTabletItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 24
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2613
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2615
    :cond_0
    sget-object v4, Lcom/htc/album/helper/MenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[showTabletItemDetails_FromDetailDlgParams] null context or DetailDlgParams found!!"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    const/4 v14, 0x0

    .line 2739
    :goto_0
    return-object v14

    .line 2623
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 2625
    const v4, 0x7f030007

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 2626
    .local v5, d:Landroid/widget/ScrollView;
    const v4, 0x7f0a001e

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 2628
    .local v15, detailsContainer:Landroid/view/ViewGroup;
    const v4, 0x7f0a0021

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 2634
    .local v19, imageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/album/DetailDlgParams;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 2635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2637
    const v4, 0x7f0a0023

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 2638
    .local v18, editText:Landroid/widget/EditText;
    const v4, 0x7f0a0022

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2639
    .local v21, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2640
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2641
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2643
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 2644
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 2645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2649
    const/4 v10, 0x0

    .line 2652
    .local v10, bFirstRowAdded:Z
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2653
    const v4, 0x7f0b006d

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2656
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 2657
    const v4, 0x7f0b0077

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2660
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/DetailDlgParams;->getSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 2661
    .local v20, sSize:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2662
    const v4, 0x7f0b007b

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v15, v4, v1, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2666
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 2667
    const v4, 0x7f0b006e

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2670
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 2673
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 2674
    const v4, 0x7f0b006e

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2677
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 2678
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x3e8

    move/from16 v16, v0

    .line 2679
    .local v16, durationMs:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .line 2680
    .local v17, durationValue:Ljava/lang/String;
    const v4, 0x7f0b006f

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v15, v4, v1, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2683
    .end local v16           #durationMs:I
    .end local v17           #durationValue:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 2684
    const v4, 0x7f0b0070

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2687
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2688
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2690
    .local v11, bitRate:J
    const-wide/32 v6, 0xf4240

    cmp-long v4, v11, v6

    if-gez v4, :cond_b

    .line 2691
    const v4, 0x7f0b0075

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v11, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2696
    .local v13, bps:Ljava/lang/String;
    :goto_1
    const v4, 0x7f0b0071

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v13, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2700
    .end local v11           #bitRate:J
    .end local v13           #bps:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    .line 2702
    const v4, 0x7f0b007c

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2706
    :cond_a
    const v4, 0x7f0b0078

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2710
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0015

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x20c015f

    new-instance v7, Lcom/htc/album/helper/MenuManager$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$8;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    .line 2721
    .local v14, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    new-instance v4, Lcom/htc/album/helper/MenuManager$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/MenuManager$9;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v14, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2736
    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 2737
    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 2693
    .end local v14           #detailDlg:Lcom/htc/widget/HtcAlertDialog;
    .restart local v11       #bitRate:J
    :cond_b
    const v4, 0x7f0b0076

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-double v8, v11

    const-wide v22, 0x412e848000000000L

    div-double v8, v8, v22

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #bps:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public showTabletProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 20
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2217
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2326
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2223
    .restart local p2
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2228
    const v4, 0x7f030007

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 2229
    .local v5, d:Landroid/widget/ScrollView;
    const v4, 0x7f0a001e

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 2232
    .local v15, detailsContainer:Landroid/view/ViewGroup;
    const v4, 0x7f0a0021

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 2234
    .local v18, imageView:Landroid/widget/ImageView;
    const v4, 0x7f0a0023

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 2235
    .local v17, editText:Landroid/widget/EditText;
    const v4, 0x7f0a0022

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2236
    .local v19, titleText:Landroid/widget/TextView;
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2237
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2238
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2239
    const v4, 0x7f0b0091

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2241
    const/4 v10, 0x0

    .local v10, bFirstRowAdded:Z
    move-object/from16 v4, p2

    .line 2242
    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v16

    .line 2243
    .local v16, drmType:I
    const/4 v4, 0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    .line 2244
    const v4, 0x7f0b008b

    const v6, 0x7f0b0093

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2249
    :goto_1
    new-instance v4, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2252
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    .line 2255
    const v4, 0x7f0b008c

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2256
    const v4, 0x7f0b008d

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2257
    const v4, 0x7f0b008e

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2295
    .end local p2
    :goto_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0086

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x20c015f

    new-instance v7, Lcom/htc/album/helper/MenuManager$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/helper/MenuManager$6;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    .line 2306
    .local v11, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v11, :cond_0

    .line 2308
    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    .line 2309
    .local v14, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v14, :cond_0

    .line 2311
    new-instance v4, Lcom/htc/album/helper/MenuManager$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/MenuManager$7;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v14, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2323
    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 2246
    .end local v11           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v14           #detailDlg:Lcom/htc/widget/HtcAlertDialog;
    .restart local p2
    :cond_2
    const v4, 0x7f0b008b

    const v6, 0x7f0b0092

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_1

    .line 2262
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 2263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020015

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    .line 2265
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/htc/opensense2/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-ne v4, v6, :cond_5

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/htc/album/helper/MenuManager;->setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2270
    :cond_5
    const/4 v4, 0x2

    new-array v12, v4, [Ljava/lang/String;

    .line 2271
    .local v12, constraints:[Ljava/lang/String;
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/htc/opensense2/album/util/DrmManager;->getConstranitStringType(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;[Ljava/lang/String;)I

    move-result v13

    .line 2272
    .local v13, constriantType:I
    const/4 v4, -0x1

    if-ne v13, v4, :cond_6

    .line 2273
    const v4, 0x7f0b008c

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2274
    const v4, 0x7f0b008d

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2275
    const v4, 0x7f0b008e

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2

    .line 2277
    :cond_6
    if-nez v13, :cond_7

    .line 2278
    const v4, 0x7f0b008c

    const/4 v6, 0x0

    aget-object v6, v12, v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2279
    const v4, 0x7f0b008d

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2280
    const v4, 0x7f0b008e

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2

    .line 2282
    :cond_7
    const/4 v4, 0x2

    if-ne v13, v4, :cond_8

    .line 2283
    const v4, 0x7f0b008c

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2284
    const v4, 0x7f0b008d

    const/4 v6, 0x0

    aget-object v6, v12, v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2285
    const v4, 0x7f0b008e

    const/4 v6, 0x1

    aget-object v6, v12, v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2

    .line 2287
    :cond_8
    const v4, 0x7f0b008c

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2288
    const v4, 0x7f0b008d

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    .line 2289
    const v4, 0x7f0b008e

    const v6, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_2
.end method
