.class Lcom/htc/widget/HtcSeekBar$1;
.super Ljava/lang/Object;
.source "HtcSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcSeekBar;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSeekBar;->getDisplayMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, v1, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, v1, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/widget/HtcSeekBar;->onSizeChanged(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_3
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSeekBar;->getDisplayMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, v1, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/widget/HtcSeekBar;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, v1, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
