.class public final Lcom/htc/launcher/LauncherSettings$Favorites;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field public static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final CELLY_NAVBAR_BUTTON:I = 0x0

.field public static final COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_DESKTOP:I = -0x64

.field public static final CONTAINER_NAVBAR_BUTTON:I = -0x65

.field public static final CONTAINER_NAVBAR_BUTTON_FLOATING:I = -0x3e5

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field public static final DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field public static final FXWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final FXWIDGET_PROVIDER:Ljava/lang/String; = "intent"

.field public static final FXWIDGET_STYLE:Ljava/lang/String; = "uri"

.field public static final FXWIDGET_TYPE_ID:Ljava/lang/String; = "title"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field public static final ICON_TYPE:Ljava/lang/String; = "iconType"

.field public static final ICON_TYPE_BITMAP:I = 0x1

.field public static final ICON_TYPE_RESOURCE:I = 0x0

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final IS_SHORTCUT:Ljava/lang/String; = "isShortcut"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final ITEM_TYPE_APPLICATION:I = 0x0

.field public static final ITEM_TYPE_APPWIDGET:I = 0x4

.field public static final ITEM_TYPE_FXWIDGET:I = 0x5

.field public static final ITEM_TYPE_LIVE_FOLDER:I = 0x3

.field public static final ITEM_TYPE_SHORTCUT:I = 0x1

.field public static final ITEM_TYPE_USER_FOLDER:I = 0x2

.field public static final ITEM_TYPE_WIDGET_CLOCK:I = 0x3e8

.field public static final ITEM_TYPE_WIDGET_PHOTO_FRAME:I = 0x3ea

.field public static final ITEM_TYPE_WIDGET_SEARCH:I = 0x3e9

.field public static final ORIG_ID:Ljava/lang/String; = "orig_id"

.field public static final PROPS:Ljava/lang/String; = "props"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final SCREEN_NAVBAR_BUTTON:I = 0x0

.field public static final SPANX:Ljava/lang/String; = "spanX"

.field public static final SPANY:Ljava/lang/String; = "spanY"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final WORKSPACE_ID:Ljava/lang/String; = "workspace_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "content://com.htc.launcher.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.htc.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .line 282
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

    sput-object v0, Lcom/htc/launcher/LauncherSettings$Favorites;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(JZ)Landroid/net/Uri;
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
