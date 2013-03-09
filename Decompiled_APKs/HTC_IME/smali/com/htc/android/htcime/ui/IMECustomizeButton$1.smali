.class Lcom/htc/android/htcime/ui/IMECustomizeButton$1;
.super Ljava/lang/Object;
.source "IMECustomizeButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/IMECustomizeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/IMECustomizeButton;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$100(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$000(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$300(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$200(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$600(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$600(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 88
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$100(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$400(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$300(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$500(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
