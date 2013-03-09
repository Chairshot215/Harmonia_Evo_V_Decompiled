.class final Lcom/htc/home/personalize/LauncherAppWidgetBinder$LauncherProvider;
.super Ljava/lang/Object;
.source "LauncherAppWidgetBinder.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/LauncherAppWidgetBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LauncherProvider"
.end annotation


# static fields
.field static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field static final ICON:Ljava/lang/String; = "icon"

.field static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field static final ITEM_TYPE_APPWIDGET:I = 0x4

.field static final ITEM_TYPE_WIDGET_CLOCK:I = 0x3e8

.field static final ITEM_TYPE_WIDGET_PHOTO_FRAME:I = 0x3ea

.field static final ITEM_TYPE_WIDGET_SEARCH:I = 0x3e9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://com.htc.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/LauncherAppWidgetBinder$LauncherProvider;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
