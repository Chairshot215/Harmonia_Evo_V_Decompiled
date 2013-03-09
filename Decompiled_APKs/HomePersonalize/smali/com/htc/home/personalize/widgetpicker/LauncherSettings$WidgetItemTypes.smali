.class public final Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetItemTypes;
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
    name = "WidgetItemTypes"
.end annotation


# static fields
.field static final COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_PROPERTIES:Ljava/lang/String; = "extra_properties"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "icon_resource"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "item_category"

.field public static final LAYOUT_RESOURCE:Ljava/lang/String; = "layout_resource"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final PLUGIN_CLASSNAME:Ljava/lang/String; = "plugin_classname"

.field public static final SELECT_BY_UNIQUE_NAME:Ljava/lang/String; = "package_name=? AND widget_name=? "

.field public static final SPAN_X:Ljava/lang/String; = "span_x"

.field public static final SPAN_Y:Ljava/lang/String; = "span_y"

.field public static final TEXT_RESOURCE:Ljava/lang/String; = "text_resource"

.field public static final WIDGET_NAME:Ljava/lang/String; = "widget_name"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 294
    const-string v0, "content://com.htc.launcher.settings/widget_item_types?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    .line 322
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "widget_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "plugin_classname"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "item_category"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "parent_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text_resource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon_resource"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "span_x"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "span_y"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "layout_resource"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "extra_properties"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetItemTypes;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
