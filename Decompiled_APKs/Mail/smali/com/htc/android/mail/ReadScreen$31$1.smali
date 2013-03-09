.class Lcom/htc/android/mail/ReadScreen$31$1;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen$31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ReadScreen$31;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen$31;)V
    .locals 0
    .parameter

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3786
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$31;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v7}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$31;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v7}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v7

    if-nez v7, :cond_1

    .line 3823
    :cond_0
    :goto_0
    return-void

    .line 3789
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$31;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v7}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v5

    .line 3790
    .local v5, view:Landroid/webkit/WebView;
    invoke-virtual {v5}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v3

    .line 3791
    .local v3, core:Landroid/webkit/HTCWebCore;
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 3792
    invoke-virtual {v5}, Lcom/htc/android/mail/HtcWebView;->getContentHeight()I

    move-result v1

    .line 3793
    .local v1, contHeight:I
    if-eqz v3, :cond_0

    .line 3794
    invoke-virtual {v5}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3795
    .local v0, LayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v7}, Landroid/webkit/HTCWebCore;->nativeGetBodyNode(ILandroid/graphics/Rect;)I

    .line 3796
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3797
    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content:("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/android/mail/HtcWebView;->getContentHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " contRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v9, v9, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/android/mail/HtcWebView;->getScale()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v8, v8, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-lt v7, v8, :cond_3

    .line 3800
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$31$1;->this$1:Lcom/htc/android/mail/ReadScreen$31;

    iget-object v8, v8, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int v2, v7, v8

    .line 3801
    .local v2, contRectHeight:I
    sub-int v4, v2, v1

    .line 3802
    .local v4, diff:I
    if-ltz v4, :cond_5

    .line 3803
    move v1, v2

    .line 3812
    .end local v2           #contRectHeight:I
    .end local v4           #diff:I
    :cond_3
    :goto_1
    int-to-float v7, v1

    invoke-virtual {v5}, Lcom/htc/android/mail/HtcWebView;->getScale()F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3813
    invoke-virtual {v5, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3814
    invoke-virtual {v5}, Lcom/htc/android/mail/HtcWebView;->getContentHeight()I

    move-result v7

    if-eq v7, v1, :cond_4

    .line 3815
    invoke-virtual {v5}, Landroid/webkit/WebView;->requestLayout()V

    .line 3818
    :cond_4
    invoke-virtual {v5}, Lcom/htc/android/mail/HtcWebView;->getScrollY()I

    move-result v6

    .line 3819
    .local v6, ydiff:I
    if-eqz v6, :cond_0

    .line 3820
    neg-int v7, v6

    invoke-virtual {v5, v10, v7}, Landroid/webkit/WebView;->scrollBy(II)V

    goto/16 :goto_0

    .line 3805
    .end local v6           #ydiff:I
    .restart local v2       #contRectHeight:I
    .restart local v4       #diff:I
    :cond_5
    const/16 v7, -0xa

    if-ge v4, v7, :cond_3

    .line 3806
    move v1, v2

    goto :goto_1
.end method
