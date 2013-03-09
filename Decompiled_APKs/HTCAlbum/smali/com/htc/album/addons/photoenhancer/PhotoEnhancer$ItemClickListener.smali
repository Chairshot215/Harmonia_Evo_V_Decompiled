.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "nIndex"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 694
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HeaderBarImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 696
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I
    invoke-static {v0, p3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1302(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;I)I

    .line 697
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1312(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;I)I

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v0

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 704
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemClick: No Effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-virtual {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 715
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick: Render Effect presetId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mFrameId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    move-result-object v0

    new-instance v1, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageWidth:I
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageHeight:I
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->RenderAllEffectOnPreset(Lcom/scalado/base/Size;II)V

    .line 713
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method
