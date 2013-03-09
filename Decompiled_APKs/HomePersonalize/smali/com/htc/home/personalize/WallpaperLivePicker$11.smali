.class Lcom/htc/home/personalize/WallpaperLivePicker$11;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperLivePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperLivePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$11;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$11;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2100(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$11;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->setupIdleScreen()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2800(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 899
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$11;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPreviewed:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2500(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$11;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperMain()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2600(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$11;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2300(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0
.end method
