.class public Lcom/htc/idlescreen/shortcut/WallpaperProvider;
.super Landroid/content/ContentProvider;
.source "WallpaperProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.wallpaper.provider"

.field public static final CODE_WALLPAPER:I = 0x1

.field private static final LOG_PREFIX:Ljava/lang/String; = "WallpaperProvider"

.field public static final URI_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_DIR:Ljava/io/File;

.field public static final WALLPAPER_FILE:Ljava/io/File;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 28
    sget-object v0, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.idlescreen.wallpaper.provider"

    const-string v2, "wallpaper"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.htc.idlescreen.shortcut/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->WALLPAPER_DIR:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getWallpaperParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "mode"

    .prologue
    .line 82
    :try_start_0
    sget-object v2, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    sget-object v2, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 85
    :cond_0
    sget-object v2, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 73
    sget-object v0, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/htc/idlescreen/shortcut/WallpaperProvider;->getWallpaperParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
