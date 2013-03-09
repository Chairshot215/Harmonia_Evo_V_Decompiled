.class Lcom/htc/home/personalize/WallpaperPicker$12;
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
    .line 1140
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$1900(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->deleteWallpaper()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2700(Lcom/htc/home/personalize/WallpaperPicker;)V

    .line 1155
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$400(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2300(Lcom/htc/home/personalize/WallpaperPicker;)V

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPreviewed:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2800(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2900(Lcom/htc/home/personalize/WallpaperPicker;)V

    goto :goto_0

    .line 1153
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$12;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$2300(Lcom/htc/home/personalize/WallpaperPicker;)V

    goto :goto_0
.end method
