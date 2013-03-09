.class final Lcom/htc/home/personalize/widgetpicker/LauncherSettings$Favorites;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widgetpicker/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Favorites"
.end annotation


# static fields
.field static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field static final CELLX:Ljava/lang/String; = "cellX"

.field static final CELLY:Ljava/lang/String; = "cellY"

.field static final COLUMN_NAMES:[Ljava/lang/String; = null

.field static final CONTAINER:Ljava/lang/String; = "container"

.field static final CONTAINER_DESKTOP:I = -0x64

.field static final CONTENT_URI:Landroid/net/Uri; = null

.field static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field static final DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field static final ICON:Ljava/lang/String; = "icon"

.field static final ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field static final ICON_TYPE:Ljava/lang/String; = "iconType"

.field static final ICON_TYPE_BITMAP:I = 0x1

.field static final ICON_TYPE_RESOURCE:I = 0x0

.field static final ID:Ljava/lang/String; = "_id"

.field static final INTENT:Ljava/lang/String; = "intent"

.field static final IS_SHORTCUT:Ljava/lang/String; = "isShortcut"

.field static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field static final ITEM_TYPE_APPLICATION:I = 0x0

.field static final ITEM_TYPE_APPWIDGET:I = 0x4

.field static final ITEM_TYPE_LIVE_FOLDER:I = 0x3

.field static final ITEM_TYPE_SHORTCUT:I = 0x1

.field static final ITEM_TYPE_USER_FOLDER:I = 0x2

.field static final ITEM_TYPE_WIDGET_CLOCK:I = 0x3e8

.field static final ITEM_TYPE_WIDGET_PHOTO_FRAME:I = 0x3ea

.field static final ITEM_TYPE_WIDGET_SEARCH:I = 0x3e9

.field static final ORIG_ID:Ljava/lang/String; = "orig_id"

.field static final PROPS:Ljava/lang/String; = "props"

.field static final SCREEN:Ljava/lang/String; = "screen"

.field static final SPANX:Ljava/lang/String; = "spanX"

.field static final SPANY:Ljava/lang/String; = "spanY"

.field static final TITLE:Ljava/lang/String; = "title"

.field static final URI:Ljava/lang/String; = "uri"

.field static final WORKSPACE_ID:Ljava/lang/String; = "workspace_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "content://com.htc.launcher.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.htc.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .line 261
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "isShortcut"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "props"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "workspace_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "orig_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "displayMode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$Favorites;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.htc.launcher.settings/favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
