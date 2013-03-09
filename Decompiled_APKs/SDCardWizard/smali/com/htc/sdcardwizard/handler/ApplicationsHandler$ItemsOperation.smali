.class final Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;
.super Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;
.source "ApplicationsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/ApplicationsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemsOperation"
.end annotation


# instance fields
.field private final items:Lcom/htc/sdcardwizard/handler/SDCardItems;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;-><init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V

    .line 216
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct {v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;-><init>()V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 11
    .parameter "packageName"
    .parameter "appInfo"

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v1, v1, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v1, v1, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v1, v1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-object v6, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v6, v6, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v9, v6, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v1, v9

    iget-object v6, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v6, v6, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v9, v6, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long v4, v1, v9

    .line 200
    .local v4, size:J
    :goto_0
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v8, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 201
    .local v8, version:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->context:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Lcom/htc/sdcardwizard/utils/Formatter;->filesize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    const/4 v6, 0x1

    aput-object v8, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, desc:Ljava/lang/String;
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItem;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    .line 208
    .local v0, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v1, v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #size:J
    .end local v8           #version:Ljava/lang/String;
    :goto_1
    return-void

    .line 199
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v7

    .line 210
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LSCW/ApplicationsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    return-object v0
.end method
