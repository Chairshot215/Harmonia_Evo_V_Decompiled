.class Lcom/htc/home/personalize/WallpaperPicker$3;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;


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
    .line 816
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$3;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIUpdate(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$3;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$700(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyUpdateItem(I)V

    .line 819
    return-void
.end method
