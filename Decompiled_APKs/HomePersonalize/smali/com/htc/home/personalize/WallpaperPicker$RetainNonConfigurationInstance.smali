.class Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetainNonConfigurationInstance"
.end annotation


# instance fields
.field dockMode:Z

.field selectPosition:I

.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;->dockMode:Z

    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;->selectPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;Lcom/htc/home/personalize/WallpaperPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    return-void
.end method
