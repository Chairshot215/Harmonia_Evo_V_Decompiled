.class public Lcom/htc/home/personalize/widgetpicker/LauncherSettings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetWorkspace;,
        Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetItemTypes;,
        Lcom/htc/home/personalize/widgetpicker/LauncherSettings$Favorites;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 341
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
