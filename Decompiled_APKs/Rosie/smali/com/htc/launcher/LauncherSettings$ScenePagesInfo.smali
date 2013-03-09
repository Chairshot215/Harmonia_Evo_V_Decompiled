.class public final Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;
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
    name = "ScenePagesInfo"
.end annotation


# static fields
.field static final COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field public static final HOME_INDEX:Ljava/lang/String; = "home_index"

.field public static final PAGES_COUNT:Ljava/lang/String; = "pages_count"

.field public static final SCENE_NAME:Ljava/lang/String; = "scene_name"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 411
    const-string v0, "content://com.htc.launcher.settings/scene_pages?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 415
    const-string v0, "content://com.htc.launcher.settings/scene_pages?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .line 430
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "scene_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pages_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "home_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.htc.launcher.settings/scene_pages/"

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
