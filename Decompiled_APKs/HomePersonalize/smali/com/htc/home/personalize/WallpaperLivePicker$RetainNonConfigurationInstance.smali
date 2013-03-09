.class Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperLivePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetainNonConfigurationInstance"
.end annotation


# instance fields
.field dockMode:Z

.field selectPosition:I

.field startingSetting:Z

.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperLivePicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 266
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->dockMode:Z

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->selectPosition:I

    .line 269
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->startingSetting:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/WallpaperLivePicker;Lcom/htc/home/personalize/WallpaperLivePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    return-void
.end method
