.class public Lcom/htc/lmw/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static final alphaComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final sizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cacheSize:J

.field public checked:Z

.field public dataDir:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public size:J

.field public sourceDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/lmw/AppInfo$1;

    invoke-direct {v0}, Lcom/htc/lmw/AppInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lmw/AppInfo;->alphaComparator:Ljava/util/Comparator;

    .line 29
    new-instance v0, Lcom/htc/lmw/AppInfo$2;

    invoke-direct {v0}, Lcom/htc/lmw/AppInfo$2;-><init>()V

    sput-object v0, Lcom/htc/lmw/AppInfo;->sizeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/AppInfo;->checked:Z

    .line 15
    iput-wide v1, p0, Lcom/htc/lmw/AppInfo;->size:J

    .line 16
    iput-wide v1, p0, Lcom/htc/lmw/AppInfo;->cacheSize:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 48
    .local v0, appInfo:Lcom/htc/lmw/AppInfo;
    iget-object v3, p0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method
