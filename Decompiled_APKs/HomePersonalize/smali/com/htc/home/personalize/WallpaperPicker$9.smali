.class Lcom/htc/home/personalize/WallpaperPicker$9;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


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
    .line 941
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 14
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
    .line 944
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$1900(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 945
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v2, v1, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v1, v1, p3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    aput-boolean v1, v2, p3

    .line 947
    const v1, 0x7f0b0059

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 948
    .local v12, delete_cross:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_1

    .line 949
    const v1, 0x7f020003

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 950
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    iget-object v13, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    new-instance v1, Lcom/htc/home/personalize/DeleteAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3f59999a

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f00

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x320

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/htc/home/personalize/DeleteAnimation;-><init>(FFFFIIZIZZ)V

    const/16 v2, 0x320

    const/4 v3, 0x1

    move-object/from16 v0, p2

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V
    invoke-static {v13, v0, v1, v2, v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$2500(Lcom/htc/home/personalize/WallpaperPicker;Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 953
    const-string v1, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 960
    :goto_1
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iget-object v2, v2, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v2, v2, p3

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->handleDeleteCount(Z)V
    invoke-static {v1, v2}, Lcom/htc/home/personalize/WallpaperPicker;->access$2000(Lcom/htc/home/personalize/WallpaperPicker;Z)V

    .line 965
    .end local v12           #delete_cross:Landroid/widget/ImageView;
    :goto_2
    return-void

    .line 945
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 955
    .restart local v12       #delete_cross:Landroid/widget/ImageView;
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object v13, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    new-instance v1, Lcom/htc/home/personalize/DeleteAnimation;

    const v2, 0x3f59999a

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x320

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/htc/home/personalize/DeleteAnimation;-><init>(FFFFIIZIZZ)V

    const/16 v2, 0x320

    const/4 v3, 0x1

    move-object/from16 v0, p2

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V
    invoke-static {v13, v0, v1, v2, v3}, Lcom/htc/home/personalize/WallpaperPicker;->access$2500(Lcom/htc/home/personalize/WallpaperPicker;Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 958
    const-string v1, "not_delete"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 962
    .end local v12           #delete_cross:Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    move/from16 v0, p3

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v1, v0}, Lcom/htc/home/personalize/WallpaperPicker;->access$302(Lcom/htc/home/personalize/WallpaperPicker;I)I

    .line 963
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$9;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperPreview()V
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$2300(Lcom/htc/home/personalize/WallpaperPicker;)V

    goto :goto_2
.end method
