.class Lcom/htc/home/personalize/WallpaperPicker$11;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$11;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$11;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mIsPickLockScreenWallpaper:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2100(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$11;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$11;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v1

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->SetLockScreenWallPaper(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$2200(Lcom/htc/home/personalize/WallpaperPicker;I)V

    .line 1137
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$11;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$11;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v1

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->selectWallpaper(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$2600(Lcom/htc/home/personalize/WallpaperPicker;I)V

    goto :goto_0
.end method
