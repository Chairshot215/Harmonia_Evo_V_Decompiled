.class public Lcom/htc/launcher/LauncherSettings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;,
        Lcom/htc/launcher/LauncherSettings$WidgetWorkspace;,
        Lcom/htc/launcher/LauncherSettings$WidgetItemTypes;,
        Lcom/htc/launcher/LauncherSettings$Favorites;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCHER_BAR_CHANGED:Ljava/lang/String; = "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

.field public static final ACTION_OPEN_LAUNCHER_BAR_FOLDER:Ljava/lang/String; = "com.htc.launcher.action.OPEN_LAUNCHER_BAR_FOLDER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    return-void
.end method

.method static getSpecialAction(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "action"

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.htc.launcher.settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
