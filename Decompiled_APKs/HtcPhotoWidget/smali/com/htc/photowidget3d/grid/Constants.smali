.class public Lcom/htc/photowidget3d/grid/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_LAUNCH_ALBUM:Ljava/lang/String; = "com.htc.album.action.VIEW_FOLDER"

.field public static final ACTION_PICK_FOLDER:Ljava/lang/String; = "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

.field public static final ACTION_SCROLL_BACKWARD:I = 0x0

.field public static final ACTION_SCROLL_FORWARD:I = 0x1

.field public static final ACTION_VIEW_SWITCH:I = 0x2

.field public static final CACHE_PAGE_NUM:I = 0x3

.field public static final CMD_ADD_CACHE:I = 0xb

.field public static final CMD_ALBUM_MISSING:I = 0x1

.field public static final CMD_ALBUM_READY:I = 0x0

.field public static final CMD_DEINIT:I = 0x11

.field public static final CMD_DELETE_CACHE:I = 0xc

.field public static final CMD_IMGOP_CHECK_CONTENTCHANGE:I = 0xf

.field public static final CMD_IMG_RELOAD:I = 0x10

.field public static final CMD_INIT:I = 0x12

.field public static final CMD_INIT_IMGOP:I = 0xe

.field public static final CMD_LAUNCH_ALBUM_GRID:I = 0x7

.field public static final CMD_LAUNCH_ALBUM_PHOTO:I = 0x8

.field public static final CMD_LAUNCH_ALBUM_PICKER:I = 0xa

.field public static final CMD_MEDIA_MOUNTED:I = 0x3

.field public static final CMD_MEDIA_UNMOUNTED:I = 0x2

.field public static final CMD_ORIENTATION_CHANGED:I = 0xd

.field public static final CMD_QUERYALBUM:I = 0x13

.field public static final CMD_SCROLL_ACTION:I = 0x4

.field public static final CMD_SET_MODE10_VIEW_STATE:I = 0x9

.field public static final CMD_SWITCH_TO_GRID:I = 0x5

.field public static final CMD_SWITCH_TO_PHOTO:I = 0x6

.field public static final COL_NUM_L:I = 0x5

.field public static final COL_NUM_P:I = 0x4

.field public static final CTL_APP_HITBOX:Ljava/lang/String; = "app.hitbox"

.field public static final CTL_APP_TEXT:Ljava/lang/String; = "app.text"

.field public static final CTL_BTN:Ljava/lang/String; = "button.common_center"

.field public static final CTL_BTN_TL:Ljava/lang/String; = "timeline.btn_photo_icons"

.field public static final CTL_LISTITEM_DYNAMIC_IMAGE:Ljava/lang/String; = "dynamicimage.thumb"

.field public static final CTL_LISTITEM_DYNAMIC_IMAGE2:Ljava/lang/String; = "dynamicimage.thumb_t"

.field public static final CTL_LISTITEM_TL:Ljava/lang/String; = "listitem.timeline"

.field public static final CTL_LISTVIEW:Ljava/lang/String; = "ListViewViewPort"

.field public static final CTL_MAINPAGE_TL:Ljava/lang/String; = "timeline.main_page"

.field public static final CTL_PHOTO_ERROR_DYNAMIC_IMAGE:Ljava/lang/String; = "dynamicimage.photo_error"

.field public static final CTL_PHOTO_ERROR_TEXT:Ljava/lang/String; = "textlabel.failed"

.field public static final CTL_TILT_TL:Ljava/lang/String; = "timeline.tiltanim"

.field private static final DEVICE_RES_HD:I = 0xe1000

.field private static final DEVICE_RES_QHD:I = 0x7e900

.field private static final DEVICE_RES_WSVGA:I = 0x96000

.field private static final DEVICE_RES_WVGA:I = 0x5dc00

.field public static final FRAME_FAIL:I = 0xa

.field public static final FRAME_NORMAL:I = 0x5

.field public static final GRID_HEIGHT_L:[I = null

.field public static final GRID_HEIGHT_P:[I = null

.field public static final GRID_NUMBER:I = 0x14

.field public static final GRID_WIDTH_L:[I = null

.field public static final GRID_WIDTH_P:[I = null

.field public static final KEY_ALBUM_FOLDER:Ljava/lang/String; = "folder_type"

.field public static final KEY_IMAGE_ARGS:Ljava/lang/String; = "image_args"

.field public static final KEY_IMAGE_PHONE_URI:Ljava/lang/String; = "image_uri_phone"

.field public static final KEY_IMAGE_URI:Ljava/lang/String; = "image_uri"

.field public static final KEY_IMAGE_WHERE:Ljava/lang/String; = "image_where"

.field public static final MARKER_BTN_ALBUM:Ljava/lang/String; = "ap"

.field public static final MARKER_BTN_GRID:Ljava/lang/String; = "grid"

.field public static final MARKER_LISTITEM:Ljava/lang/String; = "cube_trans"

.field public static final MARKER_NO_IMAGE:Ljava/lang/String; = "unloaded_intro"

.field public static final MARKER_TILT:Ljava/lang/String; = "tilt"

.field public static final MAX_SINGLE_IMAGE_PIX:I = 0x4b000

.field public static final MIME_IMAGE_JPS:Ljava/lang/String; = "image/jps"

.field public static final MIME_IMAGE_MPO:Ljava/lang/String; = "image/mpo"

.field public static final MSG_BASE:I = 0x1b58

.field public static final MSG_MEDIA_MOUNTED:I = -0x1

.field public static final MSG_POST_CONFIGURATION_CHANGED:I = 0x1b59

.field public static final OFFSET_ORIENTATION_CHANGE:I = -0x1

.field public static final PHOTO_VIEW_FULL:I = 0x1

.field public static final PHOTO_VIEW_GRID:I = 0x0

.field private static RESOLUTION:I = 0x0

.field public static final RESOLUTION_HD:I = 0x3

.field public static final RESOLUTION_QHD:I = 0x1

.field public static final RESOLUTION_WSVGA:I = 0x0

.field public static final RESOLUTION_WVGA:I = 0x2

.field public static final ROW_NUM_L:I = 0x4

.field public static final ROW_NUM_P:I = 0x5

.field public static final SELECT_TYPE_ALBUM:I = 0x1e63


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/photowidget3d/grid/Constants;->GRID_WIDTH_P:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/photowidget3d/grid/Constants;->GRID_HEIGHT_P:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/photowidget3d/grid/Constants;->GRID_WIDTH_L:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/photowidget3d/grid/Constants;->GRID_HEIGHT_L:[I

    .line 107
    const/4 v0, 0x2

    sput v0, Lcom/htc/photowidget3d/grid/Constants;->RESOLUTION:I

    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x88t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0x9ft 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_3
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResolution()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/htc/photowidget3d/grid/Constants;->RESOLUTION:I

    return v0
.end method

.method public static initResolution(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 116
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 117
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 118
    .local v3, nWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 119
    .local v1, nHeight:I
    mul-int v2, v3, v1

    .line 121
    .local v2, nRes:I
    sparse-switch v2, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 125
    :sswitch_0
    const/4 v4, 0x0

    sput v4, Lcom/htc/photowidget3d/grid/Constants;->RESOLUTION:I

    goto :goto_0

    .line 130
    :sswitch_1
    const/4 v4, 0x1

    sput v4, Lcom/htc/photowidget3d/grid/Constants;->RESOLUTION:I

    goto :goto_0

    .line 135
    :sswitch_2
    const/4 v4, 0x2

    sput v4, Lcom/htc/photowidget3d/grid/Constants;->RESOLUTION:I

    goto :goto_0

    .line 140
    :sswitch_3
    const/4 v4, 0x3

    sput v4, Lcom/htc/photowidget3d/grid/Constants;->RESOLUTION:I

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x5dc00 -> :sswitch_2
        0x7e900 -> :sswitch_1
        0x96000 -> :sswitch_0
        0xe1000 -> :sswitch_3
    .end sparse-switch
.end method
