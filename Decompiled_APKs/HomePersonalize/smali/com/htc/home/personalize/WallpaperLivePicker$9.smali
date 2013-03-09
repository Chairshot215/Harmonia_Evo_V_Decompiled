.class Lcom/htc/home/personalize/WallpaperLivePicker$9;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


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
    .line 856
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$9;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$9;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #setter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I
    invoke-static {v0, p3}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$402(Lcom/htc/home/personalize/WallpaperLivePicker;I)I

    .line 861
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$9;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2100(Lcom/htc/home/personalize/WallpaperLivePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$9;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->goToIdleScreenPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2200(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker$9;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #calls: Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperPreview()V
    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$2300(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    goto :goto_0
.end method
