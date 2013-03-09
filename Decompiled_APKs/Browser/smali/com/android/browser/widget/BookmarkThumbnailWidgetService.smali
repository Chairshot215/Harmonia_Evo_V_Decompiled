.class public Lcom/android/browser/widget/BookmarkThumbnailWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "BookmarkThumbnailWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;,
        Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;
    }
.end annotation


# static fields
.field static final ACTION_CHANGE_FOLDER:Ljava/lang/String; = "com.android.browser.widget.CHANGE_FOLDER"

.field private static final BOOKMARK_INDEX_FAVICON:I = 0x3

.field private static final BOOKMARK_INDEX_ID:I = 0x0

.field private static final BOOKMARK_INDEX_IS_FOLDER:I = 0x4

.field private static final BOOKMARK_INDEX_PARENT_ID:I = 0x7

.field private static final BOOKMARK_INDEX_THUMBNAIL:I = 0x6

.field private static final BOOKMARK_INDEX_TITLE:I = 0x1

.field private static final BOOKMARK_INDEX_URL:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String; = null

.field static final STATE_CURRENT_FOLDER:Ljava/lang/String; = "current_folder"

.field static final STATE_ROOT_FOLDER:Ljava/lang/String; = "root_folder"

.field static final TAG:Ljava/lang/String; = "BookmarkThumbnailWidgetService"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 162
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static changeFolder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    const-string v4, "appWidgetId"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 103
    .local v3, wid:I
    const-string v4, "_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 104
    .local v0, fid:J
    if-ltz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 105
    invoke-static {p0, v3}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "current_folder"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const v5, 0x7f0d0025

    invoke-virtual {v4, v3, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 110
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static deleteWidgetState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 92
    const-string v1, "widgetState-%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 94
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 99
    :cond_0
    return-void
.end method

.method static getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;
    .locals 4
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const/4 v3, 0x0

    .line 86
    const-string v0, "widgetState-%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static removeOrphanedStates(Landroid/content/Context;[I)V
    .locals 9
    .parameter "context"
    .parameter "widgetIds"

    .prologue
    .line 124
    const-string v6, "null"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 125
    .local v4, prefsDirectory:Ljava/io/File;
    new-instance v6, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;

    invoke-direct {v6, p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;-><init>([I)V

    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 126
    .local v5, widgetStates:[Ljava/io/File;
    if-eqz v5, :cond_1

    .line 127
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 128
    .local v1, f:Ljava/io/File;
    const-string v6, "BookmarkThumbnailWidgetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found orphaned state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 127
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method

.method static setupWidgetState(Landroid/content/Context;IJ)V
    .locals 3
    .parameter "context"
    .parameter "widgetId"
    .parameter "rootFolder"

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "current_folder"

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "root_folder"

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 3
    .parameter "intent"

    .prologue
    .line 77
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, widgetId:I
    if-gez v0, :cond_0

    .line 79
    const-string v1, "BookmarkThumbnailWidgetService"

    const-string v2, "Missing EXTRA_APPWIDGET_ID!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;

    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method
