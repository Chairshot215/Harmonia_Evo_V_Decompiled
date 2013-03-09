.class public final Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetWorkspace;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widgetpicker/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetWorkspace"
.end annotation


# static fields
.field public static final ANCESTOR_ID:Ljava/lang/String; = "ancestor_id"

.field static final COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lockscreen_wallpaper"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TRANSLATE_ID:Ljava/lang/String; = "translate_id"

.field public static final WALLPAPER_COMPONENT:Ljava/lang/String; = "wallpaper_component"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 345
    const-string v0, "content://com.htc.launcher.settings/widget_workspaces?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetWorkspace;->CONTENT_URI:Landroid/net/Uri;

    .line 363
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ancestor_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "translate_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen_wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "wallpaper_component"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetWorkspace;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.htc.launcher.settings/widget_workspaces/"

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
