.class Lcom/htc/home/personalize/WallpaperLivePicker$3;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;


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
    .line 758
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$3;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIUpdate(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$3;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$1000(Lcom/htc/home/personalize/WallpaperLivePicker;)Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->notifyUpdateItem(I)V

    .line 761
    return-void
.end method
