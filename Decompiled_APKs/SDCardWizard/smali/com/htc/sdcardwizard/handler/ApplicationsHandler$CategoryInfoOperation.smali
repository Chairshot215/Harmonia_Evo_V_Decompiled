.class final Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;
.super Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;
.source "ApplicationsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/ApplicationsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CategoryInfoOperation"
.end annotation


# instance fields
.field private count:I

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;-><init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V

    .line 191
    iput v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->count:I

    .line 192
    iput v1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->size:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .parameter "packageName"
    .parameter "appInfo"

    .prologue
    .line 177
    iget v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->count:I

    .line 178
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v0, v0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->size:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v2, v2, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v2, v2, Landroid/content/pm/PackageStats;->codeSize:J

    iget-object v4, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v4, v4, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v4, v4, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    iget-object v4, v4, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v4, v4, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->size:I

    .line 181
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->count:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->size:I

    return v0
.end method
