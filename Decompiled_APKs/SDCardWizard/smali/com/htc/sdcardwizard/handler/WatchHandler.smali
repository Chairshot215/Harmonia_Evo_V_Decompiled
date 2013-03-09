.class public final Lcom/htc/sdcardwizard/handler/WatchHandler;
.super Lcom/htc/sdcardwizard/handler/SDCardHandler;
.source "WatchHandler.java"


# static fields
.field private static final EXT:[Ljava/lang/String; = null

.field private static final PATH1:Ljava/lang/String; = "/.data/HtcWatch/files"

.field private static final PATH2:Ljava/lang/String; = "/.data/HtcWatch/preload_movies"

.field private static final PATH3:Ljava/lang/String; = "/.data/HtcWatch/preloads"

.field private static final TAG:Ljava/lang/String; = "LSCW/WatchHandler"

.field private static final WATCH_DELETE_ACTIVITY_NAME:Ljava/lang/String; = "com.sdgtl.watch.DeleteEditWindow"

.field private static final WATCH_PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private final infoGetterFiles:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

.field private final infoGetterPreloads:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

.field private final paths1:[Ljava/lang/String;

.field private final paths2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".eny"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".wmv"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/WatchHandler;->EXT:[Ljava/lang/String;

    .line 69
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    const-string v0, "com.sdgtl.watch.flyer"

    sput-object v0, Lcom/htc/sdcardwizard/handler/WatchHandler;->WATCH_PACKAGE_NAME:Ljava/lang/String;

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    .line 78
    :cond_2
    const-string v0, "com.sdgtl.watch.shooter"

    sput-object v0, Lcom/htc/sdcardwizard/handler/WatchHandler;->WATCH_PACKAGE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    .line 80
    const-string v0, "com.sdgtl.watch.pyramid"

    sput-object v0, Lcom/htc/sdcardwizard/handler/WatchHandler;->WATCH_PACKAGE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_4
    const-string v0, "com.sdgtl.watch"

    sput-object v0, Lcom/htc/sdcardwizard/handler/WatchHandler;->WATCH_PACKAGE_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "owner"

    .prologue
    .line 27
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    sget-object v1, Lcom/htc/sdcardwizard/handler/WatchHandler;->WATCH_PACKAGE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/SDCardHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 29
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/WatchHandler;->getPaths1()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->paths1:[Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/WatchHandler;->getPaths2()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->paths2:[Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->paths1:[Ljava/lang/String;

    new-instance v2, Lcom/htc/sdcardwizard/utils/ExtentionsWatchFileFilter;

    sget-object v3, Lcom/htc/sdcardwizard/handler/WatchHandler;->EXT:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/htc/sdcardwizard/utils/ExtentionsWatchFileFilter;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;-><init>([Ljava/lang/String;Ljava/io/FileFilter;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->infoGetterFiles:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    .line 32
    new-instance v0, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->paths2:[Ljava/lang/String;

    new-instance v2, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;

    sget-object v3, Lcom/htc/sdcardwizard/handler/WatchHandler;->EXT:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;-><init>([Ljava/lang/String;Ljava/io/FileFilter;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->infoGetterPreloads:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    .line 33
    return-void
.end method

.method private getPaths1()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.data/HtcWatch/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getPaths2()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.data/HtcWatch/preload_movies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.data/HtcWatch/preloads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 8

    .prologue
    .line 37
    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->infoGetterFiles:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    invoke-interface {v2}, Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;->get()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v0

    .line 38
    .local v0, c1:Lcom/htc/sdcardwizard/handler/CategoryInfo;
    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/WatchHandler;->infoGetterPreloads:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    invoke-interface {v2}, Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;->get()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v1

    .line 39
    .local v1, c2:Lcom/htc/sdcardwizard/handler/CategoryInfo;
    new-instance v2, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    iget v3, v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->count:I

    iget v4, v1, Lcom/htc/sdcardwizard/handler/CategoryInfo;->count:I

    add-int/2addr v3, v4

    iget-wide v4, v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->size:J

    iget-wide v6, v1, Lcom/htc/sdcardwizard/handler/CategoryInfo;->size:J

    add-long/2addr v4, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v2
.end method

.method public final isInstalled()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    sget-object v1, Lcom/htc/sdcardwizard/handler/WatchHandler;->WATCH_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/sdcardwizard/utils/IconHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public showDeleteScreen(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/htc/sdcardwizard/handler/WatchHandler;->WATCH_PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "com.sdgtl.watch.DeleteEditWindow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LSCW/WatchHandler"

    const-string v3, "Could not start activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
