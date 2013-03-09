.class public Lcom/htc/home/personalize/util/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# static fields
.field public static final COLUMN_ACTION_TAG:Ljava/lang/String; = "actionTag"

.field public static final COLUMN_CELL_HEIGHT:Ljava/lang/String; = "cell_height"

.field public static final COLUMN_CELL_WIDTH:Ljava/lang/String; = "cell_width"

.field public static final COLUMN_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final COLUMN_COMPONENT:Ljava/lang/String; = "component"

.field public static final COLUMN_GADGET_ID:Ljava/lang/String; = "gadgetId"

.field public static final COLUMN_IMAGE:Ljava/lang/String; = "image"

.field public static final COLUMN_INDEX:Ljava/lang/String; = "index"

.field public static final COLUMN_INTENT:Ljava/lang/String; = "intent"

.field public static final COLUMN_MAX_SPAN_X:Ljava/lang/String; = "max_span_x"

.field public static final COLUMN_MAX_SPAN_Y:Ljava/lang/String; = "max_span_y"

.field public static COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final COLUMN_NEXT_LEVEL:Ljava/lang/String; = "next_level"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final COLUMN_PRIORITY:Ljava/lang/String; = "priority"

.field public static final COLUMN_TEXT:Ljava/lang/String; = "text"

.field public static final COLUMN_WIDGET_GROUP:Ljava/lang/String; = "widget_item_is_group_item"

.field public static final COLUMN_WIDGET_TYPE:Ljava/lang/String; = "widget_item_type"

.field private static final PERSONALIZE_URI:Ljava/lang/String; = "content://com.htc.launcher.personalize/"

.field public static final TABLE_CHT_ITEMS:Ljava/lang/String; = "cht"

.field public static final TABLE_COMBINED_GADGET_ITEMS:Ljava/lang/String; = "combined_gadget"

.field public static final TABLE_EXT_ITEMS:Ljava/lang/String; = "ext"

.field public static final TABLE_FOLDER_ITEMS:Ljava/lang/String; = "folder"

.field public static final TABLE_FUNCTION_MENU_ITEMS:Ljava/lang/String; = "function_menu"

.field public static final TABLE_LIVE_FOLDER_ITEMS:Ljava/lang/String; = "live_folder"

.field public static final TABLE_MENU_ITEMS:Ljava/lang/String; = "menu"

.field public static final TABLE_PROGRAM_ITEMS:Ljava/lang/String; = "program"

.field public static final TABLE_SETTING_WIDGET_ITEMS:Ljava/lang/String; = "setting_widget"

.field public static final TABLE_SHORTCUT_ITEMS:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "PersonalizeProviderHelper"

.field private static final WORKSPACE_INFO_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "index"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "actionTag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gadgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "className"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "component"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "next_level"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "widget_item_is_group_item"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "widget_item_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/util/ProviderHelper;->COLUMN_NAMES:[Ljava/lang/String;

    .line 59
    const-string v0, "content://com.htc.launcher.workspaceinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/util/ProviderHelper;->WORKSPACE_INFO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "tableName"

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v2, "PersonalizeProviderHelper"

    const-string v4, "getDataCursor()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v2, "PersonalizeProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tableName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.htc.launcher.personalize/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/htc/home/personalize/util/ProviderHelper;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public static getRoomCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/personalize/util/ProviderHelper;->WORKSPACE_INFO_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
